---
status: active
category: Cross-cutting
taxonomy: enes/discipline_taxonomy.md
---
# /intuit — The Intuition Discipline

First-class AlignStack thinking discipline that operates the **L3 real-time hunch layer** of the three-layer architecture. Grounded in Case-Based Reasoning (Aamodt & Plaza 1994: Retrieve → Reuse → Revise) and Structure-Mapping Engine (Gentner: Alignment → Projection). Built on a **typed 11-primitive set** (see `enes/thinking_space_dynamics.md`). Scale-adaptive implementation (LLM-direct at current corpus; embeddings as Phase δ scaling layer).

**Category:** Cross-cutting — one of four discipline categories (Core / **Cross-cutting** / Boundary / Situational). See `enes/discipline_taxonomy.md` for taxonomy details, admission criteria, and `/intuit`'s admission audit.

---

## 1. What /intuit IS and IS NOT

**/intuit is:** a methodology-level recognition-and-transfer discipline that produces probabilistic value signals by identifying structural matches in a corpus of prior findings and projecting their transferable parts onto the current source via a three-step transform-space pattern.

**/intuit is NOT:**
- **Retrieval** — retrieval returns similar items; /intuit returns similar items + projected transferable insights
- **Analogy (narrow)** — analogy is source↔target; /intuit is source↔corpus with multiple matches ranked
- **Innovation** — innovation generates novel concepts via mechanisms; /intuit surfaces recognitions from existing corpus
- **Sensemaking** — sensemaking converts ambiguity to understanding; /intuit produces probabilistic signals from existing understanding
- **LLM-as-judge** — judge rates; /intuit recognizes-and-transfers
- **Case-Based Reasoning (narrow technical)** — CBR is an AI technical framework; /intuit is methodology-layer (borrows CBR's structural decisions)

---

## 2. Core operation — three-step transform-space pattern

**Forward transform → Scan → Projection**

1. **Forward transform:** source text (or inquiry state) → **structured relational abstraction** in `predicate(typed_arg, typed_arg)` form (NOT prose). Multi-sample consensus (3 samples); vocabulary-hint mechanism shows prior abstractions to encourage predicate reuse; quality gate on trivial outputs.
2. **Scan:** find corpus findings whose abstractions match the source's, in one of three modes (convergent / divergent / adversarial — phase-gated).
3. **Projection:** SME-style Alignment (identify which structural relations map source↔match) + Projection (transfer the consequences of the matched pattern back to source context as a Popperian hypothesis).

**The "inverse transform" is NOT mathematical reversal.** Natural-language abstraction is lossy by design; information discarded in forward direction is not recoverable. Projection is asymmetric, selective, and guided by structural correspondence — it transfers structural consequences, not surface content. The Z-transform analogy is pedagogical scaffolding; the actual mechanism is SME Projection.

---

## 3. Three scan modes

| Mode | Matches | Use case | Phase |
|---|---|---|---|
| **Convergent** | abstraction similar + surface similar | Pattern recognition — "this is like those recent similar cases" | Phase A |
| **Divergent** | abstraction similar + surface DISSIMILAR | Cross-domain structural analogy — "this problem has the same ANGLE as a problem in an unrelated field" (signature capability) | Phase B |
| **Adversarial** | abstraction matches a prior FAILED finding | Detects failure patterns — predicts failure repetition | Phase C |

**Adversarial mode trigger** (Phase C) requires specific failure-indicator relationships, NOT bare `SUPERSEDED_BY`:
- `CORRECTED_BY` relationship in `_state.md`
- `REPLACED_BY` relationship
- Frontmatter `status: failed` or `status: retracted`
- `SUPERSEDED_BY` paired with `correction_scope` field

Bare `SUPERSEDED_BY` is not a failure indicator — many supersessions are refinement-with-transfer.

---

## 4. Primitive attribution — which primitives produce the hunch

The typed 11-primitive set (from `enes/thinking_space_dynamics.md`) specifies which cognitive primitives drive each part of `/intuit`. Phase A uses 8 primitives; Phase B adds 3; Phase C+ adds modulators (deferred).

### Primitive contributions to /intuit's three steps

**Forward transform (step 1):**
- **Simulation** — constructs the relational abstraction (Simulation's forward-transform application)
- **Working Memory** — holds the source + scratch space for abstraction samples
- **Metacognition** — quality gate (trivial/empty abstraction → retry)

**Scan (step 2):**
- **Intuition-similarity** — produces corpus matches (the primitive's primary operation)
- **Working Memory** — holds candidate matches during scan
- **Attention-pointer** — selects current candidate for detailed examination
- **Focus-deep** — allocates processing depth to each candidate
- **Inhibition** — in divergent mode, suppresses surface-similar-but-structurally-unrelated matches; in hypothesis-first mode (Phase C), drives adversarial scan
- **Salience** (Phase B) — surprise-triggered re-ranking of candidates

**Projection (step 3):**
- **Simulation** — constructs the source-context projection (Simulation's inverse-direction application)
- **Evaluation** (Phase B) — ranks matches by transferability; produces reliability scores
- **Metacognition** — INSUFFICIENT_INTUITION output when projection fails; differential discriminator production (Phase B)
- **Inhibition** — suppresses matches that fail Alignment
- **Context-framing** — scopes projection to current-inquiry relevance
- **Motivation** (Phase B) — allocates effort to higher-priority projections

### Primitive Cards — canonical per-primitive reference

Each primitive has a **Primitive Card** documenting: operational definition + primitivity-test evidence + observable signatures + failure signatures + delegation decision + measurement approach + `/intuit` impact + corpus-audit instance. 11 cards at Phase B. Cards are the canonical source of truth for each primitive.

### Substrate delegation (per-primitive, substrate-versioned)

```yaml
substrate_version: claude-opus-4-7
evaluated: 2026-04-22

Attention-pointer:     DELEGATE     (LLM native)
Focus-deep:            DELEGATE     (CoT depth emerges from prompting)
Intuition-similarity:  HYBRID       (native similarity + corpus retrieval scaffold)
Inhibition:            APPROXIMATE  (adversarial scan + explicit suppression prompts)
Simulation:            APPROXIMATE  (abstraction + hypothesis construction prompts)
Metacognition:         APPROXIMATE  (INSUFFICIENT state + explicit state assessments)
Working Memory:        HYBRID       (LLM context native + explicit scope tagging)
Context-framing:       APPROXIMATE  (explicit artifacts LLM reads)
Motivation (B):        APPROXIMATE  (effort parameters + phase indicators)
Evaluation (B):        HYBRID       (LLM-as-judge + discipline-scaffolded criteria)
Salience (B):          APPROXIMATE  (explicit surprise-detection prompts)
Mood (C+):             DEFERRED     (substrate access to affective state immature)
Arousal (C+):          DEFERRED     (substrate access to affective state immature)
```

Re-evaluated on major substrate change.

---

## 5. Invocation — modes and entry points

**Two invocation modes:**
- **Standalone:** `/intuit <source>` produces `intuition.md` artifact in the inquiry folder (same tier as `/explore` producing `exploration.md`)
- **Embedded:** another discipline invokes `/intuit` inline; returns in-memory seeds to caller (no file artifact)

**Two entry points:**
- **Source-first (default):** given source text, find seeds from corpus
- **Inquiry-state-first:** when invoked mid-SIC-loop, the current inquiry state (question + prior discipline outputs) is the source

**Validator lighter path (Phase B):** caller supplies hypothesis (and optionally abstraction); `/intuit` skips forward-transform, runs scan + projection, returns single verdict (supported / contradicted / INSUFFICIENT). Flag on embedded invocation, not a distinct mode.

**Pipeline-early (Phase C opt-in, Phase D default-on):** `/MVL+` at inquiry creation auto-invokes `/intuit` on the new `_branch.md`, producing baseline intuition before `/explore`.

---

## 6. Output — schema + invocation trace

### Seed schema (per seed, 11–13 fields depending on phase)

- `source_anchor`
- `abstraction` (structured relational claim, `predicate(typed_arg, typed_arg)` form)
- `mode` (convergent / divergent / adversarial)
- `corpus_match` (path + excerpt — verifiable)
- `structural_alignment` (SME Alignment result)
- `transferable_projection` (what transfers to source + how)
- `prediction` (Popperian — directional claim)
- `prediction_window` (T1 / T2+ / T4)
- `observable_outcome` (specific L2 signal that will confirm/refute)
- `reliability` (0–1; honest confidence)
- `hunch_state` ∈ {POSITIVE, NEGATIVE, INSUFFICIENT_HUNCH}
- `source_type` ∈ {CORPUS_MATCH, TRAINING_DISTRIBUTION_MATCH, ADVERSARIAL_MATCH, NOT_APPLICABLE, INSUFFICIENT_INTUITION}
- `primitive_contributions` (Phase β+) — array of primitives that shaped this seed
- `discriminator` (Phase B) — what observation would favor this seed over the next-ranked

Source-type labels are **verifiable**, not LLM self-reported. `CORPUS_MATCH` requires a cited file path and excerpt; verification checks path existence and excerpt presence. The LLM cannot fake what isn't there.

**Recorded hunches** (entering the calibration log) require the full schema. **Transient in-flight hunches** may carry partial structure (reliability + load-bearing match + hunch_state minimum).

**Phase B+ output** is a **differential-ranked list** of hypotheses with discriminators, not a flat seed list — gated on ≥60% discriminator actionability test (fallback to flat ranked list if fail).

### Primitive invocation trace (alongside seeds)

Every `/intuit` call produces a trace — a step-by-step record of which primitives fired, in what order, with what inputs and outputs. Each entry is **evidence-linked**: cites a specific observable output artifact. Without evidence, an entry is noise.

Required per-entry format:
```yaml
step_N:
  primitive: <name>
  operation: <what it did>
  input: <cited from prior step or source>
  output_evidence: <specific excerpt + location in generated content>
```

Makes cognition debuggable. Failure diagnosis and per-primitive calibration become possible.

### Corpus-limit seeds (Phase B+)

When projection fails (structural match exists but no transferable consequences project back), log as `corpus_limit_seed` in a lightweight log (one line per entry). These identify structural patterns the corpus cannot yet resolve — latent inquiry seeds for the user to review.

---

## 7. Decline conditions — INSUFFICIENT_INTUITION

Four named conditions → produce INSUFFICIENT_INTUITION state with reason:

1. **Empty abstraction** — forward-transform produces meaningless/trivial output (Metacognition triggers retry; persistent failure → INSUFFICIENT)
2. **No corpus matches** — scan returns zero above similarity floor
3. **Contradictory seeds** — scan produces seeds with contradictory predictions (surface the contradiction, don't collapse — Inhibition failure indicator)
4. **Projection failure** — matches exist but Alignment → Projection cannot apply back to source context (logged as corpus_limit_seed)

Plus the NOT_APPLICABLE source_type for sources where intuition isn't the right tool (pure computation, direct verification, etc.).

INSUFFICIENT_INTUITION is defined precisely: "no substrate match above similarity threshold S" (S is a pre-registered parameter). NOT "low-confidence hunch" — low-confidence hunches still fire with appropriate reliability scores.

---

## 8. Failure modes — six inherited from transform techniques

Attributed to specific primitives:

1. **Aliasing** (distinct sources → same abstraction) ← Working Memory collision detection failure
2. **Information loss** (forward transform discards surface) ← STRUCTURAL property of Simulation; documented, not a bug
3. **Boundary effects** (decontextualized seeds) ← Working Memory boundary; mitigated by Context-framing
4. **Domain mismatch** (abstraction applied to wrong-character corpus) ← Intuition-similarity + Metacognition should catch
5. **Overfit abstraction** (too specific, no matches) ← Simulation quality gate → retry with broadening hint
6. **Underfit abstraction** (too generic, everything matches) ← Simulation quality gate → retry with specificity hint

Additional primitive-specific failure modes surfaced by the refactor:
- **Silent Metacognition failure** — INSUFFICIENT signal should have fired but didn't
- **Inhibition under-application** — dominant-but-wrong matches not suppressed (confirmation-bias indicator)
- **Salience over-activation** (Phase B+) — every match flagged as surprising; salience threshold mis-set

---

## 9. Phased build — A / B / C / D

Each phase delivers standalone value; later-phase failure doesn't invalidate earlier phases.

**Phase A — Core discipline (first ship):**
- Convergent mode only; source-first standalone invocation
- Structured relational abstractions with vocabulary-hint + multi-sample consensus
- Flat ranked seed output with reliability; 10-field schema
- 2 source_type states: CORPUS_MATCH, INSUFFICIENT_INTUITION
- 8 primitives active (the Phase A primitive set)
- Primitive Cards for 8 primitives with corpus-audit admission (two-reviewer)
- Invocation trace (evidence-linked entries)
- 4 decline conditions + 6 inherited failure modes

**Phase B — Expansion (gated on Phase A calibration N ≥ 15):**
- Adds divergent mode (the signature "angle-match" capability)
- Adds embedded invocation + validator lighter path
- Adds inquiry-state-first entry point
- Differential output with discriminators (gated on ≥60% actionability test)
- TRAINING_DISTRIBUTION_MATCH and NOT_APPLICABLE source_type states
- Lightweight failed-projection logging (`corpus_limit_seeds`)
- Adds 3 primitive cards: Motivation, Evaluation, Salience
- /intuit schema adds `primitive_contributions` array

**Phase C — Adversarial + hypothesis-first (gated on corpus having failure-annotated findings):**
- Adds adversarial mode (refined failure-indicator triggers, not bare SUPERSEDED_BY)
- Adds hypothesis-first process variant, COUPLED with adversarial (cannot ship without it — otherwise confirmation-bias-by-construction)
- Adds ADVERSARIAL_MATCH source_type
- Adds pipeline-early opt-in flag at inquiry creation

**Phase D — Scale + maturity (gated on P10 calibration N ≥ 30 per discipline):**
- Adds embedding pre-filter (activates at corpus N > ~100–200 OR context-window headroom < 30%)
- Pipeline-early default-on
- Extension to `/explore`, `/sense-making`, `/decompose` as consumers
- Persistent `thinking_space.md` artifact (Working Memory as first-class state — triggered when cross-call continuity becomes required)
- Modulator cards (Mood, Arousal) if operationalization matures

---

## 10. Integration patterns

**With `/innovate`:** embedded + inquiry-state-first. Seeds feed innovation mechanisms — especially Domain Transfer (structural analogies become starting points) and Combination (failed-projection seeds become Absence Recognition inputs).

**With `/td-critique`:** embedded validator mode. Prosecution and defense pass candidate hypotheses; `/intuit` returns corpus-grounded verdicts informing adversarial testing.

**With `/MVL+` (pipeline-early, Phase C+):** auto-invoke on new `_branch.md` to produce baseline intuition before `/explore`. Opt-in initially; default-on after calibration matures.

**Mental model:** AlignStack's corpus is an "opening book" — prior positions with transferable moves attached. `/intuit` is the lookup mechanism. Users think of each inquiry as a position to look up.

---

## 11. Calibration — hunch vs outcome over time

Per-discipline calibration curves track whether predictions at reliability R actually match outcomes at frequency R. Well-calibrated means a reliability-0.7 hunch matches outcomes ~70% of the time.

**Minimum N gates:**
- N ≥ 30 per discipline for "well-calibrated" claims
- N ≥ 50 per discipline for miscalibration claims or Baldwin seed-input use

**Recording only in MVP** — no live weight updates. Seeds log linked to L2 outcome signals when those fire. Per-primitive calibration (which primitive's signal was most load-bearing for seeds that turned out POSITIVE vs NEGATIVE) aggregates from invocation traces.

**Baldwin seed-generation** (Phase D+, gated on calibration maturity): consistent hunch patterns across inquiries become inquiry-PROPOSAL seeds. Never direct spec modification. Seeds enter normal SIC loop for validation.

---

## 12. Honest limits

**What the MVP CAN do (by phase):**
- Phase A: real-time probabilistic hunches via convergent matching; evidence-linked invocation traces
- Phase B: cross-domain structural analogy (signature capability); discriminator-ranked differential output
- Phase C: adversarial failure-pattern detection; hypothesis-first testing (coupled with adversarial)
- Phase D: scale-adaptive operation; persistent cross-call working memory; Baldwin seed generation

**What the MVP CANNOT do:**
- Replace L2 retrospective validation — hunches without calibration become confidently wrong
- Guarantee structural-analogy capture — predicate stability and signal independence need empirical validation
- Produce ground-truth judgments — reliability is probabilistic, not certainty
- Introspect which internal LLM operations correspond to named primitives — primitive invocation traces are evidence-linked, not introspective

**What requires infrastructure we don't have (deferred):**
- Full neural thinking-space modeling
- ML-layer attention-weight introspection
- Live calibration weight updates
- Custom "Z-space" generation per problem (Level 3 capability beyond brute-force transfer)
- Modulator operationalization (Mood, Arousal)
- Automated substrate-change re-evaluation of delegation

**What we accept as structural:**
- Information loss in forward-transform is by design (SME Projection is asymmetric)
- Some primitives are structurally inaccessible to LLM substrate (embodied cognition, felt qualia, dream-state) — named-but-unoperationalized
- LLM "intuition" is a functional analog of human intuition, not identity
- Predictive processing is an alternative architecture, not an addition — noted as research frontier

---

## 13. Related specifications

- `enes/thinking_space_dynamics.md` — the three-layer architecture + typed 11-primitive set that /intuit operates on
- `enes/desc.md` — autonomous consciousness goal; /intuit's L3 role is the Baldwin cycle's real-time input
- Inquiry findings:
  - `devdocs/inquiries/intuition_as_discipline/finding.md` — original discipline spec
  - `devdocs/inquiries/thinking_space_primitives/finding.md` — primitive refactor
  - `devdocs/inquiries/importance_measurement_problem/finding.md` — L1/L2 foundation (corrected)
