# Exploration: Regression Detection Territory

## User Input
devdocs/inquiries/regression_detection_design/_branch.md

---

## Exploration Mode and Entry

**Mode:** Artifact + Possibility exploration
- Artifact: existing codebase (symptom doc, per-discipline telemetry, reflect, improvement_rhythm, _state.md)
- Possibility: detection mechanisms that COULD exist given these parts

**Entry point:** Signal-first. Probe the 23-symptom doc first, scan outward.

---

## Cycle 1 — Coarse Scan

### Scanned regions

| Region | What was found | Confidence |
|---|---|---|
| `regression_symptoms_defined.md` | 23 symptoms × 5 types × 5 diagnostic patterns × detection timeline | Confirmed |
| `improvement_rhythm.md` | Log → Accumulate → SIC on patterns (template) | Confirmed |
| Per-discipline telemetry | Every SIC/MVL+ discipline has a telemetry block | Scanned |
| `_state.md` structure | Progress, Status, History, Relationships — no telemetry history | Scanned |
| `improvement_observations.md` | Log file spec'd, may or may not exist on disk | Scanned |
| `/reflect` command | Own discipline, produces process observations | Scanned |
| Cross-run telemetry persistence | — | **Confirmed absent** |
| Symptom-to-telemetry mapping | — | **Confirmed absent** |
| Code checking symptoms | — | **Confirmed absent** |

### Signals

- **Density**: 19 of 23 symptoms are machine-observable (Output/Pipeline/Error/Spec). Only 4 need human self-report (Experience). TRACTABILITY signal — most is automatable.
- **Novelty**: `improvement_rhythm` template is structurally identical to what regression detection needs. Instantiate, don't invent.
- **Relevance**: Detection Timeline (Pre/During/After/Downstream/Across) is a ready-made pipeline.
- **Tension**: Experience symptoms need subjective human input — reliability unknown.
- **Absence**: No concrete BASELINES. "Thin frontier" has no numeric threshold.
- **Absence**: No symptom-to-telemetry mapping document exists.

---

## Cycle 2 — Targeted Probes

### Probe 1: Symptom taxonomy structure

- Defined at CONCEPTUAL level, not operational (no concrete thresholds)
- 5 diagnostic PATTERNS combine 2-3 symptoms each — these are HIGH-PRIORITY (strengthen weak individual signals)
- Cross-type patterns (e.g., "Slow Drift" = Experience + Output)
- **Finding**: symptoms are like medical signs (fever, cough); patterns are like diseases (flu). Need BOTH — individual symptoms as early warnings, patterns as confident diagnoses.

### Probe 2: Current telemetry per discipline

| Discipline | Telemetry fields |
|---|---|
| Sensemaking | Perspectives, Ambiguity resolution, SV delta, Anchor diversity |
| Innovation | Generators/Framers count, Convergence, Survivors tested, Failure modes |
| Critique | Dimensions, Adversarial strength, Stability, Clean SURVIVE, Failure modes |
| Reflection | Per-step observations |
| Navigation | Types considered, Category balance, Guideline depth, Failure modes |

- NO standard schema across disciplines — each has its own fields
- Commonality: every block has a "Failure modes observed: none / list" field — potential cross-discipline signal
- **Finding**: Self-reported failure modes may undercount (like self-grading). External check would be more reliable.

### Probe 3: Improvement rhythm template

- Layer 1: log one sentence per run
- Layer 2: periodic SIC on accumulated observations

- **Finding**: Template adapts cleanly for symptom logging. But regression needs FASTER triage than improvement review. Critical symptoms → immediate alert; trivial → log only.

### Probe 4: Cross-run comparison infrastructure

- Self-contained inquiry folders
- No global telemetry ledger
- **Finding**: Persistence options — global append-only log / per-discipline logs / per-Baldwin-cycle snapshot. Global log is simplest.

### Probe 5: Spec symptoms (git-diff-based)

- Types 20-23: shorter than before, missing sections, weakened language, removed safeguards
- UNIQUELY early-warning — catches regression BEFORE any run
- Git diff is the primary signal source — essentially a pre-commit check
- **Finding**: Easiest to automate. Earliest in the timeline. Prioritize.

---

## Cycle 3 — Possibility Space

### Detection mechanism dimensions

**By trigger:** Reactive / Scheduled / Pre-commit / Manual
**By source:** Telemetry-based / Output-text-based / Diff-based / Human-reported / Cross-run
**By granularity:** Per-symptom / Per-pattern / Per-discipline / Per-run
**By action:** Log only / Alert / Block / Auto-revert

### Possibility candidates found

- **Symptom Scanner Prompt** — scans discipline output against 23 symptoms → symptom report
- **Diagnostic Pattern Detector** — reads multiple symptoms, checks for the 5 diagnostic patterns
- **Baseline Normalizer** — rolling averages across N runs, flags deviations
- **Spec Diff Checker** — pre-commit, catches spec symptoms
- **Human Symptom Form** — post-run prompt for experience symptoms
- **Pattern Pattern Finder** — SIC on accumulated symptom logs for meta-patterns

---

## Frontier

**Advancing**: operationalization of symptoms; telemetry normalization; persistence design; integration points
**Stable**: symptom taxonomy, diagnostic patterns, detection timeline, improvement rhythm, Baldwin requirement
**Unexplored**: baseline establishment, human symptom reliability, symptom specificity, integration points, storage location, self-report reliability

---

## Confidence Map

| Region | Confidence |
|---|---|
| 23 symptoms (definition) | Confirmed |
| Diagnostic patterns (5) | Confirmed |
| Detection timeline (5 stages) | Confirmed |
| Per-discipline telemetry existence | Confirmed |
| Improvement rhythm template | Confirmed |
| Symptom-telemetry mapping | Unknown (must construct) |
| Baselines for normalcy | Unknown (no prior calibration) |
| Human symptom reliability | Unknown (never measured) |
| Storage/persistence design | Unknown (multiple options) |
| Cross-run aggregator | Confirmed absent |
| Spec diff checker | Inferred (easy, git-based) |
| Baldwin cycle tracking | Confirmed absent |

---

## Gaps (missing pieces)

1. **Operational rules per symptom** — concrete detection rule, baseline, threshold
2. **Symptom-to-telemetry mapping table** — explicit cross-reference
3. **Persistence mechanism** — storage + aggregation across runs
4. **Human experience prompt** — reliable capture of subjective symptoms
5. **Integration points in MVL/MVL+** — where does detection hook into the flow?
6. **Severity triage** — immediate alert vs log-only
7. **Self-report validation** — is discipline self-telemetry trustworthy?

---

## Saturation Indicators

- **Frontier**: Advancing (unexplored sub-regions named)
- **Resolution coverage**: Coarse scan (7 sources) + targeted probes (5 priorities) + gaps (7 named)
- **Discovery rate**: Decreasing — most remaining discoveries are in operational details, not new territory
- **Confidence distribution**: Confirmed (6), Inferred (1), Unknown (5), Confirmed absent (3) — good spread
- **Territory completeness**: Captures existing artifacts + missing pieces + unexplored questions

**Overall: sufficient territorial coverage for sensemaking to begin.**
