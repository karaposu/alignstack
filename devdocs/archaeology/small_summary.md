# What This Project Is

AlignStack (also called "Vibe-Driven Development") is a book and methodology for how to work effectively with AI coding assistants. It's published as an online book, distributed as a set of reusable commands for AI tools, and designed around an ambitious vision for autonomous AI development agents.

---

## What It Currently Does

### 1. An Online Book

The core of the project is a book written in Markdown and built with mdBook (a tool that turns Markdown files into a website). The book is deployed to GitHub Pages and covers:

- Why traditional software development methods don't work well when you're building with AI
- A framework called "the Alignment Chain" — a structured way to make sure you and the AI are on the same page before, during, and after building something
- A collection of practical patterns (DevDocs, Fuzzy Architecture, Anchor, Archaeology, Offload, Probe Tests, Vibe Testing) that help prevent common problems like AI forgetting what you said earlier, building the wrong thing confidently, or quietly breaking features it already built

The book is organized into 12+ chapters across four parts, plus appendices with ready-to-use prompts and workflows. It reads as a practitioner's field guide, not an academic paper.

### 2. A Library of AI Commands (Slash Commands)

The project includes 30+ command files (stored in the `commands/` folder) that can be installed into Claude Code, Cursor, or similar AI coding tools. These commands package the book's methodology into reusable prompts:

- **Core workflow**: `/elaborate` (clarify what you want), `/task-desc` (document the task), `/task-plan` (plan the steps), `/critic` (find risks and errors)
- **Codebase understanding**: `/arch-small-summary`, `/arch-intro`, `/arch-traces` (the "archaeology" commands that help AI understand an existing codebase)
- **Thinking disciplines**: `/sense-making`, `/innovate`, `/comprehend`, `/decompose`, `/explore`, `/wayfinding` — structured prompts for specific types of thinking (making sense of confusion, generating ideas, understanding complex systems, etc.)
- **Maintenance**: `/dead-code-index`, `/dead-code-concepts`, `/overview-report`, `/roadmap`
- **Alignment checking**: `/align`, `/align-modes`, `/critic-d` (dynamic critic that adapts to context)

There's an install script that downloads all commands to the user's system with a single `curl` command. A hook script is also included that auto-injects metadata headers into documentation files.

### 3. A Set of "Thinking Disciplines"

Beyond the coding-specific patterns, the project has developed a layer of domain-independent thinking methodologies stored in `thinking_disciplines/`. Seven are fully built:

- **Sensemaking** — turning confusion into stable understanding
- **Innovation** — generating novel ideas systematically
- **Critique** — evaluating ideas through adversarial testing
- **Wayfinding** — steering an ongoing search or thought process
- **Decomposition** — breaking complexity into manageable pieces
- **Exploration** — mapping unknown territory
- **Comprehension** — building predictive mental models of how things work

Four more are planned (Diagnosis, Reflection, Recovery, Evaluation). These are described at a high level of abstraction — they're meant to work for any domain, not just software.

---

## What It's Trying To Do (In Progress)

### The AlignStack Agent

The most ambitious part of the project is a planned multi-agent AI system described in `agent/README.md`. The idea: six AI agents, one for each layer of the Alignment Chain, working together autonomously on long development tasks. Each agent would monitor its alignment dimension, switch between seven operational "modes" (Exploration, Alignment, Innovation, Diagnostic, Maintenance, Recovery, Reflection), and communicate with other agents to self-correct.

This is currently a detailed design document — there's no code implementing it yet. It describes the architecture, agent roles, mode transitions, communication patterns, and how it would use the existing slash commands as its toolkit. The design is runtime-agnostic (it could run on Claude Code, Google ADK, or other frameworks).

### AI Task Automation System

There's a long sensemaking document (`sensemaking.md`) exploring a system that would sit between Jira and a codebase, using AI to automatically analyze tasks, generate documentation, and create implementation plans before developers start coding. This appears to be in the thinking/planning stage.

### Community Building

The `BuilderLoop.md` file contains a transcript about ideas for building a developer community through AI-assisted Reddit outreach and Telegram groups. This is tangential to the core project — a brainstorm about community growth.

---

## Who Would Use This and Why

- **Developers who use AI coding assistants** (Claude Code, Cursor, GitHub Copilot, etc.) and want a structured approach instead of ad-hoc prompting. The slash commands give them ready-to-use workflows.
- **Team leads and tech leads** who want to establish consistent practices for AI-assisted development across their teams.
- **Anyone building long or complex features with AI** who's noticed that AI assistants tend to lose context, drift from the plan, or break things they already built.
- **People interested in structured thinking** who want frameworks for sensemaking, innovation, and critique that work beyond just software.

---

## The General Shape

This is a **methodology project** — primarily written content (a book, command definitions, thinking discipline specs, and an agent architecture document) with minimal code. The only executable code is a bash install script and a GitHub Actions workflow for deploying the book website. Everything else is Markdown.

It's structured as a mdBook project with additional folders for commands, thinking disciplines, development documentation, and agent design. The project doubles as both the book's source and a living example of the methodology it describes (using devdocs, archaeology, and the patterns it teaches).

---

## Honest Assessment of State

- **The book** is substantially complete with 12+ chapters and multiple appendices. Some chapters are marked "not finished yet" (Vibe Testing). The writing quality varies — some chapters are polished, others have typos and rough formatting.
- **The slash commands** are the most practically useful part — they're ready to install and use today.
- **The thinking disciplines** are thoroughly defined (7 of 11 built) with clear structures, but they're dense and abstract — hard to approach without prior context.
- **The agent system** is a pure design document. It's detailed and ambitious but entirely unimplemented.
- **The devdocs folder** contains working notes, explorations, and sensemaking documents that represent active thinking-in-progress rather than finished artifacts.
- **Several generated images** (logos, cover art) are stored in the root directory, suggesting branding work happened alongside content development.
