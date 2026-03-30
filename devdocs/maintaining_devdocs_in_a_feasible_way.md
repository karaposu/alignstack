# Maintaining DevDocs in a Feasible Way

## The Problem

DevDocs accumulate. Every `/elaborate`, `/task-desc`, `/task-plan`, `/critic`, `/arch-traces`, `/roadmap` run produces files. After a few weeks of active development, the devdocs folder becomes a graveyard of completed plans, outdated traces, superseded critics, and abandoned elaborations. The structure that was supposed to bring clarity now creates confusion.

The instinct is to delete old files. But deletion destroys history — you lose the reasoning behind decisions, the alternatives that were considered, the risks that were identified. Six months later, someone asks "why did we build it this way?" and the answer was in a critic.md that got deleted.

So: never delete, but also don't let the folder become unusable. This document explores how.

---

## Core Principle: Archive, Never Delete

No devdocs file should be permanently deleted. Instead, files move through lifecycle states:

```
active → completed → archived
                  → superseded → archived
```

- **Active** — currently relevant to ongoing work
- **Completed** — the work is done, the file is no longer needed day-to-day but has historical value
- **Superseded** — replaced by a newer version (e.g., plan v2 replaces plan v1)
- **Archived** — moved out of the active folder structure into cold storage

---

## The Archive Folder

Each top-level devdocs folder gets an `_archive/` subfolder:

```
devdocs/
├── enhancements/
│   ├── auth_module/           ← active
│   │   ├── desc.md
│   │   ├── step_by_step_plan.md
│   │   └── critic.md
│   └── _archive/              ← completed/superseded work
│       └── payment_refactor/
│           ├── desc.md
│           ├── step_by_step_plan.md
│           └── critic.md
├── archaeology/
│   ├── traces/                ← current traces
│   ├── _archive/              ← old trace sets
│   │   └── 2026-03-15_traces/
│   └── ...
├── roadmaps/
│   ├── auth_system/           ← active roadmap
│   └── _archive/
│       └── old_auth_approach/
└── ...
```

The `_archive/` prefix with underscore ensures it sorts to the top (visible) but is clearly separated from active work. Everything inside archive keeps its original folder structure intact.

---

## When to Archive

### Enhancements

**Archive when:** The feature is merged/deployed and verified working.

**What to archive:** The entire enhancement folder — desc.md, step_by_step_plan.md, critic.md, dynamic_critic_prompt.md, elaboration.md, raw.md. Move the whole folder to `_archive/`.

**Before archiving:** Add a brief completion note to the desc.md:

```markdown
---
status: completed
completed: 2026-03-28
merged_to: main
---
```

**Edge case — feature was abandoned:** Archive anyway. Add `status: abandoned` and a brief note explaining why. This is valuable history — it prevents someone from attempting the same approach later without knowing it was already tried and dropped.

**Edge case — feature was partially implemented:** Don't archive yet. It's still active. If it's been dormant for 30+ days with no activity, add `status: stalled` to the desc.md so it's visually flagged. Only archive when a deliberate decision is made to abandon it.

**Edge case — feature was split into multiple smaller ones:** Archive the original, create new enhancement folders for the sub-features. Add a note to the archived original linking to the new ones:

```markdown
---
status: superseded
split_into:
  - enhancements/auth_login/
  - enhancements/auth_sessions/
  - enhancements/auth_tokens/
---
```

**Edge case — multiple iterations of critic/plan:** Keep only the final versions active. Move earlier iterations to `_archive/` within the enhancement folder itself (not the top-level archive):

```
enhancements/auth_module/
├── step_by_step_plan.md        ← current (v3)
├── critic.md                   ← current
└── _archive/
    ├── step_by_step_plan_v1.md
    ├── step_by_step_plan_v2.md
    ├── critic_v1.md
    └── critic_v2.md
```

### Archaeology

**Traces:** Archive the entire `traces/` folder when traces are regenerated. Name the archived set with a date: `_archive/2026-03-15_traces/`. This preserves the snapshot of how the codebase was understood at that point.

**Small summary and intro:** These get overwritten by the commands themselves. No archival needed — git history preserves old versions. The current file is always the latest.

**Dead code index / dead concepts index:** Archive when a major cleanup is done based on the index. The archived index shows what was cleaned up and why.

**Top improvements:** Same as summary/intro — overwritten in place, git preserves history.

### Roadmaps

**Archive when:** The roadmap is fully completed (all nodes checked) or the direction has fundamentally changed making the roadmap irrelevant.

**Don't archive when:** The roadmap is partially complete but still the active direction. Update it instead.

**Edge case — roadmap direction changed:** Archive the old roadmap. Create a new one. The old one documents the abandoned direction and the thinking behind it.

### Clarifications / Sensemaking

**Archive when:** The clarification or sensemaking output has been fully absorbed into a desc.md, plan, or other actionable artifact. The elaboration served its purpose.

**Don't archive when:** The clarification covers foundational concepts that are referenced repeatedly. These stay active as long as they're relevant.

### Reports

**Never archive individual reports.** They're time-stamped by nature (`overview_7d_2026-03-30.md`). They accumulate but don't conflict. If the reports folder gets large, archive by quarter or year:

```
devdocs/reports/
├── overview_7d_2026-03-30.md    ← recent
├── overview_7d_2026-03-23.md    ← recent
└── _archive/
    └── 2026-Q1/
        ├── overview_7d_2026-01-15.md
        └── overview_30d_2026-02-01.md
```

### Fixes

**Archive when:** The fix is verified and merged. The fix doc explains what went wrong and how it was resolved — valuable for post-mortems but not needed in the active folder.

---

## The Evolution Log

Before archiving a batch of completed work, summarize it in `devdocs/evolution/evolution_log.md`. This is a running changelog of the project at a higher level than git commits.

```markdown
## 2026-03-28 — Auth Module Complete

Implemented token-based authentication with refresh flow. Replaced the session-based
approach after critic identified scalability issues with server-side session storage.

Key decisions:
- JWT with short-lived access tokens (15min) + refresh tokens (7d)
- Refresh tokens stored in httpOnly cookies, not localStorage
- Token rotation on every refresh to detect reuse

Archived: enhancements/auth_module/
```

The evolution log is the one file a new team member reads to understand the project's history without digging through archives.

---

## Staleness Detection

Files don't announce when they're stale. These heuristics help:

**30-day rule for enhancements:** If an enhancement folder hasn't been modified in 30 days and the feature isn't in the codebase, it's likely abandoned. Flag it.

**Re-trace trigger for archaeology:** If more than 20% of the codebase has changed since traces were generated (check via git diff --stat), the traces are stale. The CLAUDE.md freshness check handles this for 7/15/30 day windows.

**Plan-code divergence:** If a step_by_step_plan.md exists but the implemented code doesn't match it (steps were skipped, order changed, scope changed), the plan is stale. It should either be updated to match reality or archived with a note.

**Roadmap drift:** If a roadmap's starting_state.md no longer matches the actual project state, the roadmap needs updating or archiving.

---

## Folder Hygiene Routine

A periodic (weekly or bi-weekly) housekeeping pass:

1. **Scan for completed work** — any enhancement folders where the feature is merged? Archive them.
2. **Scan for stalled work** — any enhancement folders with no activity for 30+ days? Flag with `status: stalled`.
3. **Check archaeology freshness** — are traces, summaries, and intros still current? Regenerate if stale.
4. **Update evolution log** — summarize any archived work.
5. **Check roadmaps** — are active roadmaps still accurate? Update or archive.
6. **Scan for orphans** — any files that don't belong to a clear folder structure? Either organize or archive.

This routine takes 10-15 minutes. It keeps devdocs useful instead of letting them decay into noise.

---

## What About Disk Space?

Devdocs are markdown files. They're tiny. A year of aggressive devdocs usage might produce 5-10MB of text files. Disk space is not the concern — navigability is. Archiving solves navigability. Git handles versioning. Disk space is free.

---

## Summary

| Situation | Action |
|-----------|--------|
| Feature completed and merged | Archive entire enhancement folder |
| Feature abandoned | Archive with `status: abandoned` and reason |
| Feature stalled (30+ days) | Flag with `status: stalled`, keep active |
| Feature split into smaller ones | Archive original, link to new ones |
| Multiple plan/critic iterations | Archive old versions within the enhancement folder |
| Traces regenerated | Archive old trace set with date |
| Roadmap completed or direction changed | Archive roadmap folder |
| Elaboration absorbed into desc.md | Archive elaboration |
| Reports accumulating | Archive by quarter |
| Fix merged and verified | Archive fix doc |

**The rule: if you're reaching for the delete key, reach for the archive folder instead.**
