---
status: superseded
superseded_by: importance_measurement_problem
superseded_reason: This finding treated regression as a single-layer problem measurable from output properties. The importance_measurement_problem inquiry revealed value is structurally retrospective — "fewer-but-better" vs "fewer-and-worse" cannot be distinguished at T0 from output properties alone. The architectural frame here is superseded by a two-layer architecture (L1 structural immediate + L2 value delayed). Individual components mostly survive in new positions: spec-diff MVP = L1/DP1 (active), Output-regression = L1/DP2 (scope narrowed), Pipeline-regression = L2/DP3 (PROMOTED to keystone), Experience-regression = KILLED. See devdocs/inquiries/importance_measurement_problem/finding.md
---
# Finding: Regression Detection Design

## Question
How do we build a regression detection mechanism for the thinking system at Level 0-2 (no higher-mind comparison yet), using the 23 symptoms already defined in `devdocs/exploration/regression_symptoms_defined.md` combined with current telemetry + human reflection — so that self-modification can eventually be trusted to proceed without breaking the disciplines?

Goal: A buildable regression detection mechanism that activates the 23 symptoms, works with current capabilities, does NOT require a "higher mind," produces a clear signal, progresses toward Level 3+ autonomy, and can be tested retrospectively on existing inquiry outputs.

## Finding

Regression detection is **four sub-problems** sharing the 23-symptom taxonomy, built in phases, with a defensible rollout strategy and anti-brittle interaction with self-modification. The MVP is **Spec-Regression Detection only** — the cheapest, earliest-warning, most Baldwin-relevant sub-problem.

### The Four Sub-Problems

| Sub-problem | Symptoms | Mechanism | Trigger | Phase |
|---|---|---|---|---|
| **Spec-regression** | 4 (types 20-23) | Git diff vs prior version | Pre-commit on spec change | **Phase 1 (MVP)** |
| **Output-regression** | 10 (types 1-6, 16-19) | Text scan + telemetry field check | At discipline completion or TERMINATE | Phase 2 |
| **Experience-regression** | 5 (types 7-11) | Human prompt | At TERMINATE (optional) | Phase 3 |
| **Pipeline-regression** | 4 (types 12-15) | Cross-discipline telemetry | At next-discipline start | Phase 4 |

### The MVP Design (Phase 1)

**P1 — Symptom Log Schema**

A shared record format that all four detectors write to and the pattern detector / human validation read from.

Required fields:
- `symptom` — name matching the 23-symptom taxonomy (the taxonomy's labels ARE the schema's enum values)
- `type` — output | experience | pipeline | error | spec
- `signal` — evidence that triggered detection (excerpt or reference)
- `severity` — HIGH | MEDIUM | LOW (default per symptom; initial values are CALIBRATION-PENDING, not authoritative)
- `context` — conditions (inquiry folder, discipline, run iteration)
- `inquiry_folder` — path
- `discipline` — which discipline produced the output under scan
- `timestamp` — when detected
- `mode` — observing | active-blocking (which mode the detector is in)
- `change_context` — for spec changes: reason + link to Baldwin cycle if applicable
- `pattern_matches` — list of diagnostic patterns this symptom contributes to

Optional fields:
- `human_validation` — TP | FP | UNKNOWN (3-state at MVP; AGREED_AFTER_REVIEW deferred to Phase 2+)
- `validator_note` — optional reason

Append-only semantics: validations are new records referencing the original, never overwrites.

**Two storage locations:**
- Per-inquiry: `## Symptoms` section in `_state.md` (inquiry-local context)
- Global: `devdocs/regression_log.md` (append-only, cross-run aggregation, with human-validation field accumulating calibration data)

**P2 — Spec-Regression Detector**

Reads a changed spec file and its git HEAD~1 version. Detects:
- **Type 20 (shorter than before)**: net line loss above threshold (initial: 20%) OR any section removed
- **Type 21 (missing sections)**: header extraction HEAD~1 vs HEAD; sections present in HEAD~1 but absent in HEAD
- **Type 22 (weakened language)**: word-pair replacement list (MUST→should, required→recommended, always→usually, shall→may, exclusively→primarily, ...)
- **Type 23 (removed safeguards)**: safeguard term list (prosecution, defense, failure modes, adversarial, telemetry, ...) present in HEAD~1 but absent in HEAD

Detector respects:
- **Mode**: in observing mode, logs only — alerts visibly marked `[SANDBOX]`. In active-blocking mode, can block commits.
- **Override annotations**: if the change carries an override with REQUIRED JUSTIFICATION (e.g., in commit message: `regression-detection: override — reason: MUST softened per Baldwin cycle abc123`), detector logs the override decision but does not alert the underlying symptom. Override log becomes a future audit target.

Default severities (initial proposals, calibration-pending):
- Type 23 (removed safeguards): HIGH
- Types 20-22 (shorter, missing sections, weakened language): MEDIUM

**P3 — Pattern Detector (minimal)**

Reads the symptom log; detects diagnostic patterns. At MVP, one pattern:

- **Spec Degradation** — all 4 spec symptoms fire AND no override annotation is present. This combination IS the regression signature. Without the "no override" condition, the pattern fires on legitimate rewrites — hence the tight coupling between pattern and override mechanism.

The 5 original patterns (Surface Run, Confirmation Bias, Introduced Error, Pipeline Degradation, Slow Drift) remain in the registry but aren't active at MVP (they need Phase 2-4 detectors to populate their constituent symptoms).

**P4 — Human Validation**

Design constraint: **single-action per flagged symptom**. Validation must not be multi-step. High friction = no data = no calibration path to Level 3+.

Validation states at MVP: **TP | FP | UNKNOWN**. The 4th state `AGREED_AFTER_REVIEW` (captures cases where the human didn't initially notice but agrees after review) is deferred to Phase 2+ when calibration data volume justifies finer distinctions.

Append-only: a validation record references the original symptom record; original is never edited.

**P8 — Integration**

MVP integration is MANUAL invocation — no MVL/MVL+ spec modifications. User runs the detector before committing a spec change.

Post-detection workflow:
1. Detector fires → writes symptom record(s)
2. Pattern detector reads → emits pattern match if applicable
3. Alert issued to human (severity determines prominence; sandbox-mode alerts VISIBLY MARKED)
4. Human decides: ignore | investigate | revert | override (with justification) | validate (TP/FP/UNKNOWN)

Mode transitions (observing → active-blocking) are explicit decisions logged as meta-records in `regression_log.md`.

**P9 — Retrospective Testing**

Use the ~20 existing completed inquiry folders as test corpus. For each spec-file commit in git history:
1. Run P2 on the historical diff
2. Manual review: was this commit actually a regression per the 4 spec symptoms?
3. Compute: TP rate, FP rate, FN rate
4. Target at MVP: FP rate < 20% (adjustable)
5. Refine thresholds / word lists based on results BEFORE declaring MVP ready for active use

This gives immediate calibration data without waiting for new runs.

### Deferred to Phase 2+

- **P5 (Output-Regression Detector)** — text scan + telemetry field check on 10 symptoms
- **P6 (Experience-Regression Detector)** — human prompt at TERMINATE for 5 symptoms
- **P7 (Pipeline-Regression Detector)** — cross-discipline telemetry for 4 symptoms
- **Regression review rhythm** — periodic SIC on accumulated log (catches Slow Drift; audits override usage)
- **AGREED_AFTER_REVIEW state** — when data volume justifies 4-state validation
- **Positive framing** — reframe symptoms as absence of quality during next taxonomy revision

### Ordering

MVP critical path:
```
P1 (Schema) → P2 (Spec Detector) → P8 (manual integration) →
P9 (Retro Test on corpus) → P4 (Validation, optional) → P3 (Pattern, minimal)
```

Parallel opportunities:
- P1 schema design + P2 detection rule design in parallel once fields agreed
- P9 test cases specifiable before P2 implementation

## Reasoning

**Why "regression detection is 4 sub-problems, not one":** Exploration mapped the 23 symptoms across 5 types with different detection mechanisms (git-diff / text-scan / telemetry-check / human-prompt). Sensemaking resolved that these are ONE umbrella with FOUR substrates. Each substrate has different triggers, different mechanisms, different symptoms. Building one monolithic detector would force the mechanisms to share infrastructure that doesn't actually fit. Decomposition confirmed the 4-way split matches natural coupling valleys.

**Why start with Spec-Regression (MVP):** Four reasons converge:
1. CHEAPEST — git-diff is script-sized; 4 symptoms is a bounded set
2. EARLIEST WARNING — catches regression BEFORE any discipline runs
3. MOST BALDWIN-RELEVANT — spec changes are the primary self-modification act; detection here is the actual safety net for the Baldwin trajectory
4. MOST TESTABLE — ~20 existing inquiry folders have git-tracked spec changes; retrospective corpus is immediately available

Innovation's "retrospective corpus from existing inquiry folders" (Innovation 1) converged with this to become the MVP validation strategy.

**Why two-tier signaling (silent log + pattern alert):** Individual symptom detection has HIGH BASE RATE — firing on every instance creates noise. Patterns (combinations of 2-3 symptoms) have MUCH LOWER base rate — firing is meaningful signal. Log everything to build data; alert only on patterns. Critique confirmed via the warning-fatigue concern: noisy alerts train humans to ignore them.

**Why override mechanism with required justification is CRITICAL:** Without it, regression detection BECOMES AN OBSTACLE to legitimate Baldwin cycles. When Baldwin proposes a spec change that intentionally softens an over-strict MUST (because the constraint was wrong), the detector fires. If there's no override path, the Baldwin cycle is blocked by false positive. This inverts the purpose of the detector — it's supposed to enable safe self-modification, not prevent it.

Critique raised the "crutch use" concern (override as silence button). Defense: required justification is the guard. The override log becomes a periodic review target (Phase 2+ regression review rhythm). The mechanism generates its own abuse-detection signal.

**Why sandbox mode (observing → active-blocking):** The MVP ships into an uncalibrated environment. Thresholds are guesses. Severities are proposals. False positives are likely. Running in active-blocking mode from day 1 risks immediate work stoppage from FP. Sandbox mode lets the detector run purely observationally — log everything, block nothing. Accumulate FP data, recalibrate, THEN decide if/when to activate blocking.

Critique raised warning fatigue (human habituates to ignored alerts). Mitigation: sandbox-mode alerts must be VISIBLY MARKED (prefix, color, channel) so the mode transition is noticeable. Mode transitions are explicit decisions documented as meta-records.

**Why Spec Degradation pattern is tightly coupled to override mechanism:** A legitimate rewrite (redundancy removed, sections renamed, over-constraints calibrated, safeguards refactored) can trigger ALL 4 spec symptoms simultaneously. Without the override mechanism, the Spec Degradation pattern has unacceptable FP rate on major rewrites. WITH it, the pattern fires on "all 4 symptoms AND no override" — the absence of justification is what distinguishes degradation from legitimate rewrite. Innovations 4 and 8 are a matched pair; neither works without the other.

**Why severities are calibration-pending:** Initial severity assignments (Type 23 = HIGH, Types 20-22 = MEDIUM) are INVENTED — the symptoms doc doesn't specify severity. They're proposals, not authoritative values. Over time, human validation reveals patterns: "Type 22 is almost always FP at current threshold → lower severity OR tighten threshold." Documenting severities as calibration-pending prevents them from being treated as ground truth.

**Why AGREED_AFTER_REVIEW is deferred:** The 4th validation state captures "human didn't initially notice; detection caught it." Critique argued it's premature complexity at MVP volume — at 10s of records, the distinction between TP and AGREED_AFTER_REVIEW is noise. At 100s of records, learning-direction patterns emerge and the distinction becomes meaningful. Defer until volume justifies.

**Why human validation must be single-action:** If validating is multi-step (click here, confirm there, write a note, submit), humans skip it. Without validation, no calibration data. Without calibration data, no path to Level 3+ autonomy. The design constraint is binding: one action per flagged symptom.

**Why MVP uses MANUAL integration (not MVL/MVL+ spec modification):** User constraint from prior inquiry: regression protection. Modifying MVL/MVL+ spec to hook in detection could introduce bugs or unexpected interactions. Manual invocation keeps MVL/MVL+ unchanged. Integration can be formalized later when the MVP is proven.

**What was considered and killed:**
- **Pattern-only detection (no individual symptom logs)** — destroys training data. Individual symptoms log silently TO build the data that pattern detection needs.
- **Reusing telemetry blocks as the symptom schema** — conflates self-report with external check. Telemetry IS what the discipline claims about itself; symptom detection is what an external scanner observes. Different epistemic status, must stay separate.
- **Starting with 1-2 spec symptoms instead of all 4** — doesn't reduce implementation cost meaningfully (all 4 share the git-diff tooling) but reduces coverage.
- **Zero-prior-calibration constraint** — redundant with the MVP's existing design.
- **Differential diagnosis across patterns** — overkill at MVP (only 1 pattern active). Phase 2+ concern.
- **Future-detector lens for schema design** — already implicit in P1's design (fields are extensible).
- **Schema-in-_state.md-only** — already covered in decomposition (per-inquiry + global dual-storage).
- **Git hook specifics** — implementation detail of P8, not architectural innovation.
- **100-run extrapolation** — principle confirmation only.
- **Self-applying detection at Level 4+** — philosophical frontier, no build implication for MVP.

## Open Questions

- **Threshold calibration** — Initial values (20% line loss threshold; specific weakening word pairs; specific safeguard terms) are starting points. Retrospective testing (P9) will reveal FP rates and suggest adjustments. The adjustment process itself is a mini-Baldwin cycle.

- **When to graduate from observing to active-blocking** — criterion not specified. Candidate: after N runs with FP rate consistently below threshold AND human validation confirming the detections are actionable. Concrete N and threshold TBD.

- **Override audit mechanism** — Phase 2+ regression review rhythm will audit override usage. Specifics (how often, what triggers, how audit results feed back) to be designed when Phase 2 begins.

- **Weakening word list completeness** — the initial list (MUST→should, required→recommended, always→usually, shall→may, exclusively→primarily) is not exhaustive. More pairs will emerge from practice. Plan: add to the list as new patterns are detected during retrospective testing.

- **Safeguard term list completeness** — similar. Initial list (prosecution, defense, failure modes, adversarial, telemetry) reflects current spec vocabulary. As specs evolve, this list needs updating.

- **Interaction with Phase 2 when it ships** — output-regression detector (P5) will share the symptom log schema (P1) and pattern detector infrastructure (P3). Specific interfaces will be clarified when P5 is designed.

- **Cross-run pattern detection (Slow Drift)** — deferred to Phase 2+ regression review rhythm. Requires accumulated log data. Design specifics for cross-run aggregation TBD.

- **Experience symptom reliability** — Phase 3 concern. How to handle inconsistent human self-reports? Cross-check against output symptoms? Statistical calibration across humans? Not yet designed.

- **Pipeline symptom detection mechanics** — Phase 4 concern. How to detect "downstream rejection" programmatically? Scan the next discipline's output for rejection language? Telemetry signal? Not yet designed.

- **Integration with finding.md when Baldwin cycles complete** — when a Baldwin cycle produces a spec change, how does the finding.md link to the regression detection results? Possible addition: finding.md's Reasoning section includes regression detection output as part of the argument. TBD.
