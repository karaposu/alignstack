# DevDocs Folder Naming — Decision

## New Structure

```
devdocs/
├── scoped/         ← bounded, defined work items
│   ├── 9/
│   ├── 16/
│   ├── 18/
│   └── future/
│       └── 1/
├── ideas/          ← broader explorations, unbounded
│   ├── langfuse_adaptation.md
│   ├── scorer_model_idea.md
│   └── future/
│       └── parallel_filler_subagents/
├── archive/        ← completed work
│   ├── 2026-04-01_scoped_12/
│   └── 2026-04-01_scoped_2/
├── archaeology/    ← codebase understanding (always active)
├── roadmaps/       ← release planning (always active)
├── auth/           ← topic-specific (active until done)
└── agent_parallelism/  ← topic-specific (future work)
## Renames

| Old | New | Why |
|-----|-----|-----|
| fixes/ | scoped/ | "Fix" implies something is broken. Most items are refactors, migrations, or wiring work — not bugs. scoped/ means "boundaries are drawn, deliverable is defined." |
| enhancements/ | ideas/ | "Enhancement" is long (12 chars) and vague — everything is an enhancement. ideas/ (5 chars) captures the exploratory nature: bigger scope, still being shaped, may need sensemaking before implementation. |

## The Two Drawers

The distinction between scoped/ and ideas/ is about **readiness**, not importance:

**scoped/** — "I know what to change"
- Has a desc.md with specific files and lines
- Has a step_by_step_impl_plan.md
- Can go through critic → implement cycle
- Numbered items (sequential, trackable)
- Example: "Make message_id nullable on ToolCallModel"

**ideas/** — "I'm exploring something bigger"
- May have a desc.md but it's exploratory
- Might need sensemaking before a plan
- Scope isn't fully defined yet
- Named items (descriptive, not numbered)
- Example: "Langfuse adaptation", "Scorer model idea"

**When an idea matures:** mv ideas/langfuse/ scoped/19/ — it gets a number and enters the implementation pipeline.

## Three States via Folder

| State | Location | Meaning |
|-------|----------|---------|
| Active | scoped/{N}/ or ideas/{name}/ | Work in progress |
| Planned | scoped/future/{N}/ or ideas/future/{name}/ | Designed, not started |
| Done | archive/{date}_{origin}/ | Completed, in codebase |

No metadata fields needed for state. The folder IS the state.

## Why Not Keep fixes/?

fixes/ works and is established. The rename is optional. But
scoped/ is more accurate — Fix 16 (template → DB) isn't fixing
a bug. Fix 18 (observability wiring) isn't fixing anything. They're
scoped work items. The name matches the content better.

If renaming feels like churn, keep fixes/ and only rename
enhancements/ → ideas/. The ideas/ rename has higher value
because the old name is both long and vague.