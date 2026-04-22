# Decomposition: The Importance-Measurement Problem

## User Input
devdocs/inquiries/importance_measurement_problem/_branch.md

Sensemaking's SV6 (2-layer architecture with 6 detection points) is the partition seed.

---

## 1. Coupling Map

```
CLUSTER A: Layer 1 Detectors (immediate, T0)
  ├─ P2: Spec-structural (git diff on specs, inherited from prior finding)
  └─ P3: Output-structural (text scan + telemetry parse)

CLUSTER B: Layer 2 Readers (delayed, T0+ → T4)
  ├─ P4: Pipeline-value (T0+) [KEYSTONE]
  ├─ P5: Cycle-value (T1)
  ├─ P6: Cross-cycle-value (T2+)
  └─ P7: Durability-value (T4)
  [DEFERRED: Implementation-value (T3) — needs finding→commit linkage]

CLUSTER C: Cross-cutting Infrastructure
  ├─ P1: Unified Signal Schema [HUB]
  ├─ P8: Spec-Version Tagging
  ├─ P9: Signal Aggregator
  └─ P10: Integrated Value Report

CLUSTER D: Prior-Finding Integration
  └─ P11: Caveat header + kill Experience-regression

CLUSTER E: Validation
  └─ P12: Retrospective validation + signal calibration

Valleys:
  A ─ B     (cadence: immediate vs delayed)
  (A,B) ─ C (detectors/readers vs infrastructure)
  core ─ D  (core detection vs prior housekeeping)
  core ─ E  (core detection vs validation)

Shared utilities (flagged):
  - Telemetry field parser — used by A (P3) and B (P4, P5, P7)
```

---

## 2. Question Tree (12 pieces)

### Layer 1 — Structural (immediate)

**P1: Unified Signal Schema** (FOUNDATION)
- Required fields: signal_name, layer (L1|L2), detection_point (1-6), time_horizon, evidence, severity, context, inquiry_folder, discipline, timestamp
- Optional: human_validation, spec_version, pattern_matches
- Append-only; supports retroactive records; extends prior finding's P1 schema backward-compatibly

**P2: L1 Spec-Structural Detector** (INHERITED)
- Prior finding's MVP continues to work (git diff, 4 symptoms)
- Emits records in new P1 schema; tagged L1/DP1

**P3: L1 Output-Structural Detector** (PARTIALLY NEW)
- Text scan for internal contradictions (symptom 16)
- Section presence check
- Telemetry block completeness check
- EXCLUDES subjective symptoms (thin frontier, no surprise) — those are L2

### Layer 2 — Value (delayed)

**P4: L2 Pipeline-Value Reader (T0+)** (KEYSTONE)
- Interpretation rules per discipline pair:
  - E → S: map richness → S's SV delta
  - S → I: anchor diversity → I's mechanism coverage
  - I → C: candidate count → C finding substantive survivors
- Signal condition: "downstream telemetry below threshold AND upstream symptoms absent" suggests upstream value regression
- Reads existing telemetry; no new data collection

**P5: L2 Cycle-Value Reader (T1)**
- Clean SURVIVE → positive; all KILLED → negative
- Reads critique's convergence telemetry

**P6: L2 Cross-Cycle-Value Reader (T2+)**
- Auto-graph from `_state.md` relationships (CONTINUES FROM, RELATED, SUPERSEDED BY)
- Cited-by-later signal: finding F in later CONTINUES FROM → positive
- Ignored signal: no references after N weeks → low value
- Periodic aggregation, not per-run

**P7: L2 Durability-Value Reader (T4)**
- Count SUPERSEDED BY per spec-version + time window
- High supersession rate for version X → possible regression
- Periodic aggregation

### Cross-cutting Infrastructure

**P8: Spec-Version Tagging** (PHASE 2+)
- Git commit SHA of spec at run time written to output header or `_state.md` history
- Enables per-version queries in P9
- Additive, does not modify existing discipline commands

**P9: Signal Aggregator** (PHASE 2+)
- Reads global regression log
- Queries: per-spec-version profile, per-discipline density, per-time-window patterns
- Requires P8 for per-version queries
- Output: aggregated summary for P10 and P12

**P10: Integrated Value Report** (PHASE 2+)
- Reports by time horizon and layer
- Combines individual flagged events + aggregated signals
- Distinguishes "confirmed regression" (converging signals) from "suspicion" (single signal)
- Human actions: investigate | override | validate | ignore

### Prior-Finding Integration

**P11: Prior Finding Integration**
- Caveat header on prior `finding.md` clarifying Layer 1 scope
- Experience-regression formally marked killed (reasoning link to this inquiry)
- Status: prior stays `active`, scope narrowed
- Relationship annotation added

### Validation

**P12: Retrospective Validation & Signal Calibration**
- Corpus: ~20 existing inquiry folders (carries over from prior finding)
- Run L1 detectors + simulate L2 readers on existing outputs
- Human judgment: which findings are actually valuable?
- Compare: do L2 signals correlate with human judgment?
- Refine rules; signal accepted as reliable when agreement > threshold

---

## 3. Interface Map

| Source | Target | What flows | Direction |
|---|---|---|---|
| P2, P3 (L1) | P1 (schema) | Signal records | Write |
| P4-P7 (L2) | P1 (schema) | Signal records | Write |
| P1 | P9 (aggregator) | Signal records | Read |
| P8 | All detectors/readers | Spec version info | Input |
| P9 | P10 (report), P12 (validation) | Aggregated signals | Read |
| P10 | Human | Combined report | Notify |
| P2 | Prior finding work | Inherited implementation | Prerequisite |
| P11 | Prior finding files | Caveat edit | Write |
| L2 readers | Existing discipline outputs | Read telemetry | Read |
| P6, P7 | `_state.md` across inquiries | Read relationships | Read |

### Hidden interfaces (external format dependencies)

- Signal record format stability (P1)
- Telemetry block format stability (shared by A and B)
- `_state.md` format stability (P6, P7)

These are dependencies on EXISTING system conventions. Changes propagate downstream.

---

## 4. Dependency Order

```
MVP Phase 1 (ship together):
  P1 (schema)
    ├→ P2 (L1 spec, carries from prior)
    ├→ P3 (L1 output-structural)
    └→ P4 (L2 pipeline, keystone)
  P11 (prior integration) — parallel, independent

MVP Phase 2 (L2 expansion):
  P5 (cycle-value) // P6 (cross-cycle) // P7 (durability)
    — all parallel once P1 stable

Infrastructure Phase 3:
  P8 (spec tagging) → P9 (aggregator) → P10 (report)

Validation:
  P12 — anytime after P2-P7 exist

Deferred:
  L2 Implementation-value (T3) — requires new infrastructure
```

No circular dependencies.

---

## 5. Self-Evaluation

| Dimension | Result | Notes |
|---|---|---|
| **Independence** | PASS | Each piece has clear, minimal dependencies |
| **Completeness** | PASS | Both layers + 6 detection points + infra + integration + validation |
| **Reassembly** | PASS | All 12 pieces → matches SV6 and branch goal; Baldwin trajectory emerges from L2 accumulation |
| **Tractability** | PASS | Each piece small-to-medium; none overwhelming |
| **Interface clarity** | PASS | Signal-record format is hub; external format dependencies named |
| **Balance** | PASS | Phase 1 (4) / Phase 2 (3) / Phase 3 (3) / Validation (1) / Integration (1) — no 80% piece |
| **Confidence** | PASS | Top-down matches bottom-up atoms |

**All 7 dimensions pass. Decomposition ready for Innovation.**

### Innovation should focus on:

- **P1 (schema)** — extension points, backward compat with prior schema
- **P4 (pipeline-value, keystone)** — interpretation rules per discipline pair; signal conditions
- **P6 (cross-cycle)** — citation-graph mechanism; "cited enough" vs "ignored" thresholds
- **P9 (aggregator)** — per-version query design
- **P12 (validation)** — corpus selection, agreement thresholds
