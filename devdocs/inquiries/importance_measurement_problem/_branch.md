# Branch: The Importance-Measurement Problem

## Question
How can regression in cognitive output be measured, given that VALUE/IMPORTANCE of findings is only knowable retrospectively through downstream use, and therefore "fewer but more important" outputs are structurally indistinguishable from "fewer and worse" outputs at the moment they are produced?

## Goal
A honest structural model of regression-detection's fundamental limits, plus a design for what CAN be detected immediately vs what requires temporal observation. The user should walk away with:
1. A clear distinction between regression-types that are IMMEDIATELY detectable (structural) vs those that are RETROSPECTIVELY detectable (value-based)
2. A mechanism for the retrospective kind — how downstream use creates the signal that's missing in real-time
3. An honest assessment of which regression-detection goals are achievable at Level 0-2 and which require infrastructure we don't have
4. If applicable, a revision to (or supersession of) the `regression_detection_design` finding — which proposed a detector that can only catch structural regression, not the "fewer-but-better vs fewer-and-worse" case

## Scope Check
Question covers goal: YES — the question names the structural problem; the goal asks for structural model, mechanism for retrospective detection, honest assessment of limits, and implications for prior finding.

## Context — the user's critique verbatim

> "a new update to a discipline can produce less but more important answers... this is regression? no.. but bc without knowing how important a finding is immediately we cant measure regression. this is the main issue we have."

### Why this critique lands

The prior finding (`regression_detection_design`) assumes regression can be detected from the output itself — through spec symptoms (missing sections, weakened language, removed safeguards) or output symptoms (thin frontier, no surprise, etc.). But all those symptoms are OBSERVABLE PROPERTIES OF THE OUTPUT.

The user's case: a new spec produces an output that has fewer frontier questions, shorter length, fewer enumerated cases — BUT those fewer items are more important, more load-bearing, more predictive. The observable properties all say "regression" (thin frontier, shortened output). But the output is BETTER.

The detector would fire a false positive. And no amount of calibration on observable properties can fix this — because the relevant signal (importance of each item) isn't observable at the moment of output production.

### The deeper structure

**Value is retrospective.** A finding's importance is only knowable through:
- Whether downstream disciplines consume it meaningfully
- Whether it proves predictive later
- Whether it gets built upon vs ignored
- Whether reality confirms it vs contradicts it

None of these are available at the moment the finding is produced.

**Therefore:** real-time regression detection can only catch STRUCTURAL regression (missing sections, broken format, internal contradiction), not VALUE regression (missing important insights). Value regression requires temporal observation.

### What this means for the prior finding

The `regression_detection_design` finding (iteration 1) proposed:
- Spec-regression detector (git diff on spec changes — STRUCTURAL, OK)
- Output-regression detector (text scan + telemetry — PARTIALLY STRUCTURAL, partially subjective)
- Experience-regression detector (human prompt — SUBJECTIVE human judgment at production time)
- Pipeline-regression detector (cross-discipline telemetry — DOWNSTREAM, closer to value signal)

Of these four, only the PIPELINE detector actually observes what the user is pointing at: "did the next discipline find the prior output useful?" That's a value signal, available immediately (the next discipline runs right after).

The other three try to measure value from output properties, which this critique shows is fundamentally limited.

### Related prior context

- `devdocs/exploration/regression_symptoms_defined.md` — the 23-symptom taxonomy used in prior finding
- `devdocs/inquiries/regression_detection_design/finding.md` — the prior MVP design (to be revised or superseded)
- `devdocs/inquiries/autonomous_consciousness_goal/finding.md` — the end-goal that names regression detection as "the immediate next buildable step"; this critique may reshape what "buildable" means

### The user's "main issue" claim

They named this "the main issue we have" — not "an issue" but THE issue. That's a strong flag that we may have been attacking the wrong level of the problem in the prior inquiry. This inquiry should treat the critique as potentially superseding the prior approach, not just refining it.
