---
status: active
corrected_by: thinking_space_dynamics
correction_scope: The two-layer architecture (L1 structural + L2 retrospective) described below is EXTENDED to a three-layer architecture in the successor inquiry. L1 structural content is unchanged. L2 retrospective content is unchanged; L2's ROLE is expanded to include calibration of a newly-added L3 real-time hunch layer. The specific claim in section 7 — "real-time regression detection is bounded to STRUCTURAL regression" — is WRONG and is corrected: humans and working AI systems make real-time value judgments via intuition operating on thinking-space (multi-dim geometric similarity), and this is approximable at Level 0-2 through triangulated retrieval + Popperian hunch schema + calibration. See devdocs/inquiries/thinking_space_dynamics/finding.md for the corrected architecture. The Popperian framing, INSUFFICIENT state pattern, and multi-source evidence requirement carry forward and are applied to the new L3 layer.
---
# Finding: The Importance-Measurement Problem

## Question

**How can regression in cognitive output be measured, given that VALUE/IMPORTANCE of findings is only knowable retrospectively through downstream use, and therefore "fewer but more important" outputs are structurally indistinguishable from "fewer and worse" outputs at the moment they are produced?**

### Goal

An honest structural model of regression-detection's fundamental limits, plus a design for what CAN be detected immediately vs what requires temporal observation. The user should walk away with:

1. A clear distinction between regression-types that are IMMEDIATELY detectable (structural) vs those that are RETROSPECTIVELY detectable (value-based)
2. A mechanism for the retrospective kind — how downstream use creates the signal that's missing in real-time
3. An honest assessment of which regression-detection goals are achievable at Level 0-2 and which require infrastructure we don't have
4. If applicable, a revision to (or supersession of) the `regression_detection_design` finding

---

## Finding

### 1. The structural truth

**Value is retrospective in ALL cognitive-quality domains.** Importance of a finding cannot be determined from its surface properties at the moment of production. It is only knowable through downstream consumption: whether the next discipline uses it meaningfully, whether later inquiries build on it, whether reality confirms or contradicts it, whether it survives supersession over time.

This is not a deficiency of our system. It is a structural property of cognitive work. Scientific research handles it through citations. Peer review handles it through multi-reviewer agreement. Medical diagnosis handles it through outcome tracking. Every mature cognitive-quality field has accepted this retrospective structure and built infrastructure for delayed observation.

**Therefore:** real-time regression detection is bounded to STRUCTURAL regression. Value regression requires temporal observation. The prior finding's attempt to measure value from output properties (thin frontier, shortened output, reduced enumerations) is fundamentally limited — these properties cannot distinguish "fewer-but-better" from "fewer-and-worse."

### 2. The two-layer architecture

Regression detection has a fundamental temporal structure. The correct response is not better real-time metrics but a two-layer architecture with different update cadences.

| Layer | Cadence | Detects | Source |
|---|---|---|---|
| **L1 — Structural** | Immediate (T0) | Format issues, contradictions, removed safeguards, missing sections | Git diff, text scan, telemetry field parse |
| **L2 — Value** | Delayed (T0+ → T4) | Output less useful than prior versions | Existing telemetry (re-interpreted) + `_state.md` relationships |

### 3. The six detection points (5 buildable now, 1 deferred)

| # | Point | Time | Signal source | Buildable now? |
|---|---|---|---|---|
| 1 | Spec-structural | T0 | Git diff on spec files | Yes (prior MVP) |
| 2 | Output-structural | T0 | Text scan + telemetry field parse | Yes (partial prior work) |
| 3 | Pipeline-value | T0+ | Next discipline's telemetry | Yes (existing data, new interpretation rules) |
| 4 | Cycle-value | T1 | Critique's clean SURVIVE | Yes (already in critique output) |
| 5 | Cross-cycle-value | T2+ | `_state.md` relationship graph | Yes (auto-graph from existing annotations) |
| 6 | Durability-value | T4 | SUPERSEDED BY tracking | Yes (existing annotation, aggregate) |
| 7 | Implementation-value | T3 | Finding → commit linkage | **DEFERRED** (needs new infrastructure) |

**Critical insight:** 5 of 6 L2 signals are immediately buildable from existing data. We don't need to BUILD value detection infrastructure — we need to INTERPRET existing telemetry as value signal. The pipeline consumption quality signal (T0+) is already in every discipline's telemetry block; it just isn't being read as an upstream value signal.

### 4. The Popperian reframe (PRIMARY)

Reverse the default orientation:

- **NOT** "alert on regression symptoms" (paranoid default, high false-positive rate on "fewer-but-better" case)
- **INSTEAD** "accumulate positive signals; alert on ABSENCE of expected positives" (scientific default, Popperian)

Every spec change is a HYPOTHESIS with predicted value signals. The detector tracks whether predictions match reality. This matches how mature cognitive-quality fields actually work. It reduces alert fatigue. It integrates cleanly with the Baldwin cycle.

**Requirement:** concrete "positive signal" definitions per signal type. Examples:
- E → S: rich SV delta counts as positive
- S → I: full mechanism coverage counts as positive
- I → C: substantive survivors (not mass-KILL) count as positive
- C → finding.md: clean SURVIVE counts as positive
- finding → next inquiry: cited in later CONTINUES FROM counts as positive

### 5. The MVP design

```
CORE REFRAME:
  Every spec change is a HYPOTHESIS with predicted value signals.
  Detector accumulates positives; alerts on absence of expected positives.
  REQUIRED: concrete "positive signal" definitions per signal type.

P1 (Schema):
  - value_state: POSITIVE | NEGATIVE | INSUFFICIENT_DATA
    (INSUFFICIENT = data missing/corrupted; NOT uncertainty)
  - signal_reliability: sensitivity + specificity (from P12 validation)
  - baldwin_hypothesis: one-line informal prediction (when applicable)

P2 (L1 Spec-structural detector):
  - Inherited from prior finding (git diff on specs, 4 symptoms)
  - Emits records in new P1 schema; tagged L1/DP1

P3 (L1 Output-structural detector):
  - Text scan for internal contradictions
  - Section presence check
  - Telemetry block completeness check
  - EXCLUDES subjective symptoms — those are L2

P4 (L2 Pipeline-value reader) [KEYSTONE]:
  - Reads next discipline's failure-modes field ASYMMETRICALLY
    (presence signals regression; absence doesn't signal anything)
  - Multi-source rule: single signal never alerts
  - Aggregated-pattern rule for sustained single-source anomalies

P5-P7 (L2 Cycle / Cross-cycle / Durability readers):
  - Cycle (T1): clean SURVIVE → positive; all KILLED → negative
  - Cross-cycle (T2+): auto-graph from _state.md relationships
  - Durability (T4): SUPERSEDED BY density per spec-version

P9 (Signal Aggregator):
  - Ships WITHOUT P8 (spec-version tagging) initially
  - Aggregates by inquiry-folder + timestamp
  - Phase-1 data lacks version tags (documented limitation)
  - Add per-version queries when P8 ships in Phase 3

P12 (Validation):
  - Criteria: OBSERVABLE OUTCOMES ONLY
    (cited, superseded, implemented — NOT raw importance judgments)
  - Corpus: ~20 existing inquiry folders

Baldwin integration:
  - Baldwin proposals include one-line informal predicted signals
  - Detector checks predictions vs reality
  - Match = confirmation; mismatch = investigate

Postmortem loop:
  - Trigger: confirmed regression (multi-source + aggregated)
  - Scope: LIGHT (one paragraph, not heavy SRE-style)
  - Frequency matched to confirmed-alert rate

Scope gate:
  - Reality-check Baldwin cycle rate before heavy investment
  - If < N/month: defer Phase 3 infrastructure
  - Keep L1 and basic L2 readers regardless
```

### 6. How the prior finding integrates

The prior finding (`regression_detection_design`) is **RELABELED, not superseded in substance** — but this inquiry supersedes it AT THE ARCHITECTURAL FRAME LEVEL:

| Prior sub-problem | New status |
|---|---|
| Spec-regression (MVP: spec-diff checker) | **Layer 1 / Detection Point 1** — stays active |
| Output-regression (contradiction, missing section) | **Layer 1 / Detection Point 2** — scope narrowed to structural only |
| Pipeline-regression (cross-discipline telemetry) | **Layer 2 / Detection Point 3** — **PROMOTED** to keystone |
| Experience-regression (human real-time judgment) | **KILLED** — can't detect importance via real-time human judgment; value is retrospective |

Action: add scope-clarification caveat to prior `finding.md`; mark its status as `superseded`.

### 7. Honest assessment of limits

**What is achievable at Level 0-2 (now):**
- L1 structural regression detection (immediate, per-event)
- L2 pipeline-value reading from existing telemetry (T0+, requires new interpretation rules)
- L2 cycle-value from critique telemetry (T1, trivial extraction)
- L2 cross-cycle-value from `_state.md` auto-graph (T2+, requires traversal + aggregation)
- L2 durability-value from SUPERSEDED BY density (T4, requires aggregation)

**What requires infrastructure we don't have (deferred):**
- L2 implementation-value (T3): requires finding → commit linkage
- Per-spec-version queries: requires spec-version tagging (P8)
- Importance ground truth at T0: STRUCTURALLY IMPOSSIBLE — don't try

**What we accept we cannot do:**
- Distinguish "fewer-but-better" from "fewer-and-worse" at T0
- Validate output importance without downstream consumption
- Alert on "value regression" synchronously with production

### 8. The Baldwin connection

**Layer 2 IS the Baldwin feedback loop.** Spec changes produce outputs; outputs accumulate value signals over time; signals inform whether the spec change improved or regressed the system. This is how the system eventually self-improves reliably — not by real-time judgment of each change, but by accumulated downstream validation.

Layer 2 is the bridge from Level 0-2 to Level 3+ autonomy. Without it, there is no structural substrate for the Baldwin cycle. With it, the substrate emerges from existing infrastructure we already have.

---

## Reasoning

### Why the two-layer architecture over single-layer approaches

The prior finding treated regression as one concept and proposed four sub-problem detectors at a single time-horizon. The critique revealed this collapses two fundamentally different things: STRUCTURAL properties (observable at T0) and VALUE properties (observable only retrospectively). Treating these as one problem forces one of two failures: either accept subjective judgment at T0 (which the user correctly rejected), or accept that structural symptoms are proxies for value (which is what the prior finding did, and which cannot distinguish fewer-but-better).

The two-layer architecture honors the temporal structure rather than fighting it. L1 catches what is catchable now. L2 catches what requires time. Both are honest about what they measure.

### Why Popperian framing over symptom-detection framing (PRIMARY REFRAME)

Two independent mechanisms converged on this reframe during innovation:
- **Inversion**: flip "alert on regression" → "alert on absence of expected positives"
- **Domain transfer**: mature cognitive-quality fields (science) do not look for problems; they track whether predictions hold

Convergence via two independent mechanisms is a robustness signal. The reframe also:
- Resolves the "fewer-but-better" false-positive case — a richer downstream output IS a positive signal regardless of upstream size
- Reduces alert fatigue — quieter system, alerts are more credible when they fire
- Integrates with Baldwin naturally — spec changes become hypotheses
- Provides a clear calibration target — predicted positives vs observed positives

### Why multi-source evidence for L2 alerts

Prosecution in critique: "could mask single-signal regressions (false negatives)."
Defense: silent logging preserves information; aggregated-pattern detection catches sustained single-source anomalies over time.

Result: multi-source rule for immediate alerts + aggregated single-source rule for pattern alerts. L1 structural still fires per-event. L2 value requires converging observations. This resolves the noise problem cleanly — single signals log silently and contribute to aggregate patterns, multi-source signals alert immediately.

### Why "Insufficient data" as a distinct state

Prosecution: "could become an abuse bucket — the dumping ground for anything unclear."
Defense: specific operational meaning — data missing or corrupted, distinct from "I'm unsure."

When telemetry is missing or malformed, the detector cannot render a verdict. Conflating this with "negative" produces false negatives (signal absence treated as signal negative). Conflating with "positive" produces false positives (missing data treated as present). The explicit INSUFFICIENT_DATA state preserves information honesty.

### Why validation must use observable outcomes only

Prosecution: "probabilistic signals with sensitivity/specificity reintroduce subjective judgment at validation."
Defense: validation anchored to OBSERVABLE OUTCOMES (cited, superseded, implemented) is not subjective. The subjective part would be "was this finding important?" — which this inquiry explicitly rejected as an answerable question at T0.

Distinction: asking "did this finding get cited in a later CONTINUES FROM?" is an observable fact. Asking "was this finding important?" is a retrospective subjective judgment we cannot make at T0 and which the system should not attempt. The former is the signal; the latter is the confusion we're escaping.

### Why asymmetric interpretation of failure-modes field

Prosecution: "self-reporting unreliable — disciplines will under-report or over-report."
Defense: asymmetric interpretation makes the unreliability one-sided and usable. Presence of a listed failure mode IS a strong regression signal (the discipline itself identified a problem). Absence is NOT a positive signal (it could mean "no failures" or "failures not reported"). This turns a weak bidirectional signal into a strong unidirectional one.

### Why skip spec-version tagging for Phase 1

Prosecution: "accumulating data we can't fully utilize."
Defense: aggregated-by-time data > no aggregated data. Git commit timestamps allow retrospective reconstruction of spec versions when P8 ships later. Blocking P9 on P8 delays the aggregator unnecessarily. Ship P9 with time-based aggregation now; enhance with version-based queries in Phase 3.

### Why lightweight postmortems frequency-matched to alert rate

Prosecution: "postmortems are heavy — kills the appetite to investigate."
Defense: SRE-style postmortems are heavy; one-paragraph postmortems are not. Frequency-matched means if alerts fire once a month, postmortems happen once a month — not a crushing process burden. The learning loop is preserved, the overhead is capped.

### Killed candidates from innovation

- **Detector validates human** — a Level 3+ concern (requires the system to be a reliable judge of the human's judgment), not yet buildable. Structural problem: the detector doesn't have ground truth about the human's judgment at production time.
- **Human-state proxy** (tracking user mood, engagement, etc.) — invasive, too granular, unreliable. User's state isn't the relevant value signal; downstream consumption is.
- **Self-referential detection at Level 4+** — philosophical frontier, not MVP-relevant.
- **1000-record / Baldwin-at-1/week extrapolations** — premature quantitative planning. Principle-level scope gate retained; specific numbers killed.

### Experience-regression (from prior finding) killed

The prior finding included an Experience-regression detector based on human prompt ("does this feel less useful?"). This inquiry kills it structurally: importance is retrospective, so a real-time human judgment of importance is exactly the subjective metric the user rejected. The same human, examining the same output one week later with downstream usage data, would render a more reliable judgment — but then it's no longer Experience-regression, it's Cross-cycle-value (Detection Point 5).

### Reconciliation across inquiries

The prior `regression_detection_design` finding is not wrong — it's one layer of a two-layer architecture that was mis-framed as the whole thing. Its spec-diff MVP continues as L1. Its Experience-regression is killed. Its Pipeline-regression is promoted to L2 keystone. The overall finding is architecturally superseded; its individual components mostly survive in new positions.

---

## Open Questions

From the inquiry's frontier and deferred work:

1. **Concrete positive-signal definitions per discipline pair** — the reframe requires operational definitions of what counts as a positive pipeline-value signal for each of E→S, S→I, I→C, C→finding transitions. The finding names the shape; the specifics need a follow-up pass per pair.

2. **Operational definition of "importance" at T2+** — cited-vs-ignored is a first approximation. Thresholds ("how many citations constitute 'valuable'?", "how long without citation constitutes 'ignored'?") need empirical calibration against the corpus.

3. **L2 Implementation-value (T3) — deferred** — requires finding → commit linkage infrastructure we don't have. Future work when we build implementation tracking.

4. **Baldwin cycle rate empirical measurement** — the scope gate says "if < N/month, defer Phase 3." We don't yet know N or our actual rate. Needs a few months of Baldwin cycles before the gate can be meaningfully checked.

5. **Attribution reliability when downstream struggles** — if /sensemaking produces thin output, is the cause upstream (/exploration regression) or intra-discipline (/sensemaking discipline issue or external factor)? The multi-source rule partially addresses this, but attribution remains probabilistic.

6. **At-scale aggregation patterns** — as the signal log grows beyond N records, what patterns should the aggregator surface? Deferred as a REFINE candidate until we have data.

7. **Schema evolution feedback loop** — if P12 validation reveals the P1 schema is missing fields, how does the schema itself evolve without invalidating prior records? Phase 3+ concern.

8. **Retroactive data reconstruction** — Phase 1 data lacks version tags. When P8 ships, reconstruction from git timestamps is possible but may be lossy. Acceptable cost documented; alternative approaches not explored.
