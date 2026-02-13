# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

A curated collection of agent skills, distributed as both a **Claude Code plugin marketplace** and a **`npx skills` compatible repository**. No build steps, no dependencies — it's pure markdown content.

## Installation Methods

Others install skills from this repo via:
- `npx skills add baotoq/agent-skills` (multi-agent CLI by Vercel)
- `/plugin marketplace add baotoq/agent-skills` (Claude Code native plugins)

## Repo Structure

```
.claude-plugin/
  marketplace.json   # Claude Code marketplace manifest (lists plugins)
  plugin.json        # Plugin manifest (name, version, description)
skills/
  {skill-name}/
    SKILL.md           # Required: skill definition with YAML frontmatter
    references/        # Optional: detailed topic guides
    resources/         # Optional: implementation resources (dotnet-aspire uses this)
    rules/             # Optional: individual rule files (vercel-* skills use this)
```

## SKILL.md Format

Every skill must have a `SKILL.md` with YAML frontmatter containing at minimum `name` (string) and `description` (string):

```yaml
---
name: skill-name
description: When to use this skill. Include trigger phrases.
license: MIT
metadata:
  version: "1.0.0"
  domain: frontend|language|infrastructure|architecture|trading
  triggers: comma, separated, keywords
  role: specialist|architect
  scope: implementation|system-design|infrastructure
  output-format: code|manifests|architecture
  related-skills: other-skill-name
---
```

Only `name` and `description` are required. The `description` field is what the skills CLI uses to match user intent — include trigger phrases.

## Skill Organization Patterns

Three patterns are used for supplementary content:

- **references/**: Topic-based guides (e.g., `react-expert/references/hooks-patterns.md`). Used by most skills.
- **resources/**: Implementation resources (e.g., `dotnet-aspire/resources/components.md`). Same concept, different naming.
- **rules/**: Individual rule files with their own YAML frontmatter (`title`, `impact`, `tags`). Used by `vercel-react-best-practices` (57 rules) and `vercel-composition-patterns` (8 rules). Skills using rules also have a compiled `AGENTS.md`.

## Adding a New Skill

1. Create `skills/{skill-name}/SKILL.md` with valid frontmatter
2. Optionally add `references/` or `rules/` subdirectory for detailed content
3. No changes needed to `marketplace.json` or `plugin.json` — skill discovery is automatic based on directory scanning
