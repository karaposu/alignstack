# Branch: Regression Detection Design

## Question
How do we build a regression detection mechanism for the thinking system at Level 0-2 (no higher-mind comparison yet), using the 23 symptoms already defined in `devdocs/exploration/regression_symptoms_defined.md` combined with current telemetry + human reflection — so that self-modification can eventually be trusted to proceed without breaking the disciplines?

## Goal
A buildable regression detection mechanism that:
1. Uses the 23 existing symptoms as the DETECTION surface (they're defined but unused — activate them)
2. Works WITH current capabilities — human-in-loop review, per-run discipline telemetry, inquiry folder outputs
3. Does NOT require the "higher mind" (cross-session meaning-quality comparison) we don't have yet
4. Produces a CLEAR signal: "regression detected in [discipline], symptom type [X], action: [revert/investigate/accept]"
5. Progresses toward Level 3+ autonomy along the Baldwin trajectory — current version is human-assisted; later versions are increasingly automated
6. Can be tested in practice using existing inquiry outputs (retrospective detection) before being integrated into live MVL/MVL+ flow

The user should walk away with: a concrete design for how regression detection ACTUALLY works (not an abstract description), including which symptoms are detected automatically vs flagged for human review, where results are stored, and how they feed the Baldwin cycle.

## Scope Check
Question covers goal: YES — the question asks about building the detection mechanism using the 23 symptoms at Level 0-2. The goal asks for a buildable, concrete, Baldwin-trajectory-aligned design. Both scopes match.

## Context

### What exists (prior work to read in Exploration phase)

- `devdocs/exploration/regression_symptoms_defined.md` — 23 symptoms across 5 types (Output, Experience, Pipeline, Error, Spec), with a symptom schema (name, type, signal, baseline, deviation, specificity, severity, context, combination) and five diagnostic patterns (Surface Run, Confirmation Bias, Introduced Error, Pipeline Degradation, Slow Drift)
- `devdocs/exploration/improvement_rhythm.md` — may contain related infrastructure
- `devdocs/inquiries/autonomous_consciousness_goal/finding.md` — frames regression detection as "the immediate next buildable step" to unlock Baldwin cycles; establishes the bootstrap resolution (human calibrates at Level 0)
- `devdocs/inquiries/extended_mvl_architecture/finding.md` — names telemetry-anomaly detection as Level 4+ frontier; this inquiry may ground that by defining the ACTUAL telemetry signals
- Per-discipline telemetry sections in every SIC/MVL+ run (Saturation Indicators, Mechanism Coverage, Convergence Telemetry) — these already exist; regression detection must use them
- `_state.md` relationship fields (CONTINUES FROM, SUPERSEDED BY, RELATED) — cross-run context

### What's missing (the gap)

- The 23 symptoms are DEFINED but never operationalized. No code, no prompt, no spec references them.
- Cross-run telemetry is NOT persisted — each run's telemetry lives in its own `_state.md`, no comparison mechanism.
- The disciplines produce outputs but there's no RECOGNIZER that scans the output for symptom signatures.
- Human reflection exists (`/reflect` command) but isn't connected to the symptom taxonomy.

### The user's stated constraint

- **Higher mind not available.** Meaning-quality comparison across runs (did the new discipline produce DEEPER thinking than the old?) requires a reliability threshold we don't have. Design must work WITHOUT this.
- **Consistent comparison of results not available.** Automated cross-run analysis isn't built. Human-in-loop is acceptable at Level 0-2.
- **The 23 symptoms are the starting point.** Activate what exists before designing new mechanisms.

### The Baldwin trajectory question

Regression detection is the prerequisite for self-modification at scale. Each Baldwin cycle proposes a discipline change; regression detection decides whether to accept or revert. Without it, self-modification can degrade the system silently. With it, the Baldwin cycle has a safety net.

At Level 0-2: human applies symptom taxonomy manually, comparing before/after runs. At Level 3+: system runs the taxonomy automatically. The design must support BOTH — the human-assisted version is what gets built now; the automated version is the evolution target.
