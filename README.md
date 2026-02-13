# agent-skills

Curated collection of agent skills for AI coding assistants. Works with Claude Code, Cursor, Copilot, and other AI agents.

## Install

**Via [skills CLI](https://github.com/vercel-labs/skills) (works with all agents):**

```sh
npx skills add baotoq/agent-skills
```

**Via Claude Code plugin system:**

```
/plugin marketplace add baotoq/agent-skills
```

## Skills

| Skill | Description |
|-------|-------------|
| **csharp-developer** | C# with .NET 8+, ASP.NET Core APIs, Blazor, EF Core, minimal APIs, CQRS with MediatR |
| **dotnet-aspire** | .NET Aspire cloud-native orchestration, service discovery, AppHost and ServiceDefaults |
| **dotnet-core-expert** | .NET 8 with minimal APIs, clean architecture, cloud-native microservices, JWT auth, AOT |
| **dotnet-ddd** | Domain-Driven Design patterns — aggregates, entities, value objects, domain events, bounded contexts |
| **efcore-patterns** | Entity Framework Core best practices — NoTracking, query splitting, migration management |
| **kubernetes-specialist** | Kubernetes cluster management — Helm charts, RBAC, NetworkPolicies, security hardening |
| **microservices-architect** | Distributed systems design — service boundaries, saga patterns, event sourcing, service mesh |
| **nextjs-developer** | Next.js 14+ with App Router, server components, server actions, SEO, deployment |
| **react-expert** | React 18+ architecture, hooks patterns, Server Components, React 19 features |
| **risk-management** | Position sizing and stop-loss rules learned from competition outcomes |
| **telegram-bot-builder** | Telegram bot architecture, Bot API, keyboards, monetization, scaling |
| **testcontainers-integration-tests** | Integration tests with TestContainers for .NET — real databases, queues, caches in Docker |
| **trading-expert** | Algorithmic trading, quantitative analysis, market systems, trading platforms |
| **vercel-composition-patterns** | React composition patterns — compound components, render props, context providers, React 19 APIs |
| **vercel-react-best-practices** | 57 performance optimization rules from Vercel Engineering for React and Next.js |
| **vite** | Vite build tool configuration, plugin API, SSR, and Vite 8 Rolldown migration |
| **vitest** | Vitest configuration, test APIs, mocking patterns, and coverage setup for Vite projects |
| **vue-best-practices** | Vue 3 Composition API with `<script setup>`, TypeScript, SSR, reactivity patterns |
| **vue-debug-guides** | Vue 3 debugging — runtime errors, warnings, async failures, SSR/hydration issues |
| **vue-jsx-best-practices** | JSX syntax in Vue — class vs className, render functions, JSX plugin config |
| **vue-options-api-best-practices** | Vue 3 Options API style — data(), methods, this context, TypeScript integration |
| **vue-pinia-best-practices** | Pinia stores, state management patterns, store setup, and reactivity with stores |
| **vue-router-best-practices** | Vue Router 4 patterns — navigation guards, route params, lifecycle interactions |
| **vue-testing-best-practices** | Vue testing with Vitest, Vue Test Utils, component testing, Playwright E2E |
| **vueuse** | VueUse composables — reactive utilities for state, browser APIs, sensors, network |
| **web-design-guidelines** | UI review for Web Interface Guidelines compliance, accessibility, design best practices |

## Adding a skill

1. Create `skills/{skill-name}/SKILL.md` with YAML frontmatter:

```yaml
---
name: my-skill
description: Brief description with trigger phrases for when to use this skill
license: MIT
metadata:
  version: "1.0.0"
  domain: frontend
  triggers: keyword1, keyword2
---

# My Skill

Instructions for the agent...
```

2. Optionally add supplementary content in `references/`, `resources/`, or `rules/` subdirectories.

## License

MIT
