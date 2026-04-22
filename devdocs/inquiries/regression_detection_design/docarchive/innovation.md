# Innovation: Regression Detection Design

## User Input
devdocs/inquiries/regression_detection_design/

---

## Seed

Innovation focuses on MVP pieces (P1 schema, P2 spec detector, P3 pattern detector minimal, P4 validation, P9 retrospective test). What sharpens the MVP design, what's structurally missing, what framings improve it?

---

## Key Innovations

### 1. Retrospective corpus = existing inquiry folders (2c)
20+ completed inquiry folders already exist. Run P2 (spec detector) retrospectively on their git history. Instant calibration data without waiting for new runs. **Convergence: 1 mechanism; novelty HIGH.**

### 2. Detection teaches human — `AGREED_AFTER_REVIEW` validation state (3c)
Flip assumed authority. Sometimes detection catches what human missed. Validation state set: TP | FP | UNKNOWN | DEFER | **AGREED_AFTER_REVIEW**. Enriches calibration; symmetric learning.

### 3. Sandbox mode (4c)
First N invocations (e.g., N=10) run PURELY OBSERVATIONALLY. Log everything, block nothing. Then review logs, recalibrate, THEN activate blocking. `mode: observing | active-blocking` field. De-risks rollout.

### 4. Spec Degradation pattern formalization (5a)
The 5 original patterns don't include spec symptoms. Formalize the 6th pattern: Spec Degradation = all 4 spec symptoms fire. Add to pattern registry.

### 5. Post-detection workflow specification (5b)
Decomposition covered DETECTION; workflow after firing is implied not specified. Sequence: Detector fires → Pattern match → Alert (per severity) → Human decides (ignore | investigate | revert | override | validate).

### 6. Regression review rhythm (5c) — Phase 2+
Adapts `improvement_rhythm` template: periodic SIC on accumulated regression log (not just per-change detection). Catches Slow Drift that single-run detection misses. Defer from MVP.

### 7. Severity triage per symptom (6a)
Not all symptoms equal. Type 23 (removed safeguards) is HIGH; types 20-22 are MEDIUM. `severity` field in schema. Organizes alert priority.

### 8. Override mechanism with required justification (6b) — CRITICAL
Linter-style overrides for intentional changes. When Baldwin cycle intentionally weakens language (old constraint was too strict), detection fires. Override annotation: "regression-detection: override — reason: MUST softened per Baldwin cycle abc123." Without this, false positives flood and block legitimate self-modification.

### 9. Change context field (7b) — merged with Innovation 8
`change_context` field captures reason for change + Baldwin cycle link. Detector reads context to distinguish "intentional improvement weakening" from "regression weakening."

### 10. Low-friction validation (1b) — design constraint
P4 validation must be ONE ACTION per flagged symptom. If validating is multi-step, humans skip, calibration data doesn't accumulate.

---

## Assembly

```
REFINED MVP DESIGN

P1 (Schema) — enriched fields:
  - severity (Innovation 7)
  - mode: observing | active-blocking (Innovation 3)
  - change_context (Innovations 8+9 merged)
  - validation state: TP | FP | UNKNOWN | DEFER | AGREED_AFTER_REVIEW (Innovation 2)

P2 (Spec Detector):
  - Override mechanism with required justification (Innovation 8)
  - Respects mode (observing vs active-blocking)
  - Default severities (23: HIGH; 20-22: MEDIUM)

P3 (Pattern Detector) — MVP:
  - Spec Degradation pattern formally added to registry (Innovation 4)

P4 (Human Validation):
  - Single-action UX (Innovation 10)
  - AGREED_AFTER_REVIEW state (Innovation 2)

P8 (Integration):
  - Post-detection workflow spec (Innovation 5)

P9 (Retrospective Test):
  - Corpus = existing inquiry folders (Innovation 1)

PHASE 2+ (DEFERRED):
  - Regression review rhythm (Innovation 6)
```

**Emergent value:** Defensible rollout strategy (sandbox + retrospective corpus) + anti-brittle Baldwin interaction (override + change_context) + symmetric learning (AGREED_AFTER_REVIEW). These together prevent the two most likely failure modes: FP flood blocking work, and detection being over-trusted.

---

## Verdicts

### SURVIVE (for MVP)
- Retrospective corpus from existing inquiry folders
- Detection teaches human (`AGREED_AFTER_REVIEW`)
- Sandbox mode (`observing` → `active-blocking`)
- Spec Degradation pattern formalization
- Post-detection workflow spec
- Severity triage per symptom
- Override mechanism with required justification
- Change context field (merged with override)
- Low-friction validation (design constraint)

### SURVIVE (Phase 2+, deferred)
- Regression review rhythm

### REFINE
- Positive framing — apply to symptom naming discipline later

### KILL
- Future-detector lens (already implicit)
- Pattern-only detection (destroys training data)
- Schema + `_state.md` section (already in decomposition)
- Git hook details (P8 detail)
- Telemetry-block-as-schema (conflates self-report with external check)
- Zero-calibration constraint (redundant)
- Start with 1-2 symptoms (below useful MVP)
- Differential diagnosis (MVP overkill; Phase 2+)
- 100-run extrapolation (principle confirmation)
- Self-applying frontier (philosophical, no build implication)

---

## Mechanism Coverage
- **Generators:** 4/4. **Framers:** 3/3.
- **Convergence:** YES — override + change_context + sandbox converge on FP prevention; retrospective corpus + severity + AGREED_AFTER_REVIEW converge on calibration acceleration
- **Survivors:** 9 MVP + 1 Phase 2 + 1 REFINE / 10 killed
- **Assembly:** YES — refined MVP with defensible rollout and anti-brittle Baldwin interaction
- **Overall: PROCEED**
