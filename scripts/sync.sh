#!/usr/bin/env bash
# Copies every skill listed in skills.json from its upstream GitHub repo into
# plugins/<plugin>/skills/<skill>/, then regenerates the plugin and marketplace
# manifests for Claude Code, Codex and GitHub Copilot CLI. skills.json is the
# only file you edit by hand.
#
# Skill entries without a "repo" are local: they live only in this repo and are
# never overwritten or pruned.
#
# Usage: scripts/sync.sh
# Requires: git, jq, rsync
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MANIFEST="$ROOT/skills.json"
LOCK="$ROOT/skills.lock.json"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT

checkout_dir() { echo "$WORK/${1//\//__}"; }

old_lock=$(cat "$LOCK" 2>/dev/null || echo '{}')
lock='{"repos": {}, "plugins": {}}'

# 1. One shallow, sparse clone per upstream repo, limited to the skill folders we use.
for repo in $(jq -r '[.plugins[].skills[] | select(.repo) | .repo] | unique[]' "$MANIFEST"); do
  dir="$(checkout_dir "$repo")"
  paths=$(jq -r --arg r "$repo" '[.plugins[].skills[] | select(.repo == $r) | .path] | unique[]' "$MANIFEST")
  echo "→ $repo"
  git clone --quiet --depth 1 --filter=blob:none --sparse "https://github.com/$repo.git" "$dir"
  # shellcheck disable=SC2086 # paths are word-split on purpose
  git -C "$dir" sparse-checkout set $paths
  lock=$(jq --arg r "$repo" --arg sha "$(git -C "$dir" rev-parse HEAD)" '.repos[$r] = $sha' <<<"$lock")

  # Keep the upstream license next to the copies (cone mode always checks out root files).
  license=$(find "$dir" -maxdepth 1 -type f -iname 'license*' | head -n 1)
  if [[ -n "$license" ]]; then
    mkdir -p "$ROOT/licenses"
    cp "$license" "$ROOT/licenses/${repo//\//__}.txt"
  else
    echo "  ! no LICENSE file found in $repo" >&2
  fi
done

# 2. Copy skills into their plugin, and prune skill folders no longer listed.
for plugin in $(jq -r '.plugins | keys_unsorted[]' "$MANIFEST"); do
  skills_dir="$ROOT/plugins/$plugin/skills"
  mkdir -p "$skills_dir"

  while IFS=$'\t' read -r name repo path; do
    dest="$skills_dir/$name"
    if [[ -z "$repo" ]]; then
      [[ -f "$dest/SKILL.md" ]] || { echo "  ! local skill $plugin/$name has no SKILL.md" >&2; exit 1; }
      continue
    fi
    src="$(checkout_dir "$repo")/$path"
    [[ -f "$src/SKILL.md" ]] || { echo "  ! $repo/$path/SKILL.md not found upstream" >&2; exit 1; }
    mkdir -p "$dest"
    rsync -a --delete --exclude .git "$src/" "$dest/"
  done < <(jq -r --arg p "$plugin" '.plugins[$p].skills[] | [.name, (.repo // ""), (.path // "")] | @tsv' "$MANIFEST")

  for existing in "$skills_dir"/*/; do
    [[ -d "$existing" ]] || continue
    name="$(basename "$existing")"
    if ! jq -e --arg p "$plugin" --arg n "$name" '.plugins[$p].skills | any(.name == $n)' "$MANIFEST" >/dev/null; then
      echo "  - removing $plugin/$name (not in skills.json)"
      rm -rf "$existing"
    fi
  done

  # 3. Version: bump the patch number whenever the plugin's content changes, so
  #    Claude Code, Codex and Copilot all see an update.
  description=$(jq -r --arg p "$plugin" '.plugins[$p].description' "$MANIFEST")
  hash=$( { echo "$description"; cd "$skills_dir" && find . -type f -print0 | LC_ALL=C sort -z | xargs -0 shasum; } | shasum | cut -c1-40)
  prev_hash=$(jq -r --arg p "$plugin" '.plugins[$p].hash // ""' <<<"$old_lock")
  version=$(jq -r --arg p "$plugin" '.plugins[$p].version // ""' <<<"$old_lock")
  if [[ -z "$version" ]]; then
    version="1.0.0"
  elif [[ "$hash" != "$prev_hash" ]]; then
    version="${version%.*}.$(( ${version##*.} + 1 ))"
    echo "  ↑ $plugin $version"
  fi
  lock=$(jq --arg p "$plugin" --arg h "$hash" --arg v "$version" '.plugins[$p] = {hash: $h, version: $v}' <<<"$lock")

  # 4. Plugin manifests. Codex and Copilot CLI read the portable root plugin.json
  #    (Agent Plugins 1.0); Claude Code reads .claude-plugin/plugin.json.
  manifest=$(jq --arg p "$plugin" --arg v "$version" '{
      name: $p,
      version: $v,
      description: .plugins[$p].description,
      author: .marketplace.owner
    }' "$MANIFEST")
  jq '{"$schema": "https://agent-plugins.org/schemas/1.0.0/plugin.schema.json"} + .' <<<"$manifest" \
    > "$ROOT/plugins/$plugin/plugin.json"
  mkdir -p "$ROOT/plugins/$plugin/.claude-plugin"
  echo "$manifest" > "$ROOT/plugins/$plugin/.claude-plugin/plugin.json"
done

for dir in "$ROOT"/plugins/*/; do
  plugin="$(basename "$dir")"
  jq -e --arg p "$plugin" '.plugins | has($p)' "$MANIFEST" >/dev/null \
    || echo "  ! plugins/$plugin is not in skills.json; delete it if it is no longer needed" >&2
done

# 5. Marketplace catalogs. Claude Code and Copilot CLI read .claude-plugin/;
#    Codex reads its own format from .agents/plugins/.
mkdir -p "$ROOT/.claude-plugin" "$ROOT/.agents/plugins"
jq '.marketplace + {
    plugins: [.plugins | to_entries[] | {
      name: .key,
      source: "./plugins/\(.key)",
      description: .value.description
    }]
  }' "$MANIFEST" > "$ROOT/.claude-plugin/marketplace.json"
jq '{
    name: .marketplace.name,
    interface: { displayName: .marketplace.description },
    plugins: [.plugins | to_entries[] | {
      name: .key,
      source: { source: "local", path: "./plugins/\(.key)" },
      policy: { installation: "AVAILABLE", authentication: "ON_INSTALL" },
      category: (.value.category // "Productivity")
    }]
  }' "$MANIFEST" > "$ROOT/.agents/plugins/marketplace.json"

jq -S . <<<"$lock" > "$LOCK"

echo "✔ synced. Review with: git diff --stat"
