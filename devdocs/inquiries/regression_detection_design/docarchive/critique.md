# Critique: Regression Detection Design

## User Input
devdocs/inquiries/regression_detection_design/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Activation of unused taxonomy** | CRITICAL | Moves 23 symptoms from "defined" to "used" |
| **Buildability at Level 0-2** | CRITICAL | Script/prompt-level; human-in-loop acceptable |
| **Non-blocking of legitimate work** | CRITICAL | FP rate doesn't block Baldwin cycles or work |
| **Calibration data accumulation** | HIGH | Generates data for Level 3+ autonomy |
| **Phased extensibility** | HIGH | MVP plugs into schema future phases extend |
| **Baldwin compatibility** | HIGH | Detection doesn't obstruct intentional spec evolution |
| **Simplicity / MVP scope** | MEDIUM | Minimum viable; every enrichment justified |

---

## Candidate Verdicts

### Innovation 1: Retrospective corpus
**Prosecution:** Historical commits weren't created with regression detection in mind; may encode wrong baselines.
**Defense:** Corpus is TEST data not TRAINING data. Human validates TP/FP; reveals FP rate, not ground truth.
**Verdict: SURVIVE** — scoped as validation with human judgment.

### Innovation 2: `AGREED_AFTER_REVIEW` validation state
**Prosecution:** Humans unreliable about counterfactual judgment. At MVP volume, the 4th state is noise.
**Defense:** Captures learning direction (detector's value-add beyond human attention).
**Verdict: REFINE** — defer to Phase 2+ when volume justifies. MVP uses 3-state: TP | FP | UNKNOWN.

### Innovation 3: Sandbox mode
**Prosecution:** Warning fatigue — human habituates to ignored alerts, real signals later also ignored.
**Defense:** Sandbox alerts must be VISIBLY MARKED (prefix, color, channel). Mode transitions explicit.
**Verdict: SURVIVE (caveat)** — visible marking required; mode transitions documented.

### Innovation 4: Spec Degradation pattern
**Prosecution:** All-4-symptoms-fire could be combinatorial artifact of legitimate rewrite.
**Defense:** Pattern fires on "all 4 symptoms AND no override" — combination IS the regression signature.
**Verdict: SURVIVE** — tight coupling with Innovation 8 (override mechanism). Matched pair.

### Innovation 5: Post-detection workflow
**Prosecution:** None substantial.
**Defense:** Must-have for P8 completeness.
**Verdict: SURVIVE.**

### Innovation 6: Regression review rhythm (Phase 2+)
**Prosecution:** At MVP with only spec detection, log data is thin.
**Defense:** Correct — Phase 2+ is right timing.
**Verdict: SURVIVE (Phase 2+ confirmed).**

### Innovation 7: Severity triage
**Prosecution:** Initial severities are invented, not empirically grounded.
**Defense:** Initial values are PROPOSALS pending calibration, not authoritative.
**Verdict: SURVIVE (caveat)** — document as calibration-pending.

### Innovation 8: Override mechanism with required justification
**Prosecution:** Overrides become crutches; override-to-legitimate ratio grows over time; detection becomes useless.
**Defense:** Required justification defends against crutch use. Override log becomes periodic review target (ties to Innovation 6).
**Verdict: SURVIVE** — NECESSARY (without it, Baldwin cycles blocked). Crutch risk manageable via review rhythm.

### Innovation 9: Change context field
Merged with Innovation 8. **Verdict: SURVIVE** as part of override mechanism.

### Innovation 10: Low-friction validation (design constraint)
**Prosecution:** Underspecified.
**Defense:** Binding constraint; implementation detail for P4.
**Verdict: SURVIVE (as design constraint).**

### Refined: Positive framing
**Verdict: REFINE (deferred)** — apply during next taxonomy revision, not MVP.

---

## Assembly

The 9 MVP survivors assemble coherently. Each addition addresses a specific failure mode identified by adversarial testing:

- severity → alert flood prevention
- mode → rollout safety (sandbox)
- override+context → Baldwin compatibility (CRITICAL)
- 3-state validation → calibration accumulation
- pattern formalization → registry completeness
- post-detection workflow → P8 completeness
- corpus → cold-start calibration
- single-action UX → validation rate

**Verdict: SURVIVE** — coherent assembly, each component justified, tight coupling (Innovations 4+8) documented explicitly.

---

## The Answer

```
REGRESSION DETECTION MVP DESIGN:

P1 (Schema) — enriched:
  - severity (initial-proposals, calibration-pending)
  - mode (observing | active-blocking; transitions as meta-record)
  - change_context (supports override annotations)
  - validation: TP | FP | UNKNOWN (3-state at MVP)
  
P2 (Spec Detector):
  - 4 detection rules (types 20-23)
  - Respects mode and override annotations
  - Default severities per symptom (calibration-pending)

P3 (Pattern Detector — minimal):
  - Spec Degradation pattern (all 4 symptoms + no override)
  - Matched pair with Innovation 8

P4 (Human Validation):
  - Single-action UX (design constraint)
  - 3-state validation

P8 (Integration):
  - Post-detection workflow
  - Sandbox-mode alerts VISIBLY MARKED
  - Mode transitions logged as meta-records

P9 (Retrospective Test):
  - Corpus: ~20 existing inquiry folders with git-tracked spec changes
  - FP rate < 20% target (adjustable)

PHASE 2+ DEFERRED:
  - Regression review rhythm (override audit + Slow Drift)
  - AGREED_AFTER_REVIEW state (when volume justifies)
  - Positive framing in taxonomy revision
  - P5/P6/P7 (output/experience/pipeline detectors)
```

### Refinements applied:
- AGREED_AFTER_REVIEW deferred to Phase 2+
- Sandbox mode requires visibly marked alerts + documented mode transitions
- Severities labeled as calibration-pending
- Spec Degradation + Override = matched pair (coupling documented)

---

## Convergence Telemetry

* **Dimensions evaluated:** 7/7, all critical covered: YES
* **Adversarial strength:** STRONG — found real failure modes (warning fatigue, combinatorial artifacts, crutch use, unreliable counterfactual). Defense held on essentials, refined on details.
* **Landscape stability:** STABLE — refinements on 3 caveats, no fundamental changes
* **Clean SURVIVE:** YES — assembled MVP survives with bounded caveats
* **Failure modes observed:** none
* **Overall: PROCEED (TERMINATE — ready for finding.md)**
