# agent-skills

Curated collection of **80 agent skills** across 24 domains for AI coding assistants. Works with Claude Code, Cursor, Copilot, and other AI agents.

No build steps, no dependencies — pure markdown content.

## Table of Contents

- [Install](#install)
- [Skills by Domain](#skills-by-domain)
  - [API Design](#api-design-3)
  - [Architecture](#architecture-7)
  - [Backend](#backend-1)
  - [Database](#database-3)
  - [Design](#design-2)
  - [.NET](#net-8)
  - [Frontend](#frontend-2)
  - [Go](#go-5)
  - [Kubernetes](#kubernetes-3)
  - [Microservices](#microservices-2)
  - [Next.js](#nextjs-3)
  - [Nuxt](#nuxt-3)
  - [Observability](#observability-3)
  - [Prompt Engineering](#prompt-engineering-2)
  - [React](#react-1)
  - [Tailwind CSS](#tailwind-css-2)
  - [Testing](#testing-4)
  - [Tools](#tools-7)
  - [Trading & Finance](#trading--finance-7)
  - [TypeScript](#typescript-1)
  - [Vercel](#vercel-2)
  - [Vue](#vue-7)
  - [VueUse](#vueuse-2)
- [Adding a Skill](#adding-a-skill)
- [Recommended Plugins](#recommended-plugins)
- [License](#license)

## Install

**Via [skills CLI](https://github.com/vercel-labs/skills) (works with all agents):**

```sh
npx skills add baotoq/agent-skills
```

**Via Claude Code plugin system:**

```
/plugin marketplace add baotoq/agent-skills
```

## Skills by Domain

### API Design (3)

| Skill | Description |
|-------|-------------|
| **api-design-principles** | REST and GraphQL API design for intuitive, scalable APIs |
| **api-patterns** | API decision-making — REST vs GraphQL vs tRPC, versioning, pagination |
| **api-security-best-practices** | Secure API patterns — authentication, authorization, input validation, rate limiting |

### Architecture (7)

| Skill | Description |
|-------|-------------|
| **architecture-cqrs-implementation** | CQRS for scalable architectures — separate read/write models |
| **architecture-decision-records** | Write and maintain ADRs for technical decision documentation |
| **architecture-domain-analysis** | DDD Strategic Design — subdomain identification and bounded context analysis |
| **architecture-event-sourcing** | Event sourcing, CQRS, projections, saga orchestration, eventual consistency |
| **architecture-event-store-design** | Event store design and implementation for event-sourced systems |
| **architecture-patterns** | Clean Architecture, Hexagonal Architecture, and DDD patterns |
| **architecture-saga-orchestration** | Saga patterns for distributed transactions and long-running workflows |

### Backend (1)

| Skill | Description |
|-------|-------------|
| **backend-architect** | Scalable API design, system architecture, and backend decision-making |

### Database (3)

| Skill | Description |
|-------|-------------|
| **database-architect** | Data layer design, technology selection, schema modeling |
| **database-design** | Schema design, indexing strategy, ORM selection, serverless databases |
| **database-optimizer** | Performance tuning, query optimization, indexing, caching |

### Design (2)

| Skill | Description |
|-------|-------------|
| **design-ui-ux-pro-max** | UI/UX design intelligence — 50 styles, 97 palettes, 57 font pairings, 9 stacks |
| **design-web-guidelines** | UI review for Web Interface Guidelines compliance and accessibility |

### .NET (8)

| Skill | Description |
|-------|-------------|
| **dotnet-architect** | .NET backend architecture — C#, ASP.NET Core, clean architecture, DDD |
| **dotnet-aspire** | .NET Aspire cloud-native orchestration, service discovery, AppHost |
| **dotnet-backend-patterns** | C#/.NET patterns — async/await, DI, EF Core, Dapper, xUnit |
| **dotnet-core-expert** | .NET 8 with minimal APIs, clean architecture, cloud-native microservices |
| **dotnet-csharp-developer** | C# with .NET 8+, ASP.NET Core APIs, Blazor, EF Core, MediatR |
| **dotnet-ddd** | DDD tactical patterns in C#/.NET — Entities, Value Objects, Aggregates |
| **dotnet-efcore-patterns** | EF Core — NoTracking, query splitting, migration management |
| **dotnet-testcontainers** | Integration tests with TestContainers for .NET — real databases in Docker |

### Frontend (2)

| Skill | Description |
|-------|-------------|
| **frontend-radix-ui-design-system** | Accessible design systems with Radix UI primitives and compound components |
| **frontend-vite** | Vite build tool — configuration, plugin API, SSR, Vite 8 Rolldown migration |

### Go (5)

| Skill | Description |
|-------|-------------|
| **golang-ddd** | DDD tactical patterns in Go — Entities, Value Objects, Aggregates, Repositories |
| **golang-patterns** | Idiomatic Go patterns and conventions for robust, maintainable applications |
| **golang-pro** | Go 1.21+ — goroutines, channels, generics, gRPC, concurrent programming |
| **golang-testcontainers** | Integration tests with testcontainers-go — PostgreSQL, Redis, RabbitMQ, Kafka |
| **golang-testing** | Table-driven tests, subtests, benchmarks, fuzzing, TDD methodology |

### Kubernetes (3)

| Skill | Description |
|-------|-------------|
| **k8s-manifest-generator** | Production-ready Kubernetes manifests — Deployments, Services, ConfigMaps |
| **kubernetes-architect** | Kubernetes architecture — GitOps, service mesh, multi-tenancy, platform engineering |
| **kubernetes-specialist** | Cluster management — Helm, RBAC, NetworkPolicies, security hardening |

### Microservices (2)

| Skill | Description |
|-------|-------------|
| **microservices-architect** | Distributed systems — service boundaries, DDD, saga patterns, service mesh |
| **microservices-patterns** | Service boundaries, event-driven communication, resilience patterns |

### Next.js (3)

| Skill | Description |
|-------|-------------|
| **nextjs-app-router-patterns** | Next.js 14+ App Router, Server Components, streaming, parallel routes |
| **nextjs-best-practices** | App Router principles — Server Components, data fetching, routing |
| **nextjs-developer** | Next.js 14+ with App Router, server actions, SEO, full-stack features |

### Nuxt (3)

| Skill | Description |
|-------|-------------|
| **nuxt** | Nuxt 4+ server routes, file-based routing, middleware, composables, h3/nitro |
| **nuxt-ui** | @nuxt/ui v4 components — Button, Modal, Form, Table, Tailwind Variants |
| **nuxt-ui-2** | @nuxt/ui v4 — 125+ accessible Vue components with Tailwind CSS theming |

### Observability (3)

| Skill | Description |
|-------|-------------|
| **observability-distributed-tracing** | Distributed tracing with Jaeger and Tempo for microservices |
| **observability-grafana-dashboards** | Production Grafana dashboards for system and application metrics |
| **observability-prometheus-configuration** | Prometheus metric collection, scrape configuration, recording rules |

### Prompt Engineering (2)

| Skill | Description |
|-------|-------------|
| **prompt-engineering-patterns** | Advanced prompt engineering techniques for LLM performance and reliability |
| **prompt-lookup** | Discover, retrieve, and improve AI prompts via prompts.chat |

### React (1)

| Skill | Description |
|-------|-------------|
| **react-expert** | React 18+ architecture, hooks, Server Components, React 19 features |

### Tailwind CSS (2)

| Skill | Description |
|-------|-------------|
| **tailwind-design-system** | Design systems with Tailwind CSS — design tokens, component libraries |
| **tailwind-patterns** | Tailwind CSS v4 — CSS-first configuration, container queries, modern patterns |

### Testing (4)

| Skill | Description |
|-------|-------------|
| **testing-e2e-patterns** | End-to-end testing with Playwright and Cypress |
| **testing-tdd** | TDD workflow — red-green-refactor before writing implementation code |
| **testing-unit-test-generate** | Generate comprehensive unit tests across languages with edge case coverage |
| **testing-vitest** | Vitest configuration, test APIs, mocking patterns, coverage for Vite projects |

### Tools (7)

| Skill | Description |
|-------|-------------|
| **tools-book-translation** | Translate book chapters and UI strings for prompts.chat |
| **tools-brainstorming** | Transform vague ideas into validated designs through structured dialogue |
| **tools-context7-auto-research** | Fetch latest library/framework documentation via Context7 API |
| **tools-readme** | Generate absurdly thorough README.md documentation for projects |
| **tools-skill-creator** | Automate skill creation workflow from brainstorming to installation |
| **tools-skill-lookup** | Discover, retrieve, and install Agent Skills |
| **tools-telegram-bot-builder** | Telegram bot architecture, Bot API, keyboards, monetization, scaling |

### Trading & Finance (7)

| Skill | Description |
|-------|-------------|
| **trading-backtesting-frameworks** | Backtesting systems for trading strategies with bias handling |
| **trading-ccxt-csharp** | CCXT cryptocurrency exchange library for C#/.NET — REST and WebSocket APIs |
| **trading-expert** | Algorithmic trading, quantitative analysis, market systems |
| **trading-quant-analyst** | Financial models, backtesting, statistical arbitrage, risk metrics |
| **trading-risk-management** | Position sizing and stop-loss rules from competition outcomes |
| **trading-risk-manager** | Portfolio risk monitoring — R-multiples, position limits, hedging |
| **trading-risk-metrics-calculation** | VaR, CVaR, Sharpe, Sortino, drawdown analysis for portfolios |

### TypeScript (1)

| Skill | Description |
|-------|-------------|
| **typescript-expert** | TypeScript/JavaScript — type-level programming, monorepo, build performance |

### Vercel (2)

| Skill | Description |
|-------|-------------|
| **vercel-composition-patterns** | React composition patterns — compound components, render props, React 19 APIs |
| **vercel-react-best-practices** | 57 performance optimization rules from Vercel Engineering for React/Next.js |

### Vue (7)

| Skill | Description |
|-------|-------------|
| **vue-best-practices** | Vue 3 Composition API with `<script setup>`, TypeScript, SSR, reactivity |
| **vue-debug-guides** | Vue 3 debugging — runtime errors, warnings, async failures, SSR/hydration |
| **vue-jsx-best-practices** | JSX syntax in Vue — class vs className, render functions, JSX plugin config |
| **vue-options-api-best-practices** | Vue 3 Options API — data(), methods, this context, TypeScript integration |
| **vue-pinia-best-practices** | Pinia stores, state management patterns, store setup, reactivity |
| **vue-router-best-practices** | Vue Router 4 — navigation guards, route params, lifecycle interactions |
| **vue-testing-best-practices** | Vue testing with Vitest, Vue Test Utils, component testing, Playwright E2E |

### VueUse (2)

| Skill | Description |
|-------|-------------|
| **vueuse** | VueUse composables — reactive utilities for state, browser APIs, sensors |
| **vueuse-functions** | Apply VueUse composables for concise, maintainable Vue.js/Nuxt features |

## Adding a Skill

All skill directories use a `{domain}-{topic}` naming convention.

1. Create `skills/{domain}-{topic}/SKILL.md` with YAML frontmatter:

```yaml
---
name: domain-my-skill
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

3. The `name` field **must match** the directory name exactly. No changes needed to `marketplace.json` or `plugin.json` — skill discovery is automatic.

## Recommended Plugins

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
