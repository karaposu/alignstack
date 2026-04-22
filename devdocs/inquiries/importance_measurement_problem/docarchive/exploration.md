# Exploration: The Importance-Measurement Problem

## User Input
devdocs/inquiries/importance_measurement_problem/_branch.md

---

## Mode and Entry

**Mode:** Artifact + Possibility exploration. 
**Entry:** Signal-first — user's "importance is retrospective" is the anchor.

---

## Cycle 1 — Coarse Scan

| Region | Finding | Confidence |
|---|---|---|
| Prior finding (regression_detection_design) | 4 sub-problems; only Pipeline-regression observes downstream value | Confirmed |
| improvement_rhythm.md | Log → Accumulate → SIC template is retrospective-compatible | Confirmed |
| 23-symptom doc | Most symptoms measure OUTPUT PROPERTIES, not downstream value | Confirmed |
| _state.md relationships | CONTINUES FROM / SUPERSEDED BY / RELATED are cross-cycle value signals | Confirmed |
| Discipline telemetry blocks | Contain consumption-quality signals (survivors tested, clean SURVIVE, etc.) | Confirmed |
| Retroactive blame assignment | — | **Confirmed absent** |
| Spec-version tagging on outputs | — | **Confirmed absent** |
| Delayed-observation protocol | — | **Confirmed absent** |

### Signals
- **Density**: value signals cluster in DOWNSTREAM OBSERVATION, not output properties
- **Novelty**: temporal structure of value (T0 → T4) hasn't been laid out explicitly
- **Relevance**: "fewer-but-better" becomes observable at T0+ — the NEXT discipline's ability to work from the output is the proxy
- **Tension**: prior finding treats regression as one concept; this critique reveals (at least) two types on different timescales
- **Absence**: no mechanism reads downstream consumption as regression signal even though telemetry is already there

---

## Cycle 2 — Targeted Probes

### Probe 1: Value signals by time horizon

| Time | Signal type | Available? |
|---|---|---|
| **T0** (production) | "Is this important?" | **IMPOSSIBLE** — no ground truth at production |
| **T0** (production) | Structural validity | Available (well-formed, no contradictions, has telemetry) |
| **T0+** (next discipline) | Pipeline consumption quality | Available (in next discipline's telemetry) |
| **T1** (cycle completion) | Convergence quality | Available (clean SURVIVE, finding.md produced) |
| **T2** (cross-cycle) | Reference / build-upon | Auto-trackable (_state.md relationships) |
| **T3** (implementation) | Design becomes reality | Observable (git history) |
| **T4** (durability) | Survives supersession | Observable (_state.md SUPERSEDED BY) |

**Depth finding:** Value signals ARE available — distributed across time. Real-time T0 catches structural only. T0+ pipeline signals are ALREADY IN TELEMETRY but unread as regression indicators.

### Probe 2: The "fewer but better" case

| Time | Distinguishable? |
|---|---|
| T0 | No — both look "thinner" |
| **T0+** | **PARTIALLY** — if next discipline produces rich output, fewer-was-better. If it struggles, fewer-was-worse. |
| T1 | More distinguishable — cycle-level convergence |
| T2+ | Fully distinguishable — is it referenced / built on? |

**Depth finding:** The "fewer but better" case IS observable at T0+ through NEXT discipline's behavior. Requires reading downstream output as feedback on upstream.

### Probe 3: Existing telemetry as value signal

| Upstream | Downstream signal at T0+ |
|---|---|
| /explore → /sensemaking | SV delta shows significant structural change? |
| /sensemaking → /innovate | Innovate's Mechanism Coverage reaches full convergence? |
| /innovate → /td-critique | Critique finds candidates worth evaluating, not mass-KILL? |
| /td-critique → finding.md | Clean SURVIVE exists? |
| /finding → next inquiry | Cited in future _state.md CONTINUES FROM? |

**Depth finding:** Pipeline-value signal is MOSTLY ALREADY IN TELEMETRY. We don't need to BUILD value detection; we need to INTERPRET existing telemetry as value signal.

### Probe 4: Delayed-blame architecture

Required:
- Spec version tagging at output production
- Output-to-spec linkage  
- Delayed log entries (regression_log records added at T2+ referencing T0)

**Depth finding:** Infrastructure gap. Git history exists but isn't linked to output production.

### Probe 5: Parallels from other domains

| Domain | How handled |
|---|---|
| Scientific research | Citations, replication — T2+ |
| Peer review | Multiple reviewers, inter-rater agreement |
| Medical diagnosis | Outcome tracking — T3+ |
| Intelligence analysis | Did prediction come true? — T3+ |
| Code review | Does it work in production? — T2+ |
| Philosophy | Continued engagement across generations — T4+ |

**Pattern:** VALUE IS MEASURED BY DOWNSTREAM EFFECT, NOT BY OUTPUT PROPERTIES. Every mature field has accepted this and built infrastructure for delayed observation.

---

## Cycle 3 — Possibility Space

### Dimensions

**By time horizon:** Immediate (T0) / Near-immediate (T0+) / Cycle (T1) / Cross-cycle (T2) / Implementation (T3) / Durability (T4)
**By automatability:** From existing telemetry / From _state.md relationships / External inputs / Human judgment
**By what's blameable:** Structural → blame output; Value → blame spec version

### Possibility candidates

- **Pipeline-value reader** — interpret existing telemetry as feedback on upstream (mostly built, needs rules)
- **Spec-version tagging** — outputs tagged with producing spec version for retroactive blame
- **Delayed regression log** — T2+ entries referencing T0 spec changes
- **Citation graph** — auto-generate from _state.md relationships
- **Supersession density** — per spec version, fraction of findings getting superseded
- **Pipeline-success rate** — per spec version, fraction of runs producing clean SURVIVE

---

## Frontier

**Advancing:** temporal structure of value, existing telemetry as value signal, delayed-blame architecture
**Stable:** 23 symptoms, diagnostic patterns, improvement rhythm, _state.md relationships
**Unexplored:** telemetry-interpretation rules, spec-version tagging mechanism, delayed-blame reliability, "importance" operational definition

---

## Confidence Map

| Region | Confidence |
|---|---|
| Value is retrospective | Confirmed |
| Real-time structural checks miss value regression | Confirmed |
| Pipeline-value signal readable from existing telemetry | Confirmed |
| _state.md relationships are partial T2 signals | Confirmed |
| Prior finding's 4 sub-problems (Pipeline-regression is more central than realized) | Confirmed (with update) |
| Spec-version tagging on outputs | Confirmed absent |
| Delayed-blame mechanism | Confirmed absent |
| Telemetry interpretation rules | Unknown |
| Automatability of T2+ signals | Unknown |
| Rigorous definition of "importance" | Unknown |

---

## Gaps

1. **Spec-version tagging at output production**
2. **Telemetry-interpretation rules** for reading as value signal
3. **Delayed regression log mechanism** (T2+ entries referencing T0)
4. **Citation/reference graph auto-generation** from _state.md
5. **Pipeline-success rate tracking** per spec version
6. **Attribution reliability** when downstream struggles
7. **Operational definition of "importance"**

---

## Saturation Indicators

- **Frontier**: Advancing — temporal structure is new, load-bearing
- **Resolution coverage**: 7 regions scanned, 5 probes completed
- **Discovery rate**: Decreasing but not zero
- **Confidence distribution**: Confirmed (6), Absent (3), Unknown (4), Partial (2)
- **Territory completeness**: Captures temporal axis, structural/value split, existing-vs-missing infrastructure, cross-domain patterns

**Overall: sufficient coverage for sensemaking.** Central insight stable: value signals exist but are distributed across time; real-time detection is bounded to structural.
