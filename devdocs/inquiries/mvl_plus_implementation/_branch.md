# Branch: MVL+ Implementation

## Question
What are the concrete implementation problems we need to solve to build MVL+ (the extended MVL), given that sequential execution of E, D, S in the first phase is accepted as straightforward and doesn't require a true-parallel mechanism?

## Goal
A scoped, prioritized list of implementation problems with concrete design questions for each. The user should know:
1. Which sub-problems can be addressed directly (small edits to existing specs)
2. Which sub-problems need their own SIC loops (design decisions, not mechanical edits)
3. The order of operations (what to build first)
4. Any hidden cross-cutting concerns between the sub-problems

This is a SCOPING inquiry — identifying the problem set, not solving each one yet. Each identified problem may spawn its own child inquiry.

## Scope Check
Question covers goal: YES — the question asks for the problem set; the goal asks for a prioritized scoped list of problems. Aligned.

## Context

### What extended_mvl_architecture/finding.md specifies (the target)

**Phase 1 — Multi-head observation:**
```
E → exploration map
D → decomposition tree
S → sensemaking anchors
```
All three always run. Thin outputs are explicit confirmations.

**Phase 2 — Reconciliation + Synthesis:**
- I identifies/names contradictions across E/D/S
- I synthesizes, generates candidates
- Optional recursion: trigger on critique-kill-rate > 70% (placeholder); stop at max 3 OR new-novel rate < 20% (placeholder); hard limit 3 non-negotiable; telemetry per-pass AND aggregate

**Phase 3 — Evaluation:** C evaluates

**Phase 4 — Boundary:**
- R with self-improvement observations linked to telemetry anomalies
- N maps next directions

**Two commands:**
- `/mvl` (classic) = S → I → C
- `/mvl+` (default for new) = full flow

**Analogy:** scientific method's cognitive pattern

### What the user accepts as non-problems

- **Multi-head parallelism:** sequential E, D, S on the same input is fine. The human runs them in any order. At Level 3+ true parallel can come later.

### Known implementation surface (to be evaluated in sensemaking)

The implementation touches:
1. `commands/MVL.md` — RESUME logic (file-existence state detection), TERMINATE (archive list, finding.md prompt inputs)
2. `commands/innovate.md` — read multi-input, reconciliation prelude, optional recursion trigger/stop
3. `commands/explore.md` — exists? needs verification. Used as `/explore` or similar.
4. `commands/decompose.md` — exists? needs verification.
5. New wrapper command — `/mvl+` that runs E, D, S, I, C in sequence (may or may not be needed; human might prefer per-step review)
6. Finding.md production prompt — read E.md, D.md, S.md in addition to I.md, C.md
7. `_state.md` — progress checkbox list needs E and D added
8. Telemetry anomaly detection → observation trigger
9. Stop-recursion enforcement (where does the spec enforce max 3?)
10. Backward compatibility — classic `/mvl` flow preserved
11. Reconciliation output — where does it live (section in innovation.md? separate file?)

### Known "won't do now" items

- True parallel execution (Level 3+ frontier)
- VOID capability (Level 3+ frontier)
- Mistake-based shape classification mechanism (Level 3+ frontier)
- Three-separate-SIC-cycles mode (extreme-case frontier)

### The principle guiding this inquiry

**Instrumental rigidity from the parent finding.** We don't need the perfect implementation. We need something BUILDABLE AT LEVEL 0-2 that generates rich training data and moves us toward self-evaluation. Prefer small edits to existing mechanisms over new components.
