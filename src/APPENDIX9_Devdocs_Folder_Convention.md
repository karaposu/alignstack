# DevDocs Folder Convention

This document defines the standard folder structure and naming conventions for `devdocs/`. The goal is consistency — so that any team member (or AI) can navigate any project's devdocs and immediately know where things are.

---

## Top-Level Structure

```
devdocs/
├── foundations/          # What this project is and how it thinks
├── archaeology/          # Understanding an existing codebase
├── enhancements/         # All planned and finished work
├── modules/              # Per-module documentation
├── evolution/            # Improvement planning and roadmaps
├── 
```

---


## Created as Needed

├── concepts/             # Domain and technical concepts, can be regarding a feature or for whole project
├── explorations/         # Freestyle analysis and research
├── clarifications/       # Elaborated/tidied input (from /elaborate)
└── sensemaking/          # Structural sensemaking outputs




## foundations/

What the project is, why it exists, and what principles guide it.

```
devdocs/foundations/
├── project_description.md
├── philosophy.md
└── known_requirements.md
```

These are written once and updated rarely. They represent the stable identity of the project.

---

## concepts/

Domain concepts, technical concepts, and their relationships.

```
devdocs/concepts/
├── concepts.md
├── concepts_to_implement.md
├── simplified_concepts.md
└── concept_clarifications/
    ├── 01_[concept].md
    ├── 02_[concept].md
    └── ...
```

Use numbered prefixes (`01_`, `02_`) to enforce reading order where it matters.

---

## modules/

One folder per module. Each documents what that module is, how it works, and how it connects to the rest.

```
devdocs/modules/[module_name]/
├── what_is_this_for.md
├── interfaces_and_endpoints.md
├── integration_points.md
├── limitations.md
├── edge_cases_covered.md
├── example_usage.md
└── summary.md
```

Module names are lowercase with underscores: `auth_service`, `payment_gateway`, etc.

---

## enhancements/

All work items — features, bug fixes, improvements, refactor,  anything that changes the codebase. Each enhancement gets its own folder.

```
devdocs/enhancements/
├── [identifier]/
│   ├── raw.md                        # or raw/ folder if multiple files
│   ├── elaboration.md                # /elaborate output — tidied version of raw
│   ├── step_by_step_plan.md          # /task-plan output
│   ├── critic.md                     # /critic output
│   ├── dynamic_critic_prompt.md      # if /critic-d was used
│   ├── test_scenarios.md             # optional
│   └── implementation_notes.md       # optional
└── [another_identifier]/
    └── ...
```

### Enhancement folder naming

The folder name is whatever identifies the enhancement for your team. It could be:
- A descriptive name: `webhook_retry`, `auth_token_refresh`
- A ticket ID from your issue tracker: `PROJ-423`, `INFRA-87`
- Whatever convention your team already uses

The convention is the structure inside the folder, not the folder name itself.

### Raw input

The raw input is the original, unprocessed material — exactly as it came in. If it's a single document, use `raw.md`. If there are multiple files (notes, tickets, screenshots, data dumps), use a `raw/` folder. Don't create a folder just to put one file inside it.

Once raw input is saved, it stays untouched. The processed artifacts (`elaboration.md`, `step_by_step_plan.md`, etc.) are built from it but live alongside it.

### Standard files inside an enhancement

| File | Purpose | Created by |
|------|---------|------------|
| `raw.md` or `raw/` | Original input, untouched | manual |
| `elaboration.md` | Tidied, structured version of raw input | `/elaborate` |
| `step_by_step_plan.md` | Implementation plan with steps and file list | `/task-plan` |
| `critic.md` | Risk/error/conflict analysis | `/critic` or `/critic-d` |
| `dynamic_critic_prompt.md` | The generated prompt (for inspection) | `/critic-d` |
| `test_scenarios.md` | Test planning | manual or future command |
| `implementation_notes.md` | Post-implementation journal | manual or future command |

Not every enhancement needs all files. A small bug fix might only have `raw/` and `implementation_notes.md`. A complex feature will have all of them.

### Enhancement status

Status is tracked by folder location:

```
devdocs/enhancements/[name]/           # active (planned or in-progress)
devdocs/enhancements/finished/[name]/  # done — move here when complete
```

Move the entire folder to `finished/` when the enhancement is complete. This keeps the top level clean.

---

## archaeology/

For understanding an existing codebase. Created by the `arch-*` commands.

```
devdocs/archaeology/
├── small_summary.md           # Non-technical project summary
├── intro2codebase.md          # Architecture introduction
├── intro2deployment.md        # optional
├── top_improvements.md        # 5 highest-impact improvements
├── cleanup_inventory.md       # optional
├── architecture_analysis.md   # optional
├── module_discovery.md        # optional
├── concept_mappings.md        # optional
├── traces/                    # End-to-end interaction traces
│   ├── trace_1.md
│   ├── trace_2.md
│   └── ...
├── concepts/                  # optional
│   ├── technical_concepts_list.md
│   ├── design_concepts_list.md
│   ├── business_lvl_concepts_list.md
│   └── missing_concepts_list.md
└── foundations/                # optional — inferred from code, not from docs
    ├── project_description.md
    ├── philosophy.md
    └── known_requirements.md
```

Note: `archaeology/foundations/` is what the code tells us. `foundations/` (top-level) is what we decide the project should be. They may differ.

---

## evolution/

Planning future improvements. Typically created after archaeology.

```
devdocs/evolution/
├── gap_analysis.md
├── gap_closure_plan.md
├── refactoring_opportunities.md
├── implementation_roadmap.md
└── evolution_log.md              # extracted lessons from completed work
```

---

## clarifications/

For when you need to deeply understand a concept, technology, or decision and generate educative material around it. This is a knowledge base built as needed — deep dives, concept breakdowns, sensemaking outputs worth keeping, anything that helps the team grasp something that isn't obvious.

```
devdocs/clarifications/
└── [topic_name]/
    └── *.md
```

Folder names are short and descriptive, based on the topic.

---

## sensemaking/

Output from `/sense-making`. Full structural sensemaking analyses.

```
devdocs/sensemaking/
└── [suitable_name].md
```

---

## Housekeeping: Handling Old DevDocs

Over time, devdocs accumulate. Finished enhancements, outdated archaeology runs, old sensemaking analyses — they pile up. There are two approaches to managing this:

### Approach 1: Remove after done

Delete devdocs files and folders once the work is complete and merged. The code is the source of truth now — the planning documents served their purpose.

This keeps devdocs lean and relevant. The downside is you lose the decision trail (why something was built a certain way).

### Approach 2: Summarize and archive

Periodically go through completed devdocs and extract information that should persist — key decisions, lessons learned, risks that materialized, patterns that worked. Store these in `devdocs/evolution/evolution_log.md`.

```
devdocs/evolution/evolution_log.md
```

This is a running log, not a dump. Each entry should be a concise summary of what was done, what was learned, and what to remember going forward. After extracting what matters, the original devdocs files can be removed.

### Which to use

Both are valid. The choice depends on your team:
- If your team rarely looks back at old decisions → Approach 1 (remove)
- If your project has complex history and people join/leave → Approach 2 (summarize then remove)

Either way, don't let devdocs become a graveyard of stale documents. Old devdocs that nobody reads are worse than no devdocs — they create noise and erode trust in the folder.

---

## Document Metadata

Every generated devdocs file should include a metadata header at the very top. This ties the document to a specific point in the codebase so you always know what state of the code it was written against.

```
---
created: 2026-02-27
branch: feat/webhook-retry
base_commit: e9da405
author: ns
---
```

| Field | Description | Source |
|-------|-------------|--------|
| `created` | Date the document was generated | System date |
| `branch` | Git branch that was active | `git branch --show-current` |
| `base_commit` | The commit HEAD pointed to when this document was written — not a commit containing this document | `git rev-parse --short HEAD` |
| `author` | The person who triggered the command | `git config user.name` |

Slash commands should auto-insert this header. No manual entry required.

---

## General Rules

1. **Everything is markdown.** No other formats in devdocs.
2. **Folder names are lowercase with underscores.** `auth_tokens`, not `AuthTokens` or `auth-tokens`.
3. **File names are lowercase with underscores.** `step_by_step_plan.md`, not `StepByStepPlan.md`.
4. **Standard file names are fixed.** Use `desc.md`, not `description.md` or `feature_desc.md`. Consistency matters more than expressiveness.
5. **One enhancement per folder.** Don't mix unrelated work in the same folder.
6. **Overwrite, don't append.** When regenerating a file (re-running a command), replace the entire file. Don't patch or add to the bottom.
7. **devdocs is not code.** It's documentation about decisions, plans, and understanding. Don't put code here — that's what the source tree is for.
