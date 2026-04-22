# Sensemaking: Regression Detection Design

## User Input
devdocs/inquiries/regression_detection_design/_branch.md

---

## SV6 — Stabilized Model

**Regression detection is 4 sub-problems sharing the 23-symptom taxonomy. Build phased, starting with the cheapest + earliest-warning (spec diff). Alert on diagnostic patterns, log individual symptoms silently. Human validation accumulates calibration data for future autonomy.**

### The Four Sub-Problems

| Sub-problem | Symptoms | Mechanism | Trigger | Build phase |
|---|---|---|---|---|
| **Spec-regression** | 4 (types 20-23) | Git diff vs prior version | Pre-commit on spec change | **Phase 1 (MVP)** |
| **Output-regression** | 10 (types 1-6, 16-19) | Text scan + telemetry field check | At discipline completion or TERMINATE | Phase 2 |
| **Experience-regression** | 5 (types 7-11) | Human prompt | At TERMINATE (optional) | Phase 3 |
| **Pipeline-regression** | 4 (types 12-15) | Cross-discipline telemetry check | At next discipline start | Phase 4 |

### Two-Tier Signaling

- **Log (silent)**: every detected symptom → `_state.md` symptom section + `devdocs/regression_log.md`
- **Alert (surfaced)**: only diagnostic patterns (Surface Run, Confirmation Bias, Introduced Error, Pipeline Degradation, Slow Drift)

Individual symptoms have high base rates → silent logging prevents noise.
Patterns have low base rates → alerts are meaningful.

### Storage

| Location | Purpose |
|---|---|
| `_state.md` `## Symptoms` section | Per-inquiry context |
| `devdocs/regression_log.md` | Global cross-run aggregation (append-only, with human-validation field) |

### Detection Timeline Integration

```
EARLIEST (pre-run):  Spec-regression detector   → git diff check
DURING (discipline): (not yet — Level 3+)
AFTER (post-run):    Output-regression detector → text scan + telemetry
DOWNSTREAM:          Pipeline-regression        → next discipline's telemetry
ACROSS (multi-run):  Slow drift detector        → aggregate log analysis (Phase 5+)
```

### MVP Scope (Phase 1)

**Build:** Spec-regression detector only.

**What it is:** A script or prompt that, given a changed spec file, compares it to git HEAD~1 and flags:
- Type 20 (shorter than before): net line loss above threshold
- Type 21 (missing sections): headers disappeared
- Type 22 (weakened language): MUST→should, required→recommended, always→usually, shall→may
- Type 23 (removed safeguards): adversarial requirements (prosecution, defense, failure modes) disappeared

**Output:** Regression report. Any single symptom → alert (spec changes are stakes-high). All 4 → "Spec Degradation" pattern, strong alert.

**Not in MVP:** automated blocking, auto-revert, integration into MVL/MVL+ spec, output/experience/pipeline sub-problems.

### How SV6 Differs from SV1

SV1 framed this as ONE detection mechanism problem. SV6 reveals it's FOUR linked sub-problems sharing the symptom taxonomy. Phased-build strategy. Two-tier signaling resolves noise. Storage split resolves per-inquiry vs cross-run tension. MVP is tiny (spec-diff-checker, 4 symptoms) but shippable and valuable.

---

## Key Insights

- **I1**: Symptoms are conceptual; need operational rules
- **I2**: Diagnostic patterns > individual symptoms for alert reliability
- **I4**: Spec symptoms are earliest + cheapest — highest ROI entry
- **I5**: External check > self-report (output symptoms)
- **I11**: 23 symptoms → 4 detection mechanisms (clean decomposition)
- **I13**: Human validation at Level 0-2 IS the calibration data for Level 3+
- **I14**: Alert only on patterns to avoid false-positive flood
- **I15**: Phased build (spec → output → experience → pipeline)
- **I16**: "Regression detection" is an umbrella of 4 distinct sub-problems

## Ambiguity Resolutions

1. What "regression detection" means → 4 sub-problems. **HIGH**
2. Individual vs pattern alerts → silent individual, alert-pattern. **HIGH**
3. Storage → per-inquiry + global log. **HIGH**
4. Trigger timing → sub-problem-specific. **HIGH**
5. Build order → spec → output → experience → pipeline. **HIGH**

## Saturation Indicators

- **Perspectives**: 6/6 produced new anchors
- **Ambiguity**: 5/5 HIGH
- **SV delta**: Significant — from monolith to 4 sub-problems with phased build
- **Anchor diversity**: C(7), I(16), SP(5), FP(4), MN(4). Multi-type.
