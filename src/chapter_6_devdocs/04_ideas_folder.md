# Ideas Folder Documentation

## The Exploration Space

Before work becomes scoped — with a clear desc.md, a step-by-step plan, and a critic — it starts as an idea. The Ideas folder is where broader explorations, unbounded thinking, and not-yet-shaped possibilities live.

The distinction between `ideas/` and `scoped/` is about **readiness**, not importance:

- `scoped/` = "I know what to change" — boundaries are drawn, deliverable is defined
- `ideas/` = "I'm exploring something bigger" — scope isn't fully defined yet, might need sensemaking before a plan

## The Ideas Folder Structure

```
devdocs/ideas/

    langfuse_adaptation/
        desc.md
        sensemaking.md

    scorer_model_idea.md

    event_driven_architecture/
        elaboration.md
        roadmap.md

    future/
        parallel_filler_subagents/
            desc.md
```

Ideas are **named**, not numbered. Names are descriptive — they tell you what the idea is about at a glance. Scoped items get numbers because they're in a sequential pipeline. Ideas aren't in a pipeline yet.

## What Goes Here

- Feature explorations that don't have clear boundaries yet
- Architecture possibilities being evaluated
- Sensemaking analyses for complex decisions
- Elaborations of vague requirements
- Roadmaps for multi-step visions
- Anything that needs thinking before it needs planning

## How Ideas Differ from Scoped Work

| | Ideas | Scoped |
|---|---|---|
| **Readiness** | Still being shaped | Ready to implement |
| **Naming** | Descriptive names | Sequential numbers |
| **Key docs** | elaboration.md, sensemaking.md, desc.md (exploratory) | desc.md (specific), step_by_step_impl_plan.md, critic.md |
| **Primary commands** | `/elaborate`, `/sense-making`, `/roadmap` | `/task-desc`, `/task-plan`, `/critic` |
| **Scope** | May be unclear, multi-faceted | Clear boundaries, defined deliverable |
| **Structure** | Flexible — whatever the idea needs | Standardized — desc, plan, critic, test |

## When an Idea Matures

When an idea becomes clear enough to implement, it moves to scoped/:

```
mv devdocs/ideas/langfuse_adaptation/ devdocs/scoped/feat_19_langfuse_adaptation/
```

It gets a number and enters the implementation pipeline. At that point, the exploratory docs (sensemaking, elaboration) become context for creating the structured docs (desc.md with success criteria, step_by_step_impl_plan.md, critic.md).

Not all ideas mature. Some stay as ideas indefinitely — valuable context for future decisions but never implemented directly. Some get archived when the direction changes. Both are fine.

## The future/ Subfolder

Ideas that are planned but not actively being explored go in `ideas/future/`:

```
devdocs/ideas/future/parallel_filler_subagents/
```

This keeps them visible (the AI sees them when reading the ideas folder) without cluttering the active exploration space. When you're ready to explore, move them up:

```
mv devdocs/ideas/future/parallel_filler_subagents/ devdocs/ideas/parallel_filler_subagents/
```

## Best Practices

1. **Start messy** — a single markdown file with raw thoughts is a valid idea. Structure it later if it survives.
2. **Use sensemaking for complex ideas** — if the idea is ambiguous or multi-faceted, run `/sense-making` on it before trying to scope it.
3. **Don't rush to scoped/** — an idea moved to scoped/ too early produces a weak plan. Let ideas breathe.
4. **Link related ideas** — if two ideas interact, reference each other. This helps when one matures and you need to consider the other.
5. **Archive, don't delete** — abandoned ideas go to `archive/`, not the trash. The reasoning behind abandoned ideas prevents re-exploring dead ends.
