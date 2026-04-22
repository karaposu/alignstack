# Sensemaking: The Importance-Measurement Problem

## User Input
devdocs/inquiries/importance_measurement_problem/_branch.md

---

## SV6 — Stabilized Model

**Regression detection has a fundamental temporal structure: structural regressions are immediately detectable; value regressions are only detectable retrospectively through downstream signals. The system needs TWO LAYERS with different update cadences — and most of Layer 2's substrate already exists in telemetry and `_state.md` relationships.**

### The Two Layers

| Layer | Cadence | Detects | Source |
|---|---|---|---|
| **L1 — Structural** | Immediate (T0) | Format issues, contradictions, removed safeguards, missing sections | Git diff, text scan, telemetry field parse |
| **L2 — Value** | Delayed (T0+ to T4) | Output less useful than prior versions | Existing telemetry (re-interpreted) + `_state.md` relationships |

### The 6 Detection Points

| # | Point | Time | Signal source | Buildable now? |
|---|---|---|---|---|
| 1 | Spec-structural | T0 | Git diff on spec files | Yes (prior MVP) |
| 2 | Output-structural | T0 | Text scan + telemetry field parse | Yes (partial prior work) |
| 3 | Pipeline-value | T0+ | Next discipline's telemetry | Yes (existing data, new rules) |
| 4 | Cycle-value | T1 | Critique's clean SURVIVE | Yes (already in critique output) |
| 5 | Cross-cycle-value | T2+ | `_state.md` relationship graph | Yes (auto-graph from existing annotations) |
| 6 | Durability-value | T4 | SUPERSEDED BY tracking | Yes (existing annotation, aggregate) |
| 7 | Implementation-value | T3 | Finding → commit linkage | **DEFERRED** (needs new infrastructure) |

### The "Fewer But Better" Case Resolution

When a spec change produces fewer output items:
- L1 detects: fewer items (structural signal)
- L2 at T0+ asks: did the next discipline successfully synthesize from these fewer items?
  - Rich downstream output, high mechanism coverage → fewer-but-better confirmed
  - Thin downstream output, low convergence → fewer-and-worse confirmed
- L2 at T2+ confirms: is this finding cited, built on, or ignored/superseded?

The T0+ signal catches most cases; T2+ is delayed confirmation.

### How the Prior Finding Integrates

The prior finding (`regression_detection_design`) is **RELABELED, not superseded**:

- MVP (spec-diff checker) = Layer 1 / Detection Point 1 (Spec-structural)
- Output-regression = Layer 1 / Detection Point 2 (Output-structural) — contradiction/missing-section parts
- Pipeline-regression = Layer 2 / Detection Point 3 (Pipeline-value) — **PROMOTED** to keystone
- Experience-regression = **KILLED** (can't detect importance via real-time human judgment)

Action: add scope-clarification caveat to prior finding's `finding.md`; spec-diff MVP stays active as L1.

### Baldwin Connection

**Layer 2 IS the Baldwin feedback loop.** Spec changes produce outputs; outputs accumulate value signals over time; signals inform whether the spec change improved or regressed. This is how the system eventually self-improves reliably — not by real-time judgment of each change, but by accumulated downstream validation. Layer 2 is the bridge from Level 0-2 to Level 3+.

### What Changes for the MVP

- **L1 MVP**: spec-diff checker (as before) + output-structural checker (partial)
- **L2 MVP**: 4 signal readers from existing data (pipeline, cycle, cross-cycle, durability)
- All 6 readable signals in one integrated report, tagged by detection point and time horizon

### How SV6 Differs from SV1

SV1 framed this as "subjective metrics won't work." SV6 reveals the critique is deeper: value is retrospective in ALL cognitive-quality domains. The correct response isn't better real-time metrics — it's accepting the temporal structure and building a 2-layer architecture. Most of Layer 2 is already possible from existing infrastructure. The prior finding isn't wrong; it's one layer of a two-layer architecture that was mis-framed as the whole thing.

---

## Key Insights

- **I1**: Value is retrospective in ALL cognitive-quality domains (structural property of cognitive work)
- **I2**: Value signals distributed across TIME HORIZONS (T0 → T4)
- **I3**: Real-time detection is STRUCTURAL ONLY; value detection is TEMPORAL
- **I4**: Pipeline consumption (T0+) is the earliest value signal
- **I6**: Existing telemetry already carries the signal — missing INTERPRETATION, not collection
- **I9**: Some regression types are structurally undetectable in real-time; accept this
- **I10**: Prior finding wasn't wrong, just mis-framed (its MVP is Layer 1)
- **I11**: Layer 2 IS the Baldwin feedback loop
- **I15**: Layer 2 is the bridge from Level 0-2 to Level 3+ autonomy
- **I17**: 5 of 6 L2 signals are immediately buildable from existing data

## Ambiguity Resolutions

1. Relabel or supersede prior finding? → **RELABEL**. Prior MVP = Layer 1. **HIGH**
2. What does "detect" mean for value regression? → **Retrospective aggregation**, not real-time alert. **HIGH**
3. What's "importance" operationally? → **Downstream use** (cited, built-on, implemented, not-superseded). **HIGH**
4. What's buildable now vs deferred? → **5/6 L2 signals now, 1 deferred (implementation T3)**. **HIGH**
5. What happens to prior 4 sub-problems? → Reorganize as 6 detection points × 2 layers; kill Experience-regression. **HIGH**

## Saturation Indicators

- **Perspectives**: 6/6 produced new anchors
- **Ambiguity**: 5/5 HIGH
- **SV delta**: Very significant — from "subjective metrics fail" to "two-layer architecture with 6 detection points"
- **Anchor diversity**: C(7), I(17), SP(5), FP(5), MN(5). Rich and multi-type.
