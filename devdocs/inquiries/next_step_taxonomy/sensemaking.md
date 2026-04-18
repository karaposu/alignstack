# Sensemaking: Next Step Taxonomy

## User Input
devdocs/inquiries/next_step_taxonomy/_branch.md

---

## SV6 — Stabilized Model

**15 types in 3 categories, each a question-framing template for SIC, with multi-headed output as a typed plan with dependencies.**

### The Taxonomy

**CONTENT-DIRECTED (what to pursue):**

| # | Type | Trigger | Template |
|---|---|---|---|
| 1 | **DEEPEN** | Survivor is surface-level | "Go deeper on [X]: investigate [aspect]" |
| 2 | **REFINE** | C gave REFINE verdict | "[Candidate] needs [dimension]. Fix it." |
| 3 | **PURSUE SEED** | Kill seed promising | "[Killed idea] died because [reason]. What avoids [reason]?" |
| 4 | **INVESTIGATE FRONTIER** | Frontier question matters | "[Frontier question]. Answer it." |
| 5 | **DEVELOP** | Survivor ready for implementation | "Make [survivor] concrete: [format]" |
| 6 | **TERMINATE** | Answer matches goal | Compile. No SIC needed. |

**PROCESS-DIRECTED (how to improve the loop):**

| # | Type | Trigger | Template |
|---|---|---|---|
| 7 | **RE-RUN DEEPER** | Telemetry flagged thin | "Re-run [discipline] with more depth" |
| 8 | **WIDEN** | Scope too narrow for goal | "What wider question covers the goal?" |
| 9 | **REFRAME** | No progress after iterations | "What different framing would work?" |
| 10 | **DIFFERENT APPROACH** | Current approach not producing | "Try [approach] because current failed at [reason]" |

**CONTEXT-DIRECTED (outside this inquiry):**

| # | Type | Trigger | Template |
|---|---|---|---|
| 11 | **REVISIT** | New info changes past conditions | "Re-evaluate [finding] under [new conditions]" |
| 12 | **UNBLOCK** | Dependency blocks progress | "How to resolve [blocker]?" |
| 13 | **MERGE** | Multiple branches complete | "Synthesize [results]. Resolve contradictions." |
| 14 | **TEST** | Finding needs reality check | "Verify [finding] against [evidence]" |
| 15 | **CONSOLIDATE** | Multiple inquiries need integration | "Integrate [inquiries]. Unified understanding?" |

### Multi-Headed Output

Steering produces a PLAN — typed steps with relationships:
```
Next steps:
1. DEEPEN: [question] — PARALLEL with 2
2. INVESTIGATE FRONTIER: [question] — PARALLEL with 1
3. UNBLOCK: [question] — BEFORE 4
4. MERGE: [question] — AFTER 1, 2, 3
```

Relationships: parallel, sequential, conditional, competitive.

### Implementation Tiers

| Tier | Types | Requirement |
|---|---|---|
| **Works now** | 1-10, 12, 14 | Current system |
| **Needs cross-inquiry access** | 11, 15 | Past findings index |
| **Needs multi-branch management** | 13 | Branch tracking |

### Key Structural Findings

- Each type IS a question-framing template for SIC — not a new mechanism
- The taxonomy IS the autonomous loop's action vocabulary
- Two-stage selection (category → type) makes 15 types manageable
- Types 1-10 + 12 + 14 work with current system (12 of 15)
- Types 11, 13, 15 need information access that doesn't exist yet
- The plan output format IS the multi-headed loop's execution plan

### What This Means

The steering system's job: given state, produce a typed plan of next-steps with relationships. Each step is a SIC question framed by its type's template. Multi-headed = create branch per parallel item, sequence dependent items. No new mechanism — question-framing templates + plan output format. Both are text.

---

## Full Analysis

### Key Insights
- **I1**: C produces survivors, refinements, seeds, frontiers, assembly — each triggers different types
- **I2**: Process signals (telemetry) trigger process-directed types
- **I3**: External changes trigger context-directed types
- **I4**: Three structural categories: content, process, context
- **I5**: Multi-headed = typed plan with parallel/sequential/conditional/competitive relationships
- **I6**: 15 types total — superset of wayfinding (6) and MVL (2)
- **I7**: Types 11, 13, 15 need new information access mechanisms
- **I8**: Plan output format with typed steps and relationships
- **I9**: Taxonomy IS the autonomous loop's action vocabulary
- **I10**: Two-stage selection makes 15 manageable
- **I11**: Taxonomy is proper superset of wayfinding + MVL

### Ambiguity Resolutions
1. Some types may merge — deferred to critique. Categories are distinct (HIGH).
2. Steering output is a PLAN with dependencies, not just a list (HIGH).
3. Question-framing templates listed per type.

### How SV6 Differs from SV1
SV1: list of types. SV6: typed vocabulary + plan format + template library, three categories, implementation tiers.

## Saturation Indicators
- **Perspective saturation**: 4/4+definitional. Saturated.
- **Ambiguity**: 3 addressed, 1 deferred to critique.
- **SV delta**: Significant.
- **Anchor diversity**: C(4), I(11), SP(3), FP(2), MN(3). I4, I7, I9 load-bearing.
