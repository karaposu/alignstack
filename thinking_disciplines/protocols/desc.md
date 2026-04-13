# Protocols — The Operational Dimension

> **Status: Work in progress.** The concept of protocols as a second dimension alongside thinking disciplines is still being explored and refined. The categories, individual protocols, and boundaries described here are preliminary — derived from analysis of the current system's operational gaps, not from battle-tested usage. Some protocols listed here may turn out to be unnecessary (GATE was proposed and then eliminated when analysis showed disciplines can self-assess). Others not yet imagined may prove essential. Treat this document as a map of the territory as currently understood, not as a finished specification.

Thinking Disciplines formalize cognitive operations — what happens INSIDE your head. Protocols formalize operational procedures — what happens BETWEEN the operations.

Disciplines transform cognitive states. Protocols manage operational states. One is about the WHAT of thinking. The other is about the HOW of using the thinking.

> **A protocol is a formalized operational procedure with defined steps and failure modes — that routes, configures, sequences, transfers, or persists the outputs and state of thinking disciplines. Protocols handle operational flow. They do not evaluate the quality of discipline outputs — quality evaluation is the discipline's own responsibility (through self-assessment) or Critique's responsibility (through adversarial evaluation).**

---

## Why Protocols Exist

Thinking disciplines are powerful individually. But real problems require chaining them — running Sensemaking, then Innovation, then Critique, across multiple iterations, possibly with parallel branches, involving multiple sessions or agents. The moment you chain disciplines, operational questions arise that no discipline answers:

- **Before:** Which discipline should I run? At what depth? For how long?
- **Between:** How does the next discipline receive the previous one's output? What routes the flow forward? (Quality is judged by the discipline's own self-assessment — the protocol reads that judgment and routes accordingly.)
- **After:** How do I compile scattered outputs into a coherent deliverable? How do I hand off context to someone else?
- **Across sessions:** How do I resume where I left off? How do I keep history without overwriting?

These are not cognitive questions — they're operational ones. Disciplines don't answer them because disciplines describe how to THINK, not how to manage the process of thinking. Protocols fill this gap.

---

## What a Protocol Is

A protocol has:

- **Steps** — a defined sequence of actions with decision points
- **Completion test** — how you know the protocol succeeded (e.g., "Can someone who wasn't in the loop act on this?")
- **Failure modes** — predictable ways the protocol breaks (e.g., stale references, overwritten history)

A protocol is operational, not cognitive. It doesn't produce understanding, ideas, or verdicts. It produces configurations, routes, handoffs, and state changes.

**The boundary between disciplines and protocols is the boundary between JUDGING and ROUTING.** Disciplines judge (is this understanding sufficient? is this idea novel? does this survive scrutiny?). Protocols route (which discipline runs next? where does the output go? how is state persisted?). When something tries to both judge and route, it's either a discipline doing operational work (self-assessment) or a protocol overstepping into cognitive territory (GATE — which is why it was eliminated).

---

## What a Protocol Is NOT

| Not a protocol | Why | What it actually is |
|----------------|-----|---------------------|
| A thinking discipline | Disciplines transform cognitive states (ambiguity → understanding). Protocols manage operational states (scattered outputs → coherent deliverable). Different dimension. | A cognitive formalization |
| A convention | Conventions are static rules ("files go here," "names follow this pattern"). Protocols are dynamic procedures with steps, decision points, and failure modes. | A format/naming standard |
| A tool | Tools are implementations (a CLI, a script, a hook). Protocols are specifications that tools implement. Multiple tools can implement the same protocol. | An implementation |
| A command | Commands are how you invoke things (`/inquiry`, `/comprehend`). A single command can implement multiple protocols. The protocol IS the procedure, not the invocation. | A user interface |
| A checklist | Checklists are flat lists. Protocols have conditional logic, decision points, and failure recovery. | A simpler operational artifact |
| A quality evaluator | Judging whether a discipline's output is "good enough" is cognitive work — it belongs to the discipline itself (self-assessment) or to Critique (adversarial evaluation). Protocols route based on those judgments but don't make them. | A discipline component (self-assessment) or a discipline (Critique) |

---

## The Two Dimensions

Every mature system of practice has both a content dimension and a procedural dimension:

- **Agile/Scrum:** User stories (content) + ceremonies like standup, retro, sprint review (procedures)
- **Science:** Experiments (content) + peer review, publication, replication (procedures)
- **Law:** Substantive law (content) + legal procedure — filing, evidence rules, appeal process (procedures)

In AlignStack:

- **Thinking Disciplines** = the content dimension (what cognitive operations exist)
- **Protocols** = the procedural dimension (how those operations are managed)

Disciplines are the engine. Protocols are the drivetrain that connects the engine to the wheels.

---

## Four Categories of Protocols

| Category | What it manages | Protocols |
|----------|----------------|-----------|
| **Pipeline** | How disciplines connect, sequence, and start | CONFIGURE, STEER, TERMINATE, SCOPE, BRANCH, MERGE, freshness checks |
| **Transfer** | How outputs move between contexts | SYNTHESIZE, RESUME, HANDOFF, BRIEF |
| **Persistence** | How outputs are saved and maintained | Folder convention, CV persistence, VERSION, metadata injection, archival |

*Note: Quality evaluation is NOT a protocol category. Judging whether a discipline's output is sufficient is cognitive work that belongs to the discipline itself (through self-assessment) or to Critique (through adversarial evaluation). Protocols route based on those judgments — they don't make them. Depth tests, convergence checks, and saturation indicators are discipline components, not protocols.*

### Pipeline Protocols

Pipeline protocols manage the lifecycle of a discipline chain: how to start, what to do between iterations, and when to stop.

**CONFIGURE** — Classify a problem, select the right disciplines, sequence them into a pipeline. The entry point for any multi-discipline inquiry. Currently lives inside `/inquiry`.

**STEER** — Run a wayfinding checkpoint between iterations. Read where the search stands, produce a steering move (BROADEN, NARROW, SHIFT, DIAGNOSE, TERMINATE, RECONSIDER). Currently lives inside `/inquiry`, invoking wayfinding.

**TERMINATE** — Assess whether convergence criteria are met. Decide to stop the loop. Currently implicit in wayfinding's TERMINATE move.

**SCOPE** — Before starting a discipline: set the depth target, time/effort budget, and aspect. Calibrate effort to purpose. A quick bug fix needs CV3; a major refactoring needs CV4. Currently ad-hoc — **not yet formalized.**

**BRANCH** — After decomposition creates sub-problems: create parallel inquiry branches, each with its own pipeline. Manage the branch tree. Currently identified as a gap — **not yet formalized.**

**MERGE** — After parallel branches complete: combine their outputs, resolve conflicts between branches, produce a unified result. Requires BRANCH. Currently identified as a gap — **not yet formalized.**

**Freshness checks** — Before starting analysis, verify that context (archaeology, devdocs) is current. If stale, route to the appropriate archaeology command first. A precondition protocol — checks readiness of the working environment before the pipeline starts. Currently lives in CLAUDE.md project instructions.

### Transfer Protocols

Transfer protocols manage how outputs move between contexts — from the thinking process to a reader, from one session to another, from one agent to another.

**SYNTHESIZE** — Take scattered discipline outputs and produce a coherent deliverable for someone who wasn't in the thinking process. Decomposes into: sensemaking (resolve stale/inconsistent outputs) + critique (select what matters) + audience-aware restructuring. Quality test: "Can someone who wasn't in the loop act on this?" Named but underspecified — **needs full formalization.**

**RESUME** — Pick up a saved inquiry across sessions. Read `_state.md`, determine what's been done, figure out the next step. Currently lives inside `/inquiry`.

**HANDOFF** — Transfer an inquiry's full context to a different agent (human or AI) who will continue it. Package: state, key outputs, frontier questions, resume instructions. Currently does not exist — **not yet formalized.**

**BRIEF** — Produce a compact context package for an agent who needs to ACT on discipline outputs (not just read). Different from SYNTHESIZE (for external readers) — BRIEF is for active participants who will continue the work. Solves the "cold start" problem. Currently does not exist — **not yet formalized.**

### A Note on Quality

An earlier version of this document included a "Quality Protocols" category with GATE (a per-transition quality check), discipline telemetry, depth tests, convergence checks, and freshness checks. Through analysis, this category was dissolved:

- **GATE** was proposed and then eliminated — quality evaluation is cognitive work, not operational routing. It belongs to the disciplines' own self-assessment, not to a separate protocol.
- **Discipline telemetry**, **depth tests**, and **convergence checks** are discipline components — they live INSIDE each discipline's spec and command, not between disciplines. They are how disciplines judge their own output quality (PROCEED / FLAG / RE-RUN). Inquiry reads these judgments and routes accordingly, but the judgment itself is the discipline's job.
- **Freshness checks** are genuinely operational (check preconditions, route to archaeology if stale) and have been moved to Pipeline protocols.

The lesson: protocols route. Disciplines judge. When something tries to do both, it's either a discipline component doing operational work (self-assessment) or a protocol overstepping into cognitive territory (GATE).

### Persistence Protocols

Persistence protocols manage how outputs are saved, organized, versioned, and maintained over time.

**Folder convention** — Map the thinking tree to the file system tree. Branches become folders. Discipline outputs become files. Navigation is `cd` and `ls`. Documented in `devdocs/folder_based.md` — exists as specification but has not been battle-tested.

**CV persistence** — Save Comprehension Versions as files so comprehension can resume across sessions. The last-saved CV is the resume point. Described in Comprehend's discipline spec.

**VERSION** — When a new iteration runs, save the previous iteration's outputs rather than overwriting them. Prevent history loss. Currently identified as a gap — **not yet formalized.**

**Metadata injection** — Automatically inject provenance headers (date, branch, commit, author) into devdocs files. Implemented as the `devdocs_metadata_appender.sh` hook.

**Archival** — Detect stale devdocs outputs, compare against current codebase, move outdated artifacts to timestamped archive folders. Exists as the `/devdocs-archivist` command.

---

## Current State

| Status | Count | Protocols |
|--------|-------|-----------|
| **Exists and functional** | 7 | CONFIGURE, STEER, TERMINATE, RESUME, freshness checks, metadata injection, CV persistence |
| **Exists but underspecified** | 3 | SYNTHESIZE, folder convention, archival |
| **Missing** | 6 | SCOPE, BRANCH, MERGE, HANDOFF, BRIEF, VERSION |

*Note: Discipline telemetry, depth tests, convergence checks, and saturation indicators are NOT counted here — they are discipline components, not protocols. They live inside the disciplines' own specs and commands.*

The existing protocols are scattered — some live inside `/inquiry`, some in CLAUDE.md, some as hooks. They work but are not named, not documented as protocols, and not designed to compose with each other.

---

## How Protocols Relate to Disciplines

Protocols do not replace disciplines. They operate alongside them:

- A **discipline** tells you HOW TO THINK about a specific cognitive task
- A **protocol** tells you HOW TO MANAGE the process of thinking

You can run a discipline without any protocol (just type `/sense-making` on something). Protocols become necessary when you chain disciplines, work across sessions, coordinate between agents, or need quality guarantees.

The relationship is like instruments and sheet music. Disciplines are the instruments — each produces a specific sound. Protocols are the sheet music — they tell you which instrument plays when, how to transition between sections, and when the piece is done. You can play an instrument without sheet music (ad-hoc). Sheet music makes the ensemble reliable.
