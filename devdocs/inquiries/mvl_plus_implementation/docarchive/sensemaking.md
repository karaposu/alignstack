# Sensemaking: MVL+ Implementation

## User Input
devdocs/inquiries/mvl_plus_implementation/_branch.md

---

## SV6 — Stabilized Model

**MVL+ implementation is a 3-layer build with ~5 spec files, executing in a defined order; Layer 4 items defer to future SIC loops.**

### The Concrete Problem Set

#### Layer 1 — Foundational (must be first)

| Problem | Type | Fix |
|---|---|---|
| `/explore` AI-chosen filename breaks state detection | Mechanical | Add conditional rule: save as `exploration.md` when input is inquiry `_branch.md` |
| `/decompose` same issue | Mechanical | Same rule for `decomposition.md` |

#### Layer 2 — MVL Orchestration

| Problem | Type | Fix |
|---|---|---|
| Create `/mvl+` command | Design | Mirror `/mvl` NEW branch + enhanced RESUME state machine |
| MVL RESUME detects 5-step state | Mechanical | Expand file-existence checks for E, D, S, I, C |
| `_state.md` template | Mechanical | Add Exploration, Decomposition checkboxes |
| TERMINATE archive list | Mechanical | Add `exploration.md`, `decomposition.md` |
| finding.md production prompt | Mechanical | Add E.md, D.md as input sources |
| Classic `/mvl` unchanged | — | Do nothing; backward compatibility free |

#### Layer 3 — Innovate Command

| Problem | Type | Fix |
|---|---|---|
| Read multi-input (E.md, D.md, S.md) | Mechanical | Update "read input" step |
| Reconciliation prelude | Design | Section at top of innovation.md; identify/name contradictions |
| Optional recursion | Design | Inline per-pass sections in innovation.md; define trigger + stop criteria in spec |
| Per-pass AND aggregate telemetry | Mechanical | Add telemetry reporting template |

#### Layer 4 — Deferred (own SIC loops)

| Problem | Why deferred |
|---|---|
| Recursion trigger UX (who pushes the button?) | Design question with multiple viable paths; needs SIC |
| Telemetry-anomaly thresholds | Empirical question; data needed |
| Self-improvement observation mechanism per run | Depends on telemetry-anomaly definition |

### Ordering

1. Layer 1 — blocks everything else (file naming prerequisite)
2. Layer 2 — depends on Layer 1; unblocks user workflow
3. Layer 3 — depends on Layer 2 for file existence; can be specified in parallel
4. Layer 4 — separate SIC loops when ready

### What's NOT a Problem

- Multi-head parallelism (user accepted sequential)
- New runtime components (everything is prompt-level)
- Backward compatibility (two separate commands — classic unchanged)
- VOID capability (Level 3+ frontier)
- Mistake-based shape classification (Level 3+ frontier)
- True parallel execution (Level 3+ frontier)

### Three Mechanical Open Items

1. Should `_state.md` have an explicit flow-type field (classic/extended)? Probably yes.
2. Does `_branch.md` Goal template differ for extended? Probably no — problem-specific, not flow-specific.
3. Exact spec wording. Standard prompt-engineering during build.

### How SV6 Differs from SV1

SV1 was a vague "list of problems." SV6 provides: (a) 3-layer structural classification, (b) explicit ordering via dependencies, (c) per-problem type (mechanical vs design vs needs-SIC), (d) resolved ambiguities for all design-level problems, (e) clear defer list for Layer 4. Implementation is now a bounded, executable work plan.

---

## Key Insights

- **I1**: File naming is the foundational problem — predictable filenames are prerequisite for state detection
- **I3**: innovate command is the biggest design change — multi-input + reconciliation + optional recursion
- **I10**: Two separate commands (`/mvl` + `/mvl+`) beat a single-command flag
- **I13**: `/mvl+` sets up and dispatches; doesn't run silently. Step-by-step UX preserved.
- **I15**: Layer 4 (recursion UX, telemetry-anomaly) defers to own SIC loops — Layers 1-3 are minimum viable
- **I16**: Each recursion pass is a complete I invocation with pass 1's output as seed
- **I17**: Total implementation is ~4 spec files, achievable in one session

## Ambiguity Resolutions

1. `/explore` and `/decompose` filename convention → modify specs directly, conditional rule. **HIGH**
2. `/mvl+` as separate command → two commands coexist. **HIGH**
3. Reconciliation location → section at top of innovation.md. **HIGH**
4. Recursion file structure → inline per-pass sections in innovation.md. **HIGH**
5. `/mvl+` runs everything? → No, setup + dispatcher only. **HIGH**

## Saturation Indicators

- **Perspectives**: 6/6 produced new anchors (Technical, Human, Strategic, Risk, Resource, Definitional)
- **Ambiguity**: 5/5 HIGH
- **SV delta**: Significant — from "list of problems" to "3-layer structural build"
- **Anchor diversity**: C(6), I(17), SP(3), FP(4), MN(4). Multi-type.
