# Sensemaking: Navigation Item Structure

## User Input
Navigation was framed as producing QUESTIONS, not actions. The user disagrees — navigation can produce BOTH. A navigation item has two parts: Direction + Guidelines. "DEEPEN X" can have 5-6 guidelines attached.

---

## SV6 — Stabilized Model

**A navigation item is a BRIEF: Direction + Guidelines.**

### The Structure

```
[confidence] [TYPE]: [direction]
  WHY: [reasoning]
  Guidelines:
  - [specific instruction 1]
  - [specific instruction 2]
  - [specific instruction 3-6]
```

**Direction** = the type + target (WHAT to pursue)
**WHY** = the reasoning (WHY it's in the map)
**Guidelines** = 3-6 specific instructions for HOW to approach the SIC run

### Example

```
■ DEEPEN: The taxonomy's completeness [HIGH]
  WHY: 15 types is first-pass — untested against real use
  Guidelines:
  - Check against this session's actual SIC runs — which next-steps didn't fit?
  - Look for overlapping types (DEEPEN vs RE-RUN DEEPER)
  - Test whether 3 categories partition cleanly
  - Consider collaborative types (handoff, delegation)
  - Elegance: if 15 is too many, find deeper structure
```

### Why This Matters

The guidelines carry configuration that adapters were trying to carry — but PER-ITEM instead of per-type. More specific. More relevant. No separate file mechanism.

When a navigation item becomes a SIC branch, its guidelines become a section in `_branch.md`:

```markdown
## Guidelines (from navigation)
- Check against actual SIC runs
- Look for overlapping types
- Test category partitioning
- Consider collaborative types
- Elegance criterion applies
```

Configuration IS input. The guidelines travel with the question. No adapter needed.

### Guidelines Source

Type-inherent (from taxonomy template) + item-specific (from this SIC run's context). Both apply.

- REFINE always includes: "C identified [dimension] as weakness — focus there"
- PURSUE SEED always includes: "original died because [reason] — avoid that mechanism"
- Item-specific adds: context from this particular inquiry's findings

### How SV6 Differs from Prior Design

Prior: navigation items = typed questions (or typed actions)
Now: navigation items = BRIEFS (direction + WHY + guidelines)

This dissolves:
- Questions vs actions debate → briefs contain both
- Adapter problem → guidelines carry per-item configuration
- Wisdom delivery → guidelines carry accumulated discipline knowledge per-item
