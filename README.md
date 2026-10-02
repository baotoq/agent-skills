# agent-skills

My personal plugin marketplace for Claude Code, OpenAI Codex and GitHub Copilot CLI. It bundles agent
skills from several upstream repos into three plugins:

| Plugin | Skills |
|---|---|
| `dotnet` | C#/.NET coding, testing, performance, ASP.NET Core |
| `azure` | Aspire, Cosmos DB, Microsoft Foundry, cloud design patterns |
| `tools` | Chrome DevTools, commit messages, Excalidraw diagrams, skill discovery |

`skills.json` lists every skill and where it comes from.

## Install

The marketplace is called `baotoq`. Install only the plugins you need.

### Claude Code

```bash
claude plugin marketplace add baotoq/agent-skills
claude plugin install dotnet@baotoq
```

Skills are namespaced by plugin, e.g. `/dotnet:csharp-async`. To update, run
`/plugin marketplace update baotoq`, or turn on auto-update under **Marketplaces** in `/plugin`.

For editing, add the local checkout instead (`claude plugin marketplace add ./agent-skills`). Claude
Code then loads the files in place, and changes show up after `/reload-plugins`.

### OpenAI Codex

```bash
codex plugin marketplace add baotoq/agent-skills
```

Then install the plugins from the plugin browser (`/plugins` in the CLI, or the Plugins directory in
the app). Run `codex plugin marketplace upgrade` to update.

### GitHub Copilot CLI

```bash
copilot plugin marketplace add baotoq/agent-skills
copilot plugin install dotnet@baotoq
```

Run `copilot plugin update --all` to update.

## How it works for each tool

Each plugin folder holds one `skills/` directory and two manifests:

| File | Read by |
|---|---|
| `plugins/<plugin>/plugin.json` (portable [Agent Plugins 1.0](https://agent-plugins.org) manifest) | Codex, Copilot CLI |
| `plugins/<plugin>/.claude-plugin/plugin.json` | Claude Code |
| `.claude-plugin/marketplace.json` | Claude Code, Copilot CLI |
| `.agents/plugins/marketplace.json` | Codex |

`scripts/sync.sh` bumps a plugin's patch version whenever its content changes, so each tool sees an
update.

## Add, move or remove a skill

1. Edit `skills.json`. A skill entry has a `name`, the upstream `repo` (`owner/name` on GitHub) and the
   `path` of the skill folder in that repo. Leave out `repo` and `path` for a skill that lives only
   here, and put its folder in `plugins/<plugin>/skills/<name>/` yourself.
2. Run `scripts/sync.sh`.
3. Review `git diff` and commit.

## Update from upstream

Run `scripts/sync.sh`. It clones each upstream repo (shallow and sparse), copies the skill folders into
`plugins/<plugin>/skills/`, removes skills that are no longer listed, and regenerates all manifests in
the table above. Don't edit those generated files by hand. `skills.lock.json` records the upstream
commit each sync used and each plugin's content hash and version.

Requires `git`, `jq` and `rsync`.

## Licenses

The skills are copied from their upstream repos, and each repo's license is kept in `licenses/`.
