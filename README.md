# agent-skills

Curated collection of 75 agent skills for AI coding assistants. Works with Claude Code, Cursor, Copilot, and other AI agents.

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

### Architecture & Design (26)

| Skill | Description |
|-------|-------------|
| **api-design-principles** | REST and GraphQL API design principles for intuitive, scalable APIs |
| **api-patterns** | API design decision-making — REST vs GraphQL vs tRPC, versioning, pagination |
| **api-security-best-practices** | Secure API patterns — authentication, authorization, input validation, rate limiting |
| **architecture-decision-records** | Write and maintain ADRs for technical decision documentation |
| **architecture-patterns** | Clean Architecture, Hexagonal Architecture, and Domain-Driven Design patterns |
| **backend-architect** | Scalable API design, system architecture, and backend decision-making |
| **brainstorming** | Transform vague ideas into validated designs through structured dialogue |
| **cqrs-implementation** | Command Query Responsibility Segregation for scalable architectures |
| **database-architect** | Data layer design, technology selection, schema modeling |
| **database-design** | Database design principles — schema design, indexing strategy, ORM selection |
| **database-optimizer** | Database performance tuning, query optimization, indexing, caching |
| **domain-analysis** | DDD Strategic Design — subdomain identification and bounded context analysis |
| **dotnet-architect** | .NET backend architecture — C#, ASP.NET Core, clean architecture, DDD |
| **dotnet-ddd** | Domain-Driven Design tactical patterns in C#/.NET — Entities, Value Objects, Aggregates |
| **event-sourcing-architect** | Event sourcing, CQRS, projections, saga orchestration, eventual consistency |
| **event-store-design** | Event store design and implementation for event-sourced systems |
| **microservices-architect** | Distributed systems — service boundaries, DDD, saga patterns, service mesh |
| **microservices-patterns** | Microservices architecture — service boundaries, event-driven, resilience patterns |
| **prompt-engineering-patterns** | Advanced prompt engineering techniques for LLM performance and reliability |
| **prompt-lookup** | Discover, retrieve, and improve AI prompts via prompts.chat |
| **readme** | Generate absurdly thorough README.md documentation for projects |
| **saga-orchestration** | Saga patterns for distributed transactions and long-running workflows |
| **skill-creator** | Automate skill creation workflow from brainstorming to installation |
| **skill-lookup** | Discover, retrieve, and install Agent Skills |
| **test-driven-development** | TDD workflow — red-green-refactor before writing implementation code |
| **unit-testing-test-generate** | Generate comprehensive unit tests across languages with edge case coverage |

### Frontend (25)

| Skill | Description |
|-------|-------------|
| **book-translation** | Translate book chapters and UI strings for prompts.chat |
| **e2e-testing-patterns** | End-to-end testing with Playwright and Cypress |
| **nextjs-app-router-patterns** | Next.js 14+ App Router, Server Components, streaming, parallel routes |
| **nextjs-best-practices** | Next.js App Router principles — Server Components, data fetching, routing |
| **nextjs-developer** | Next.js 14+ with App Router, server components, server actions, SEO |
| **nuxt** | Nuxt 4+ server routes, file-based routing, middleware, composables, h3/nitro |
| **nuxt-ui** | @nuxt/ui v4 components — Button, Modal, Form, Table, Tailwind Variants |
| **nuxt-ui-2** | @nuxt/ui v4 — 125+ accessible Vue components with Tailwind CSS theming |
| **radix-ui-design-system** | Accessible design systems with Radix UI primitives and compound components |
| **react-expert** | React 18+ architecture, hooks, Server Components, React 19 features |
| **tailwind-design-system** | Design systems with Tailwind CSS — design tokens, component libraries |
| **tailwind-patterns** | Tailwind CSS v4 — CSS-first configuration, container queries, modern patterns |
| **ui-ux-pro-max** | UI/UX design intelligence — 50 styles, 97 palettes, 57 font pairings, 9 stacks |
| **vercel-composition-patterns** | React composition patterns — compound components, render props, React 19 APIs |
| **vercel-react-best-practices** | 57 performance optimization rules from Vercel Engineering for React/Next.js |
| **vite** | Vite build tool configuration, plugin API, SSR, Vite 8 Rolldown migration |
| **vue-best-practices** | Vue 3 Composition API with `<script setup>`, TypeScript, SSR, reactivity |
| **vue-debug-guides** | Vue 3 debugging — runtime errors, warnings, async failures, SSR/hydration |
| **vue-jsx-best-practices** | JSX syntax in Vue — class vs className, render functions, JSX plugin config |
| **vue-options-api-best-practices** | Vue 3 Options API — data(), methods, this context, TypeScript integration |
| **vue-pinia-best-practices** | Pinia stores, state management patterns, store setup, reactivity |
| **vue-router-best-practices** | Vue Router 4 — navigation guards, route params, lifecycle interactions |
| **vueuse** | VueUse composables — reactive utilities for state, browser APIs, sensors |
| **vueuse-functions** | Apply VueUse composables for concise, maintainable Vue.js/Nuxt features |
| **web-design-guidelines** | UI review for Web Interface Guidelines compliance and accessibility |

### Infrastructure (8)

| Skill | Description |
|-------|-------------|
| **context7-auto-research** | Fetch latest library/framework documentation via Context7 API |
| **distributed-tracing** | Distributed tracing with Jaeger and Tempo for microservices observability |
| **dotnet-aspire** | .NET Aspire cloud-native orchestration, service discovery, AppHost |
| **grafana-dashboards** | Production Grafana dashboards for system and application metrics |
| **k8s-manifest-generator** | Production-ready Kubernetes manifests — Deployments, Services, ConfigMaps |
| **kubernetes-architect** | Kubernetes architecture — GitOps, service mesh, multi-tenancy, platform engineering |
| **kubernetes-specialist** | Kubernetes cluster management — Helm, RBAC, NetworkPolicies, security |
| **prometheus-configuration** | Prometheus metric collection, scrape configuration, recording rules |

### Language (4)

| Skill | Description |
|-------|-------------|
| **csharp-developer** | C# with .NET 8+, ASP.NET Core APIs, Blazor, EF Core, minimal APIs, MediatR |
| **dotnet-backend-patterns** | C#/.NET backend patterns — async/await, DI, EF Core, Dapper, xUnit |
| **efcore-patterns** | Entity Framework Core — NoTracking, query splitting, migration management |
| **typescript-expert** | TypeScript/JavaScript — type-level programming, monorepo, build performance |

### Trading & Finance (7)

| Skill | Description |
|-------|-------------|
| **backtesting-frameworks** | Backtesting systems for trading strategies with bias handling |
| **ccxt-csharp** | CCXT cryptocurrency exchange library for C#/.NET — REST and WebSocket APIs |
| **quant-analyst** | Financial models, backtesting, statistical arbitrage, risk metrics |
| **risk-management** | Position sizing and stop-loss rules from competition outcomes |
| **risk-manager** | Portfolio risk monitoring — R-multiples, position limits, hedging |
| **risk-metrics-calculation** | VaR, CVaR, Sharpe, Sortino, drawdown analysis for portfolios |
| **trading-expert** | Algorithmic trading, quantitative analysis, market systems |

### Backend (2)

| Skill | Description |
|-------|-------------|
| **dotnet-core-expert** | .NET 8 with minimal APIs, clean architecture, cloud-native microservices |
| **telegram-bot-builder** | Telegram bot architecture, Bot API, keyboards, monetization, scaling |

### Testing (3)

| Skill | Description |
|-------|-------------|
| **testcontainers-integration-tests** | Integration tests with TestContainers for .NET — real databases in Docker |
| **vitest** | Vitest configuration, test APIs, mocking patterns, coverage for Vite projects |
| **vue-testing-best-practices** | Vue testing with Vitest, Vue Test Utils, component testing, Playwright E2E |

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
  role: specialist
  scope: implementation
  output-format: code
  related-skills: other-skill
---

# My Skill

Instructions for the agent...
```

2. Optionally add supplementary content in `references/`, `resources/`, or `rules/` subdirectories.

## External Plugin

```json
{
  "enabledPlugins": {
    "context7@claude-plugins-official": true,

    "claude-code-setup@claude-plugins-official": true,
    "claude-md-management@claude-plugins-official": true,
    "greptile@claude-plugins-official": true,

    "playwright@claude-plugins-official": true,

    "github@claude-plugins-official": true,
    "commit-commands@claude-plugins-official": true,

    "csharp-lsp@claude-plugins-official": true,
    "gopls-lsp@claude-plugins-official": true,
    "typescript-lsp@claude-plugins-official": true,
    "frontend-design@claude-plugins-official": true,
    "superpowers@claude-plugins-official": true,
    "code-simplifier@claude-plugins-official": true,
    "code-review@claude-plugins-official": true,

    "feature-dev@claude-plugins-official": true
  }
}
```

## License

MIT
