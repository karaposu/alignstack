# Innovation: The Importance-Measurement Problem

## User Input
devdocs/inquiries/importance_measurement_problem/

---

## Seed

Build 2-layer regression detection: L1 (immediate structural) + L2 (delayed value). MVP focuses on P1 (schema), P4 (pipeline-value keystone), plus infrastructure. What sharpens this design?

---

## Key Innovations

### 1. Positive framing / Popperian falsification (3a + 3b) — PRIMARY REFRAME

Reverse the default: NOT "alert on regression" but "accumulate positive signals; alert on absence of expected positives." Every spec change is a HYPOTHESIS. Detector tracks whether predicted value signals manifest. Matches how mature cognitive-quality fields (science) actually work. Baldwin-cycle-positive by default. Quieter system with less alert fatigue.

**Convergence: 2 mechanisms** (both Inversion variants). Foundational reframe.

### 2. Baldwin-change-as-hypothesis (2c)

Co-design detection + Baldwin. Every Baldwin proposal specifies "predicted value signals after this change." Detector checks whether predictions match reality. This reframes detection from symptom-chasing to hypothesis-testing.

### 3. Probabilistic signals with sensitivity/specificity (6a + 1a merged)

Each signal reported with sensitivity and specificity (from P12 validation). Report treats signals as probabilistic, not binary — like medical screening tests. Detector is a scientific instrument with published accuracy claims.

### 4. Multi-source evidence for value alerts (4c + 6c)

Value signals (L2) require MULTIPLE CONVERGING OBSERVATIONS to alert. Single-source value signal logs silently; multi-source fires alert. L1 structural still fires per-event. This resolves the noise problem cleanly — L1 catches events, L2 catches patterns.

### 5. P4 reads failure-modes field (2b)

Each discipline's telemetry has "Failure modes observed: none / list." A downstream failure-mode report IS a direct value signal on upstream. P4 reads this field as one of its inputs. Free signal from existing convention.

### 6. Postmortem learning loop (6b)

When a regression is confirmed, conduct postmortem (SRE pattern). Output feeds detector refinement — threshold adjustments, new signals, retired signals. Learning loop on the detection system itself.

### 7. "Insufficient data" state (5b)

Value-state enum: POSITIVE | NEGATIVE | **INSUFFICIENT_DATA**. Prevents false negatives when telemetry is missing/corrupted. Signal absence ≠ signal negative.

### 8. Skip spec-version tagging for initial aggregation (4b)

P9 (aggregator) can ship WITHOUT P8 (spec-version tagging). Aggregate by inquiry-folder + timestamp first. Add per-version queries when P8 ships in Phase 3. Earlier shipment.

### 9. Baldwin cycle rate scope gate (1c)

Before heavy investment, reality-check: at what rate do we expect Baldwin cycles? If < N/month, defer deeper infrastructure. Prevents over-investment when detection's value is proportional to use.

### 10. Auto-graph from existing relationships (2a)

`_state.md` relationships ALREADY ARE the cross-cycle graph implicitly. Auto-generate via traversal; no new storage. Confirms existing design choice.

---

## Assembly

```
REFINED MVP (Popperian + scientific):

CORE REFRAME:
  Not "alert on regression symptoms"
  Instead: "accumulate positive signals; alert on absence of expected positives"
  Every spec change is a HYPOTHESIS with predicted value signals.
  Detector tracks whether predictions match reality.

P1 (Schema) — enriched:
  - All existing fields
  - value_state: POSITIVE | NEGATIVE | INSUFFICIENT_DATA
  - signal_reliability: sensitivity + specificity (from P12)
  - baldwin_hypothesis: reference to predicted signals (when applicable)

P4 (Pipeline-value reader) — enriched:
  - Reads next discipline's failure-modes field (free signal)
  - Multi-source rule: single signal never alerts
  - Per-pair interpretation rules with probabilistic claims

P9 (Signal Aggregator):
  - Ship WITHOUT P8 first — aggregate by inquiry-folder + timestamp
  - Add per-version queries when P8 ships

Baldwin integration (NEW):
  - Baldwin proposals include predicted signals
  - Detector checks predictions vs reality
  - Match = confirmation, mismatch = investigate

Postmortem loop (NEW):
  - Confirmed regression → postmortem → detector refinement
  - Learning loop on the detection system itself

SCOPE GATE:
  Reality-check Baldwin cycle rate before heavy investment.
```

**Emergent value:** The detection system STOPS being paranoid and BECOMES scientific. Not looking for problems — tracking whether hypotheses hold. This matches mature cognitive-quality fields (science), reduces alert fatigue, integrates cleanly with Baldwin, produces honest probabilistic reports, has a built-in learning loop.

---

## Verdicts

### SURVIVE (MVP)
- **Positive framing / Popperian falsification** — primary reframe
- **Baldwin-change-as-hypothesis**
- **Probabilistic signals with sensitivity/specificity**
- **Multi-source evidence for value alerts**
- **P4 reads failure-modes field**
- **Postmortem learning loop**
- **"Insufficient data" state**
- **Skip spec-version tagging for initial aggregation**
- **Baldwin rate scope gate**
- **Auto-graph from relationships**

### REFINE (deferred)
- **At-1000-records scaling** — consider when log grows
- **Schema-evolution feedback loop** — Phase 3+

### KILL
- **Detector validates human** — Level 3+ concern
- **Human-state proxy** — invasive, too granular
- **1000-record / Baldwin-at-1/week extrapolations** — principle only
- **Self-referential detection at Level 4+** — philosophical frontier

---

## Mechanism Coverage
- **Generators:** 4/4. **Framers:** 3/3.
- **Convergence:** YES — 2+ mechanisms converge on Popperian/positive-framing reframe
- **Survivors:** 10 MVP + 2 deferred / 5 killed
- **Assembly:** YES — fundamentally reframed MVP (scientific instrument + hypothesis-testing)
- **Overall: PROCEED**
