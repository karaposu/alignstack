---
status: active
---
# Finding: Thinking-Space Dynamics

## Question

**How do we approximate the dynamics of the human thinking-space — attention, focus, intuition (as multi-dimensional geometric similarity, including across unrelated surface domains), and context — so that the system can render real-time value judgments on its own outputs, instead of being bounded to structural detection and waiting for retrospective downstream confirmation?**

### Goal

A structural model of thinking-space + a Level 0-2 approximation mechanism, with honest limits, that:
1. Models what thinking-space IS (components and their interaction)
2. Accounts for how humans generate real-time value judgments (not magic — a characterizable process)
3. Provides a concrete approximation approach buildable at Level 0-2
4. Revises the prior finding's claim that real-time detection is bounded to structural
5. Connects to the end-goal program — this is a frontier of autonomous consciousness work, not just regression detection

---

## Finding

### 1. The correction

Value IS retrospective in all cognitive-quality domains — ground truth about importance only arrives through downstream use. But the earlier claim that "real-time regression detection is therefore bounded to STRUCTURAL regression" was wrong. Humans make real-time value judgments constantly. A programmer sees a refactor and says "this will work but isn't elegant — let me try a different angle" long before any downstream confirmation. The judgment is real-time, not structural, and not subjective in the sense of "beyond mechanism." It is the cognitive act of intuition operating on a thinking-space.

Applied AI already implements working versions of this — LLM-as-judge, chain-of-thought, self-consistency, analogical retrieval. The capability is not theoretical. The question is how to architect it as a proper cognitive discipline that avoids the failure modes that would cause it to silently mis-approximate its signature capability.

### 2. The architecture of thinking-space

Thinking-space dynamics — whether biological or artificial — consist of four co-constitutive primitives operating over a shared representation space:

| Primitive | Operational definition | Cognitive role |
|---|---|---|
| **Attention** | The active set — which candidate mental objects are simultaneously held in the working space | Holds multiple possibilities in parallel (not single-threaded) |
| **Focus** | The selection within attention — which one object receives deep processing right now | Allocates depth; the spotlight within the field |
| **Intuition** | The similarity/analogy query over the representation space — including structural matches across surface-unrelated domains | Produces the HUNCH — a real-time relative ordering over attended candidates |
| **Context** | The activation state shaping attention's contents, focus's target, and intuition's relevance criteria | Determines which similarities count |

These are not independent components. They **co-constitute a single cognitive act**:

> *Context primes the representation space → Attention holds multiple candidates → Intuition fires similarity/analogy queries and produces a hunch → Focus selects based on the hunch → Deeper processing runs → Results update context → cycle repeats.*

This is how humans solve problems. It is also (largely unnamed) how modern AI reasoning systems work.

### 3. Two kinds of similarity, not one

The signature claim — "geometrical similarities between shapes even if they are irrelevant, the angle might be the same" — points at a specific kind of intuition that generic embedding similarity does NOT capture:

| Similarity mode | What matches | Example | Approximation |
|---|---|---|---|
| **Surface similarity** | Content, vocabulary, same domain | "This refactor is like that refactor — same module" | Embedding cosine on text |
| **Structural similarity** | Relational pattern, regardless of surface | "This problem has the same SHAPE as a problem in a different field — the angle is the same even though content is unrelated" | Requires scaffolding — not embedding similarity alone |

**Embedding similarity alone captures mostly surface similarity. Structural analogy — the signature ability — requires scaffolded retrieval protocols grounded in Structure-Mapping Engine (SME)-style Alignment + Projection.** Any approximation that naively equates "intuition" with "embedding search" will fail silently on the capability it most needs to deliver.

> **What "scaffolded" means here:** retrieval that goes through intermediate structural steps instead of matching raw text to raw text. Unscaffolded: `query → embed → match stored text embeddings → top-K` (one step, captures shared vocabulary). Scaffolded: `query → LLM articulates its relational structure independent of surface domain → match against pre-computed abstractions of stored findings → project transferable parts back to source` (multiple steps, each stripping surface and keeping structure). The scaffolding is the intermediate transformations — prompts that produce structured relational abstractions, quality gates, multi-sample consensus, SME-style alignment and projection — that force retrieval to operate on structure, not on surface content.

### 4. The three-layer architecture

Regression detection has a fundamental temporal structure. The correct architecture is three layers with different cadences:

```
L1 — Structural (T0, immediate, deterministic)
     Format, contradictions, missing sections, removed safeguards
     Source: git diff, text scan
     Signal type: BINARY / DEFINITIVE

L3 — Real-time hunch (T0, immediate, probabilistic)
     Geometric / analogical match to prior work via thinking-space
     Implementation: /intuit discipline (see below)
     Signal type: PROBABILISTIC, must be calibrated

L2 — Retrospective value (T0+ → T4, delayed, empirical)
     Downstream consumption, citation, supersession, implementation
     Source: existing telemetry, _state.md relationships, SUPERSEDED BY density
     Signal type: EMPIRICAL GROUND TRUTH over time
     Role: CALIBRATION source for L3 (in addition to its own signal role)
```

L3 predicts at T0; L2 confirms or contradicts at T2+; the delta is calibration data. Over time L3 hunches become more reliable as the calibration loop runs. **This closed loop IS the Baldwin cycle** — the system's primary mechanism for self-improvement. L2 is not discarded; its role is expanded to include calibrator-of-L3.

### 5. The L3 mechanism: the /intuit discipline

L3 is implemented as a first-class thinking discipline, `/intuit`, grounded in **Case-Based Reasoning** (Retrieve → Reuse → Revise, Aamodt & Plaza 1994) and **Structure-Mapping Engine** (Alignment → Projection, Gentner). Core operation is a three-step transform-space pattern:

**Forward transform → Scan → Projection**

- **Forward transform:** source text → structured relational abstraction (`predicate(typed_arg, typed_arg)` form, not prose)
- **Scan:** find corpus findings whose abstractions match the source's, in one of three modes (convergent / divergent / adversarial)
- **Projection:** SME-style Alignment + Projection — identify which structural relations align between source and match, project their consequences back to source context as a Popperian hypothesis

The "inverse transform" step is NOT a mathematical reversal. Natural-language abstraction is lossy by design; information discarded in the forward direction is not recoverable. Projection is asymmetric, selective, and guided by structural correspondence — it transfers structural consequences, not surface content. The Z-transform analogy is pedagogical scaffolding; the actual mechanism is SME Projection.

### 6. Phased build

The discipline ships in four phases, each standalone-valuable:

- **Phase A — Core:** convergent mode only; source-first standalone invocation; structured relational abstractions with vocabulary-hint mechanism and multi-sample consensus; flat ranked output; two source_type states (`CORPUS_MATCH`, `INSUFFICIENT_INTUITION`); four decline conditions; six inherited transform failure modes (aliasing, information loss, boundary effects, domain mismatch, overfit, underfit).
- **Phase B — Expansion:** adds divergent mode (the "angle-match" cross-domain analogy — the signature capability); embedded invocation; validator lighter-path; inquiry-state-first entry; differential output with discriminators (gated on ≥60% actionability test); `TRAINING_DISTRIBUTION_MATCH` and `NOT_APPLICABLE` states; lightweight failed-projection logging.
- **Phase C — Adversarial + hypothesis-first:** adds adversarial mode (scans for matches against prior FAILED findings, triggered by specific failure-indicator relationships like `CORRECTED_BY`, `REPLACED_BY`, `status: failed`); hypothesis-first process variant, COUPLED with adversarial (cannot ship without it — otherwise confirmation-bias-by-construction); pipeline-early opt-in flag at inquiry creation.
- **Phase D — Scale + maturity:** adds embedding pre-filter (activates at corpus N > ~100-200); pipeline-early default-on (after calibration matures, N ≥ 30 per discipline); extension to `/explore`, `/sense-making`, `/decompose` as consumers.

Embeddings are NOT foundational at MVP — they are a Phase D scaling layer. At current corpus size (~20 findings), LLM-direct reading of corpus abstractions in-context is sufficient. Embeddings earn their weight when N exceeds the context-window headroom threshold.

### 7. Output schema (Popperian, verifiable)

Each seed carries:
- `source_anchor`, `abstraction`, `corpus_match`, `structural_alignment`, `transferable_projection`
- `prediction`, `prediction_window`, `observable_outcome` (Popperian — every seed is a testable prediction with a specific L2 signal that will later confirm or refute)
- `reliability` (0-1; honest confidence)
- `hunch_state` ∈ {POSITIVE, NEGATIVE, INSUFFICIENT_HUNCH}
- `source_type` ∈ {CORPUS_MATCH, TRAINING_DISTRIBUTION_MATCH, ADVERSARIAL_MATCH, NOT_APPLICABLE, INSUFFICIENT_INTUITION}

Source-type labels are **verifiable**, not LLM self-reported. `CORPUS_MATCH` requires a cited file path and excerpt; verification checks path existence and excerpt presence. The LLM cannot fake what isn't there.

Recorded hunches (entering the calibration log) require the full schema. Transient in-flight hunches may have partial structure.

### 8. Integration patterns

- **`/innovate`:** embedded + inquiry-state-first — seeds feed innovation mechanisms (especially Domain Transfer and Combination). Structural analogies from `/intuit` become starting points for Domain Transfer; failed-projection seeds become Absence Recognition inputs.
- **`/td-critique`:** embedded validator mode — prosecution and defense pass candidate hypotheses; `/intuit` returns corpus-grounded verdicts informing adversarial testing.
- **Pipeline-early (Phase C opt-in, Phase D default-on):** `/MVL+` at inquiry creation auto-invokes `/intuit` on the new `_branch.md`, producing baseline intuition before `/explore`.
- **Mental model:** AlignStack's corpus is an "opening book" — prior positions with transferable moves attached. `/intuit` is the lookup mechanism. Users think of each inquiry as a position to look up.

### 9. Connection to the end-goal

Thinking-space dynamics are the substrate of cognition itself, which makes this finding a frontier of the `autonomous_consciousness_goal` program — not a regression-detection refinement. The Baldwin cycle (the end-goal's self-improvement mechanism) REQUIRES real-time hunches as input. Without L3, the autonomy ladder has no substrate for Level 3+. The three-layer architecture with L3 at its center — instantiated as `/intuit` — is therefore load-bearing for the end goal: it is where the system develops a functional analogue of first-person cognition.

### 10. Honest limits

**What the MVP CAN do:**
- Produce real-time probabilistic value hunches on source text (Phase A onward)
- Capture convergent pattern-match intuition with corpus-grounded seeds (Phase A)
- Approximate structural analogy via scaffolded abstraction retrieval (Phase B)
- Detect failure-pattern matches via adversarial mode (Phase C, once corpus has failure-annotated findings)
- Calibrate hunches against retrospective outcomes over time (Phase B+)
- Generate Baldwin seeds from calibrated hunch patterns (Phase D)

**What the MVP CANNOT do:**
- Replace L2 retrospective validation — hunches without calibration become confidently wrong
- Guarantee structural-analogy capture — predicate stability and signal independence need empirical validation
- Produce ground-truth judgments — reliability is probabilistic, not certainty
- Handle the closed-vocabulary cases where LLM training substrate systematically misses patterns

**What requires infrastructure we don't have (deferred):**
- Full neural thinking-space modeling (too wide for MVP)
- ML-layer attention-weight introspection
- Chunk-level embedding granularity (finding-level is sufficient at current corpus size)
- Live calibration weight updates (MVP records only)
- Custom-tailored "Z-space" generation per problem (future Level 3 capability beyond brute-force transfer)

**What we accept as structural:**
- LLM "intuition" is a functional analog of human intuition, not identity — training-distribution bias is real and is corrected only through calibration over time, not through design
- Information loss in forward-transform is STRUCTURAL (SME Projection is asymmetric by design), not a bug to repair
- Sparse calibration data in early operation is inevitable; N-gated claims prevent premature confidence
- No approximation of thinking-space is the thinking-space itself; all claims are about the approximation

---

## Reasoning

### Why the "real-time = structural only" claim was wrong

The claim correctly rejected subjective real-time metrics — a human asked "does this feel less useful?" is reporting a judgment the system can't verify. But it over-corrected by concluding that all real-time judgment must be structural. The gap: a real-time judgment can be MECHANISTIC without being STRUCTURAL. LLM-as-judge, chain-of-thought, self-consistency, analogical retrieval are working AI mechanisms that produce real-time probabilistic value signals through characterizable processes, not subjective human introspection. Applied AI has been doing this for years. The retreat to structural-only was a philosophical retreat, not an engineering necessity.

### Why three layers, not two or four

Two layers (L1 + L2) leaves the real-time value signal unaddressed — the system has no way to pre-empt regression, only to detect it retrospectively. Four or more layers over-segments the temporal structure without adding distinct signal types. Three layers captures the three structurally distinct signal modes: deterministic binary (L1), probabilistic real-time (L3), empirical delayed (L2). Each has its own source, cadence, and failure mode. Collapsing any two merges distinct mechanisms.

### Why intuition is decomposed into two similarity modes

The signature claim explicitly named the harder case: "the angle might be the same" across unrelated surface domains. Cognitive science (Structure-Mapping Theory, Hofstadter/Mitchell's Copycat) confirms the distinction: humans recognize deep structural analogies that don't show up in surface features. Collapsing the two modes into one (as embedding similarity alone does) silently fails on the signature capability. The finding therefore treats structural analogy as a separate primitive requiring scaffolded protocols.

### Why /intuit exists as a first-class discipline

Earlier drafts placed the L3 mechanism as infrastructure pieces (P6/P7) buried inside the L3 layer. Promoting it to a first-class discipline with its own spec, artifact, multi-location invocation, and phased build makes the architecture inspectable and the mechanism callable from anywhere in the SIC loop. The promotion also aligns with the structural reality that intuition is not a single-location operation — it shows up before sensemaking, inside innovation, inside critique, and standalone.

### Why the Z-transform analogy had to be rescued

The Z-transform works because the transform is linear and exactly invertible. Natural-language abstraction is neither. Applied literally, the "inverse transform" step is incoherent — you cannot recover source content from an abstraction, because surface is deliberately discarded in the forward direction. The rescue was substitution: SME's Projection step preserves the "going back" structure but with correct properties (asymmetric, selective, lossy, structurally guided). The three-step pattern remains pedagogically useful; the mechanism rests on mature precedent.

### Why the MVP is phased

The full assembled feature set (3 scan modes + hypothesis-first + differential output + 5 source_type values + failed-projection logging + pipeline-early + validator + etc.) is roughly 2× the feature surface of existing disciplines like `/explore`. Shipping all at once risks failure of the whole discipline if any piece fails. The four-phase build (A/B/C/D) delivers standalone value at each phase; later-phase failure doesn't invalidate earlier phases; calibration maturity gates later phases.

### Why source-type labels must be verifiable

The LLM cannot reliably introspect whether a hunch came from in-context corpus vs training distribution. Self-reported labels would be systematically unreliable. The design makes labels MECHANICALLY VERIFIABLE: `CORPUS_MATCH` requires a cited path + excerpt (checkable); `TRAINING_DISTRIBUTION_MATCH` = no cited path; `ADVERSARIAL_MATCH` = cited match has specific failure-relationship annotations; `NOT_APPLICABLE` = explicit decline with reason. The LLM can't fake what isn't there.

### Why hypothesis-first mode is coupled with adversarial

Starting with a hypothesis biases the process toward confirming it — confirmation-bias-by-construction. The coupling with adversarial scan (which explicitly searches for CONTRADICTING evidence) turns hypothesis-first into honest falsification testing. Without adversarial, hypothesis-first is the trap. With adversarial mandatory, it becomes Popperian. The two cannot ship separately.

### Why static-feature anchors (when they enter in a future phase) are framed as consistency anchors only

Hand-crafted features encode the designer's assumptions and systematically miss what the designer didn't think of. Cognition is not chess — no closed rule system justifies feature engineering as ground truth. Static features exist (in a later phase) only as a SECOND CHANNEL against which LLM hunches are cross-checked. Divergence between LLM and static flags for review; it does not validate the static. If implementation slips to "LLM hunch is wrong because static features disagree," the idea is killed.

### Why Baldwin seeds never bypass the SIC loop

Letting hunch patterns auto-generate spec changes lets the system drift in directions the user doesn't intend, amplifying earlier noise. Instead: hunch-pattern seeds produce INQUIRY PROPOSALS that enter the normal SIC loop. Humans review findings. Seed-generation activates only after P10 shows the hunch mechanism is well-calibrated (minimum N per discipline).

### Reconciliation with predecessors

`regression_detection_design` was architecturally superseded by `importance_measurement_problem`, which was then CORRECTED on its "real-time = structural only" claim by this finding. This finding is in turn REFINED by `intuition_as_discipline`, which makes /intuit a first-class discipline (absorbing P6/P7 from this finding's original phased-build plan into the /intuit discipline, and reordering embeddings from Phase 1 to Phase D).

Each refinement preserves the predecessor's load-bearing claims while sharpening one specific decision. The architecture accumulates rather than thrashes.

---

## Open Questions

1. **Predicate vocabulary evolution** — the vocabulary-hint mechanism encourages predicate reuse across calls but may converge too narrowly (reducing expressiveness) or fail to stabilize (predicate explosion). P14 stability test (≥70% predicate agreement on similar sources) is the first-order check; longer-term, explicit vocabulary curation may be needed.

2. **Abstraction quality ceiling** — per-finding text abstractions have limits. Deeper relational representation (Structure-Mapping Theory formal predicates, typed relational graphs) may be needed at scale.

3. **Sparse-calibration phase** — calibration curves require N ≥ 30 per discipline for "well-calibrated" claims. At current Baldwin cycle rates (unknown but likely slow), this threshold may take a long time. Value during the sparse phase is operational but not yet calibrated.

4. **Adversarial corpus thinness** — adversarial mode depends on failure-annotated findings (`CORRECTED_BY`, `REPLACED_BY`, `status: failed`, `correction_scope`). At MVP, the corpus has few explicit failure annotations; a one-time audit to annotate may be needed before Phase C is useful.

5. **Discriminator quality ceiling** — differential output's value depends on LLMs producing meaningfully distinguishing discriminators. P14 test (≥60% actionable) is the gate; fallback to flat ranked list is the escape hatch.

6. **Closed-vocabulary failure cases** — LLM substrate reflects training distribution; there are problem classes where the distribution systematically misses patterns. Calibration eventually corrects this; speed of correction is proportional to how often such patterns appear.

7. **Per-discipline hunch shape variation** — `/explore` might hunch "is the frontier genuinely stable?" — different claim shape than `/innovate`'s "will this candidate survive critique?" Spec-level design per discipline is deferred.

8. **Schema evolution across phases** — as calibration reveals which fields carry signal, how does the schema evolve without invalidating prior calibration records?

9. **Custom intuition-space generation (Level 3 capability)** — the current discipline is brute-force transfer (Level 2 per the end-goal ladder). A system that could generate a custom "Z-space" per problem — tailored transform domain where specifically THIS source's hard operation becomes easy — is a Level 3 capability beyond what /intuit's MVP addresses.

10. **Empirical Baldwin cycle rate** — Phase D Baldwin seed-generation activates after calibration threshold. The actual rate at which AlignStack runs Baldwin cycles is unknown; if too low, the seed-generator may accumulate patterns too slowly to reach useful density.

11. **Multi-head intuition** — `/intuit` as specced operates on one source at a time. Multi-source intuition (structural connections across concurrent inquiries) is an interesting future direction; not scoped.

12. **Human-in-loop bootstrap calibration** — if the sparse-calibration phase is too long, bootstrapping via user review of N≥20 hunches per discipline before production trust is a deferred option. Revisit if Phase 4 validation reveals MVP calibration is insufficient in practice.
