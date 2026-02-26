# Slash Commands & Skills: Packaging AlignStack Prompts

AlignStack prompts fall into two categories based on complexity: **slash commands** for single-step operations and **skills** for multi-step workflows.

## The Distinction

- **Slash command** — One prompt, one output. Self-contained. Lives as a markdown file in `.claude/commands/`.
- **Skill** — A multi-phase workflow where each step depends on the previous. Orchestrates several slash commands into a coherent process.

Rule of thumb: if it can run once and produce a useful result, it's a slash command. If it requires a sequence of decisions and outputs, it's a skill.

---

## Core Slash Commands

These four commands form the primary AlignStack workflow. Each feeds into the next, but all can be used independently.

### `/elaborate`
Take raw, messy input (data dump, ticket, notes) and rephrase it back for alignment verification. Uses codebase context to interpret what the user means.
→ Source: Appendix 4, Step 1

### `/task-desc`
Generate a structured `desc.md` with problem statement, value proposition, success criteria, scope boundaries.
→ Source: Appendix 4, Step 2

### `/task-plan`
Generate a `step_by_step_plan.md` with high-level summary and detailed implementation plan.
→ Source: Appendix 4, Step 3

### `/critic`
Generate a `critic.md` that identifies errors, risks, conflicts, and compatibility issues against an implementation plan.

```
/critic              → generic checklist
/critic --d          → dynamic, tailored to codebase + task context
```

→ Source: Appendix 4, Step 4 (generic), Appendix 8 (dynamic)

### Core flow

```
/elaborate → /task-desc → /task-plan → /critic
```

Each step produces an artifact that the next step consumes. Human verification happens between each step.

---

## Supporting Slash Commands

### `/test-scenarios`
Generate comprehensive test scenarios: trigger points, happy paths, edge cases, error scenarios, integration tests, acceptance criteria.
→ Source: Appendix 4, Step 6

### `/probe-tests`
Generate probe test files — no frameworks, verbose output, real components, real data.
→ Source: Appendix 4, Step 6

### `/anchor-check`
Run all existing tests to verify the current implementation hasn't broken anything. Stable intermediate form validation.
→ Source: Appendix 4, Step 8

### `/implementation-notes`
Document the implementation journey: deviations, obstacles, undocumented behaviors, technical debt.
→ Source: Appendix 4, Step 9

### `/gap-analysis`
Identify knowledge gaps before implementation — logic patterns, providers, frameworks, edge cases. Outputs a gap list and separates resolvable vs needs-human-input.
→ Source: Appendix 5, Gap Analysis

### `/file-relevance-map`
Generate a HOT/WARM/COLD file relevance map for a given task. Identifies which files to modify, reference, or ignore.
→ Source: Appendix 5, File Relevance Mapping

### `/archaeology-summary`
Read all code files in an existing project and produce a non-technical summary.
→ Source: Appendix 2, Phase 1

### `/refactor-detect`
Scan codebase for refactoring opportunities — repeated patterns, long parameter lists, traveling data+functions.
→ Source: Appendix 3, Recognizing Refactoring Opportunities

---

## Skills (Multi-Step Workflows)

Skills compose slash commands into repeatable workflows. Each skill orchestrates the core flow plus task-specific supporting commands.

### `add-feature`
The complete feature lifecycle from idea to finished implementation.

**Steps orchestrated:**
1. `/elaborate` — Verify understanding of raw input
2. `/task-desc` — Generate feature documentation
3. `/task-plan` — Generate step-by-step plan
4. `/critic` — Risk assessment (generic or `--d` for dynamic)
5. Execute the plan
6. `/test-scenarios` + `/probe-tests` — Test planning and execution
7. `/anchor-check` — Regression verification
8. `/implementation-notes` — Document the journey
9. Move feature from `planned/` to `finished/`

→ Source: Appendix 4 (full workflow)

### `new-project`
From idea to prototype — data dump through module implementation loop.

**Steps orchestrated:**
1. Data dump consolidation
2. Foundation document generation (project brief, tech spec, conventions)
3. Architecture planning
4. Module loop: `/task-plan` → implement → `/probe-tests` → `/anchor-check` (repeated per module)
5. Integration and smoke tests

→ Source: Appendix 1 (Phases 0–14)

### `adopt-codebase`
Apply AlignStack to an existing codebase using the archaeology pattern.

**Steps orchestrated:**
1. `/archaeology-summary` — Non-technical project summary
2. Technical understanding enhancement
3. DevDocs generation from existing code
4. `/gap-analysis` — Identify unknowns
5. `/anchor-check` — Establish baseline on current state

→ Source: Appendix 2 (full workflow)

### `refactor`
Structured refactoring with stability guarantees.

**Steps orchestrated:**
1. `/elaborate` — Clarify refactoring intent
2. `/refactor-detect` — Identify opportunities
3. `/anchor-check` — Establish baseline
4. `/task-plan` — Plan the refactor
5. `/critic --d` — Dynamic risk assessment
6. Execute incrementally
7. `/anchor-check` — Verify after each step

→ Source: Appendix 3 (full workflow)

---

## How They Relate

```
Skills orchestrate Slash Commands:

add-feature
  ├── /elaborate
  ├── /task-desc
  ├── /task-plan
  ├── /critic (or /critic --d)
  ├── /test-scenarios
  ├── /probe-tests
  ├── /anchor-check
  └── /implementation-notes

new-project
  ├── (data dump — manual)
  ├── (foundation docs — manual)
  ├── /task-plan    (per module)
  ├── /probe-tests  (per module)
  └── /anchor-check (per module)

adopt-codebase
  ├── /archaeology-summary
  ├── /gap-analysis
  └── /anchor-check

refactor
  ├── /elaborate
  ├── /refactor-detect
  ├── /anchor-check
  ├── /task-plan
  ├── /critic --d
  └── /anchor-check
```

Slash commands are useful on their own. Skills combine them into repeatable workflows. You can always run a slash command independently outside of a skill.
