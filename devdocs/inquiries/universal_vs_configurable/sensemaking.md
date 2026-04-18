# Sensemaking: Universal vs Configurable

## User Input
devdocs/inquiries/universal_vs_configurable/_branch.md

---

## SV6 — Stabilized Model

**The boundary rule: "Would every run everywhere be worse without this?" determines where content lives.**

### Three Layers

```
UNIVERSAL (every run, every project, every question type)
  → Discipline SPEC (commands/*.md)
  → Examples: failure modes, assembly check, process phases, telemetry

PROJECT-SPECIFIC (every inquiry in THIS project, not all projects)
  → Project ADAPTER (devdocs/adapter.md)
  → Examples: "read briefing," "use alignment-labeled _branch.md"

QUESTION-TYPE-SPECIFIC (this TYPE of inquiry, not all inquiries)
  → Inquiry ADAPTER (_adapter.md from templates)
  → Examples: wayfinding traps, comprehension depth, exploration frontiers
```

### Content Reassignment

| Content | Was in | Moves to | Reason |
|---|---|---|---|
| Assembly check | Going to default adapter | Already in specs | Universal |
| Four traps | Default adapter | Wayfinding template | Question-type-specific |
| "Read briefing" | Default adapter | Project adapter | Project-specific |
| Alignment-field refs | Default adapter | Project adapter | Project-specific |
| "Generate beyond visible" | Default adapter | Wayfinding template | Question-type-specific |

### Key Finding

**Nothing in the "default adapter" was actually universal.** Everything was either project-specific or question-type-specific. The discipline specs already contain all universal guidance (failure modes, assembly check, process structure).

### The "Default Adapter" Doesn't Exist

It's a PROJECT ADAPTER — project-level configuration at `devdocs/adapter.md`. Renamed to reflect scope.

### Four Files, Four Roles

| File | What it captures | Updated when |
|---|---|---|
| `devdocs/briefing.md` | Project STATE | After each inquiry (R proposes) |
| `devdocs/adapter.md` | Project CONFIGURATION | When conventions change (rare) |
| `_branch.md` | Inquiry ALIGNMENT STATE | Per inquiry (MVL creates) |
| `_adapter.md` | Inquiry CONFIGURATION | Per inquiry (user copies template) |

### Build 1 Simplifies

1. Create project adapter (lean — just project config, no traps)
2. One-line edit per command (unchanged mechanism)
3. Update MVL's `_branch.md` format (alignment labels)
4. Specialized templates = Build 1.5 (not Build 1)

### Adapter Identity

| Layer | Identity | Content type |
|---|---|---|
| Discipline spec | Universal methodology | HOW to think |
| Project adapter | Project configuration | WHAT this project needs |
| Inquiry adapter | Question-type config | WHAT this question type needs |

---

## Key Insights

- **I1**: Content-to-layer mapping table — every piece of "default adapter" tested
- **I2**: Four wayfinding traps are question-type-specific, not universal
- **I5**: Three distinct layers with clear identities
- **I8**: Discipline specs are already fairly complete for universal guidance
- **I9**: Nothing in the current default adapter is actually universal
- **I12**: Four files, four distinct roles, no overlap
- **I13**: Implementation mechanism (one-line edit, two-level fallback) unchanged

## Boundary Test

"Would every run of this discipline, regardless of project or question type, be worse without this?"
- YES → goes in the discipline spec
- NO, but all inquiries in this project → project adapter
- NO, but this question type → inquiry adapter template

## How SV6 Differs from SV1

SV1: binary (spec vs adapter). SV6: ternary (spec / project adapter / inquiry adapter). Plus: content reassignment and "default adapter" renamed to "project adapter."

## Saturation Indicators
- **Perspective saturation**: 5/5, all produced new anchors. Saturated.
- **Ambiguity resolution ratio**: 3/3 at HIGH.
- **SV delta**: Significant — binary → ternary + content reassignment.
- **Anchor diversity**: C(4), I(13), SP(3), FP(2), MN(3). I1, I5, I9 load-bearing.
