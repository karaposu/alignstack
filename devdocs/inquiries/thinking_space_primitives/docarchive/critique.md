# Critique: Thinking-Space Primitives — Completeness Audit

## User Input
devdocs/inquiries/thinking_space_primitives/

---

## Phase 0 — Dimensions

Extracted from sensemaking SV6, decomposition's locked elements, and the branch goal.

| Dimension | Weight | Success criteria |
|---|---|---|
| **Primitivity test rigor** | CRITICAL | Admission gate must be operational (pass/fail decidable) and resistant to authorial drift; the 4 criteria are testable, not aspirational |
| **Substrate honesty** | CRITICAL | Substrate ceiling respected; no primitive is operationalized beyond what the LLM can actually represent; self-reported labels mechanically verifiable |
| **Buildability at L0-2** | CRITICAL | Each primitive has a concrete operational path using current LLM + markdown + inquiry conventions; no speculative infrastructure required for MVP |
| **Coherence with locked prior elements** | CRITICAL | Three-layer architecture, /intuit's phased build, CBR+SME grounding, Popperian schema, retention policy — all preserved unless override is explicitly justified |
| **Falsifiability / measurability** | HIGH | Every primitive produces a verifiable signature; observable signatures are concrete, not hand-wavy |
| **Propagation completeness** | HIGH | /intuit spec actually gets updated (P7-P11); not just "we have primitives" with no downstream change |
| **Cross-inquiry consistency** | HIGH | Autonomy-goal indicators remain reachable via primitive compositions; prior-finding refinements land cleanly |
| **Scope discipline / MVP sanity** | MEDIUM | Each innovation earns its place; phased ship possible; no gratuitous complexity |
| **Long-term evolvability** | MEDIUM | Primitives can be refined via Baldwin cycles without breaking calibration continuity |

Validation: all 9 dimensions trace to specific sensemaking anchors, decomposition locks, or branch-goal requirements. No stray dimensions; no missing critical ones.

---

## Candidate Verdicts

### 1. Primitive Card artifact [CRITICAL: buildability, rigor]

**Landscape position preview:** Viable on rigor + buildability; boundary on MVP sanity (documentation overhead).

**Prosecution:** The Primitive Card duplicates content that already belongs in decomposition's P2, P5, P6. Now P2 produces 8 specs, P5 produces a delegation table, P6 produces verification approaches — and ALSO each primitive gets a card that re-bundles the same content. This is documentation-overhead-as-architecture: a maintenance tax with no operational payoff. When the delegation table updates, the cards must update. When operational definition changes, both the card AND P2 update. Two sources of truth create drift risk.

**Defense:** The card replaces P2+P5+P6 for that primitive — it's a consolidation, not a duplication. The card IS where P2/P5/P6 content lives for that primitive; the decomposition pieces are restructured around the card as the unit. Per-primitive inspectability (all information in one place, readable stand-alone) is the operational payoff. No drift risk if decomposition is updated to make the card the canonical source.

**Collision:** Defense holds IF decomposition is explicitly restructured so the card is the canonical location. Without that restructure, prosecution is right — two sources of truth will drift. The design is correct; the documentation architecture must be clear about which is source-of-truth.

**Verdict: SURVIVE (caveat)** — Primitive Card is the canonical per-primitive artifact; decomposition's P2/P5/P6 are REORGANIZED so card fields absorb what those pieces produced. The inquiry finding must note this restructure explicitly so no drift occurs. Documentation architecture: one card per primitive; the card holds all primitive-specific content; P5 becomes a cross-primitive delegation-decision summary table that references cards; P6 becomes a cross-primitive verification-approach summary that references cards.

---

### 2. Primitive invocation trace [HIGH: falsifiability, measurability]

**Landscape position preview:** Viable on measurability; boundary on buildability (LLM self-reporting reliability).

**Prosecution:** The invocation trace is self-reported by the LLM. Just like the source-type label concern from `intuition_as_discipline` critique, the LLM cannot reliably introspect which of its internal operations correspond to which methodology-layer primitives. It will produce a trace that LOOKS traceable but is a post-hoc rationalization of its generation, not an accurate record of cognitive operations. Debuggability becomes debuggability-theater. Worse, when the trace doesn't match reality, there is no mechanism to detect the mismatch.

**Defense:** The trace is NOT an introspective claim about internal LLM operations — it's a record of EXTERNALLY-OBSERVABLE artifacts. When Simulation fires, it produces a constructed abstraction string; the trace records THAT STRING, not the LLM's internal process. When Metacognition fires, it produces an INSUFFICIENT_INTUITION output with named reason; the trace records THAT OUTPUT. The trace is evidence-based, not introspection-based. LLM-reported "I invoked Metacognition here" must be accompanied by the actual output evidence in the same trace.

**Collision:** Defense wins cleanly IF the trace is structured as evidence-linked (each primitive-invocation entry cites a specific output artifact). Without the evidence link, prosecution is right — it collapses to self-report. The fix: trace entries MUST cite observable outputs, not just claim invocation.

**Verdict: SURVIVE (caveat)** — Primitive invocation trace is kept with requirement: each entry is EVIDENCE-LINKED. Required format per entry: `step N: primitive X operated → produced output Y (cite: path/location)`. No entry without evidence. If an invocation "happened" but left no output artifact, it wasn't an invocation — it was noise. This aligns with the source-type-verification pattern from `intuition_as_discipline` and extends it.

---

### 3. Corpus-located primitive audit [CRITICAL: rigor, falsifiability]

**Landscape position preview:** Viable on rigor; boundary on buildability (audit labor).

**Prosecution:** The corpus audit sounds good in principle but is either (a) too easy to pass — any primitive can be "located" in past findings with sufficient creative interpretation, making the audit a ritual that confirms everything, or (b) too hard to pass — the audit rejects primitives that are genuinely operational because the corpus is small (~20 findings) and hasn't yet exercised every primitive in inspectable ways. First failure mode is rubber-stamping; second kills good primitives prematurely.

**Defense:** The audit has an explicit threshold — the located instance must SHOW the primitive producing an observable signature matching the card's operational definition. Generic "this finding involves thinking, and Metacognition is part of thinking" is not a pass; specific "this INSUFFICIENT_DATA output is structurally identical to what Metacognition-as-defined would produce" IS a pass. For primitives that can't be located (the "too-hard" failure), the audit triggers REFINE (operational definition needs sharpening so it's findable) rather than KILL; kill only when the primitive can't be located AND has no failure-mode signatures either.

**Collision:** Both prosecution modes are real risks; defense's mitigation (specific matching + REFINE-before-KILL) is sound. The audit's value depends on discipline in applying the threshold.

**Verdict: SURVIVE (caveat)** — Corpus audit is the Phase A admission gate, WITH explicit pass criteria: (a) located instance must cite a specific finding+excerpt; (b) the cited excerpt must EVIDENCE the primitive's defined observable signature (not merely plausibly involve it); (c) audit failure → REFINE (sharpen definition until findable), not immediate KILL. If after REFINE a primitive still can't be located, then KILL. The threshold-application discipline is itself a gate — two reviewers required for audit PASS on each primitive, to resist rubber-stamping.

---

### 4. Calibration-first operational definition [CRITICAL: rigor, measurability]

**Landscape position preview:** Viable region across all dimensions.

**Prosecution:** "Observable signature + failure signature + measurement approach governs admission" is great in theory but risks privileging EASILY-MEASURABLE primitives over important-but-hard-to-measure ones. Mood is a real primitive (or modulator) — it's already marked "operationalization deferred" because it's hard to measure. Under strict calibration-first, Mood would never be admitted, even when we know it matters. The gate may exclude the primitives we most need to model.

**Defense:** The calibration-first gate has an explicit escape valve — "named-but-operationalization-deferred" is a valid admission category. Primitives like Mood enter the model with functional role documented but with explicit DEFERRED flag on observable signatures. They don't get operationalized in Phase A but they're not excluded. When measurement approaches mature (substrate evolution or research progress), they move from deferred to operational without re-admitting. The gate distinguishes FULLY OPERATIONAL from DOCUMENTED-WITH-DEFERRED-OPERATIONALIZATION — both are admitted; the latter doesn't ship in /intuit until operationalization arrives.

**Collision:** Defense holds cleanly. The risk materializes only if "deferred" becomes a bucket that swallows everything — discipline required to use it only when the primitive genuinely exceeds current measurability and not as a convenience.

**Verdict: SURVIVE (caveat)** — Calibration-first governs FULL admission (operational ship); DEFERRED admission is its own category with explicit gate: "primitive exceeds current measurability AND has functional role that would otherwise orphan at MVP." Mood and Arousal qualify; Metacognition and Simulation do not (they are measurable via outputs). The DEFERRED bucket's size is itself a telemetry signal — if it grows, measurability work is accumulating debt.

---

### 5. Substrate-versioned delegation table [HIGH: long-term evolvability; MEDIUM: scope]

**Landscape position preview:** Boundary — right direction, over-engineering risk at MVP.

**Prosecution:** Versioning the delegation table per LLM substrate is over-engineering for the current single-substrate (Claude Opus 4.7) MVP. YAGNI applies: the migration paths and version tags add spec surface without immediate payoff. When the substrate actually changes, we re-evaluate — that's when versioning earns its weight. Designing for hypothetical future substrates now distorts MVP decisions toward abstractions that pay off only on substrate-change.

**Defense:** The substrate WILL change (Claude 4.6 → 4.7 already happened during this project; 5.x is certain). Versioning is not speculative; it's near-term inevitability. And the MVP burden is minimal — one version field at the top of the table + optional migration-path notes. The alternative — no versioning — means that when substrate changes, the whole delegation table is re-evaluated without a record of what was previously decided and why, losing the reasoning history.

**Collision:** Prosecution's YAGNI concern is real for COMPLEX versioning (per-primitive migration paths, automated re-evaluation triggers). Defense wins on MINIMAL versioning (one version field + decision timestamps). The trade-off: minimal versioning passes; comprehensive versioning doesn't earn its place at MVP.

**Verdict: REFINE** — substrate versioning in MINIMAL form: (a) a single `substrate_version` field on the delegation table, (b) decision-date per entry, (c) free-text "migration consideration" notes where obvious, (d) NO automated re-evaluation triggers, NO formal per-primitive migration paths (defer to when needed). This captures the value without the over-engineering. Comprehensive versioning is REFINE-tier for post-MVP.

---

### 6. Primitive usage report [MEDIUM: scope, actionability]

**Landscape position preview:** Boundary — valuable longer-term, premature at MVP.

**Prosecution:** Usage report is aggregation over primitive invocations. At current corpus scale (~20 findings, each with maybe 1-5 `/intuit` calls so far — ZERO actually, since /intuit hasn't shipped), there is no data to aggregate. Building the aggregator now is infrastructure waiting for data that doesn't exist. When data arrives (Phase B+, after /intuit ships), THEN build the aggregator against real usage patterns. Premature aggregator risks being wrong-shaped for the actual usage that emerges.

**Defense:** The aggregator is simple — one field per primitive, incremented per invocation, aggregated per inquiry and cross-inquiry. Building it now ensures every `/intuit` call from first ship produces aggregation data; delaying means early invocations are un-aggregated, polluting retrospective analysis. Cheap to build; expensive to retrofit.

**Collision:** Defense wins on the "cheap to build" point for MINIMAL aggregation (just counts). Prosecution's "shape may be wrong" concern applies only to elaborate aggregation (patterns, semantic tagging, trend detection). The compromise: ship minimal counting; defer elaborate analysis.

**Verdict: REFINE** — Primitive usage report in MINIMAL form: per-invocation count increment in a simple log (`devdocs/primitive_usage.log` or similar); cross-inquiry summary deferred to Phase B+ after enough data. No elaborate patterns, semantic tagging, or trend detection at MVP — those are Phase B+ additions after usage data accumulates.

---

### 7. Three-layer primitive refinement (primitives span layers) [CRITICAL: coherence]

**Landscape position preview:** Viable — refines without destabilizing.

**Prosecution:** Sensemaking LOCKED "primitives live in L3." This critique is asked NOT to re-litigate locked elements. Innovation's claim that "Metacognition and Working Memory span layers" overrides a lock without the override being justified against structural contradiction (the definitional-internal justification used to override the current-4 model in sensemaking). Without that justification, this is preference, not structural necessity.

**Defense:** The refinement is not override, it's CLARIFICATION. Sensemaking's lock can be read as "primitives primarily live in L3" — innovation is making this explicit. Metacognition's real-time signal IS L3; its accumulated calibration-curve monitoring IS L2 (calibration is the L2 mechanism). This isn't a new claim; it's a clarification of what "primitives live in L3" meant. Calibration of L3 hunches against L2 outcomes REQUIRES Metacognition-at-system-level to observe the calibration curves themselves — that's L2 territory by definition.

**Collision:** Prosecution's concern about re-litigation is legitimate and the burden-of-justification is on the refinement. Defense must show the refinement is CLARIFICATION (compatible with lock) not OVERRIDE (contradicting lock).

The structural argument: sensemaking admitted Metacognition as a primitive in L3. L2 is defined as the retrospective calibration layer. The calibration mechanism has always required *something* to observe calibration curves and generate refinement signals — sensemaking didn't name this, but functionally it's metacognition at system level. The refinement names it explicitly. This is consistent with the lock, not in tension with it.

Working Memory: sensemaking said primitives live in L3 without explicitly addressing where the buffer PERSISTS across calls. The ephemeral-L3-buffer reading is one interpretation; the persistent-thinking-space reading is another. Sensemaking didn't foreclose the persistent reading; it just didn't address it.

**Verdict: SURVIVE (caveat)** — the refinement is KEPT as clarification of the lock, not override. Must be DOCUMENTED EXPLICITLY as "sensemaking's 'primitives live in L3' is refined to 'most primitives live primarily in L3; Metacognition's system-level monitoring operates in L2; Working Memory spans L3 (ephemeral buffer) and L2 (persistent thinking-space artifact when Phase B+ ships)'. This is clarification, not override — the L3/L2 boundary as calibrated-vs-retrospective is unchanged." If this documentation is absent or ambiguous, the refinement fails coherence and becomes silent override. Explicit documentation is the gate.

---

### 8. Persistent thinking-space artifact (thinking_space.md) [CRITICAL: buildability, scope]

**Landscape position preview:** Boundary — ambitious architectural addition.

**Prosecution:** A new first-class state artifact per inquiry (`thinking_space.md`) significantly expands the system's state surface. Every discipline invocation must now read AND WRITE this artifact. Consistency management (what happens when two disciplines update it? what's the merge rule? when does it get cleaned up?) becomes a new concern. The claim is that Working Memory "lives here" — but Working Memory is already ephemerally in the LLM context; making it persistent adds complexity for unclear operational payoff at MVP. Cross-call continuity sounds valuable but no current use case requires it. YAGNI.

**Defense:** Working Memory as a primitive is only operational if it has a STATE REPRESENTATION — a buffer that holds items. Without a persistent artifact, the primitive is defined but has no substrate for its operation except the LLM context window, which is call-scoped. Calling it a primitive while not giving it first-class state is the "aspirational nomenclature" failure mode (Innovation section warned against this). For the primitive to pass the calibration-first gate, it needs an inspectable signature — and the thinking_space.md IS that signature.

**Collision:** Prosecution wins on YAGNI at MVP: the PAYOFF of Working Memory as a full primitive is at Phase B+ when cross-call continuity matters (Baldwin cycles, long-running investigations). Defense wins on principled consistency: if Working Memory is a primitive, it needs operational state; aspirational nomenclature without operational state is exactly the failure mode the inquiry was supposed to prevent.

Resolution: the artifact is architecturally correct but PHASED. Phase A: Working Memory operates ephemerally (LLM context) with the card's definition noting "full persistence is Phase B+." Phase B+: ship `thinking_space.md` artifact with explicit read/write/merge/cleanup spec.

**Verdict: REFINE** — `thinking_space.md` is deferred to Phase B+ with explicit activation conditions. In Phase A, Working Memory's card documents ephemeral operation (LLM context scope) and notes the persistence path. This avoids YAGNI while preserving the architectural intent. Phase B+ activation triggers: Baldwin cycle begins requiring cross-call continuity; OR empirical use reveals cross-call working memory would have disambiguated hunches.

---

### 9. Autonomy-indicator composition table [HIGH: cross-inquiry consistency; MEDIUM: falsifiability]

**Landscape position preview:** Viable.

**Prosecution:** The composition table maps consciousness-gradient indicators to primitive compositions. But the compositions are CONJECTURAL — "spontaneous attention = Salience + Metacognition" is a plausible decomposition but not a tested claim. If the composition is wrong (the indicator actually emerges from different primitives), the table is CONFIDENT GARBAGE. Worse, it makes primitive-level decisions on the basis of "these primitives are needed for autonomy indicator X" when the composition claim hasn't been validated.

**Defense:** The table is EXPLICITLY FALSIFIABLE — if an indicator appears without the composed primitives, the composition is wrong. If the composed primitives operate without the indicator emerging, the composition is incomplete. The table is a hypothesis set, not a claim set. Its purpose is to SURFACE the dependencies so they can be tested over time as the system operates, not to assert validated compositions upfront.

**Collision:** Defense wins IF the table is explicitly framed as hypothesis-set-for-testing, not validated-composition-set. Without the framing, prosecution is right — readers treat it as asserted truth and make decisions on faulty foundations.

**Verdict: SURVIVE (caveat)** — Autonomy-indicator composition table is kept AS A HYPOTHESIS SET. Explicit framing required: "The compositions below are HYPOTHESES about which primitives produce each indicator. They are falsifiable — if an indicator appears without the composed primitives or vice versa, the composition is wrong and must be revised. This table is the seed for validating primitive-indicator mapping over time, not a validated mapping." Framing IS the gate; without it, the table misleads.

---

## Assembly Check

The 9 survivors (as refined) produce a cohesive primitive-system architecture. Dependency graph:

- **Primitive Card (1)** ← absorbs content from decomposition's P2/P5/P6 — canonical per-primitive artifact
- **Invocation trace (2)** ← evidence-linked; output of every /intuit call
- **Corpus audit (3)** ← Phase A admission gate; feeds Primitive Card `audit_instance` field
- **Calibration-first definition (4)** ← admission rule for Cards; includes DEFERRED bucket
- **Substrate-versioned delegation table (5 refined)** ← minimal versioning; Card's `substrate_status` field links to table entry
- **Primitive usage report (6 refined)** ← minimal counting; aggregates invocation traces
- **Three-layer refinement (7)** ← clarification only; documented explicitly in finding
- **Persistent thinking-space (8 refined)** ← Phase B+; Card's Phase A definition documents ephemeral scope
- **Composition table (9)** ← hypothesis set; labeled as such

### Assembly-level dimension check

| Dimension | Assembly result |
|---|---|
| Primitivity test rigor | YES — card audit gate + calibration-first admission + corpus audit |
| Substrate honesty | YES — verifiable labels + deferred bucket + substrate-versioned delegation |
| Buildability L0-2 | YES — LLM + markdown + inquiry conventions suffice |
| Coherence with locked prior elements | YES — three-layer refinement is clarification; Popperian/CBR/SME intact |
| Falsifiability / measurability | YES — signatures + traces + hypothesis-framed composition table |
| Propagation completeness | YES — Primitive Card absorbs P2/P5/P6; /intuit refactors (P7-P11) reference cards |
| Cross-inquiry consistency | YES — composition table makes autonomy mapping inspectable |
| Scope discipline / MVP sanity | **BOUNDARY** — lots of artifacts for a first ship |
| Long-term evolvability | YES — primitive evolution via Baldwin (deferred) + substrate versioning |

**Scope concern (MEDIUM) is real.** The full assembled spec adds:
- 8-11 Primitive Cards (depending on phase)
- Invocation trace format + every /intuit call produces one
- Corpus audit per primitive (one-time + per new primitive)
- Substrate-versioned delegation table
- Primitive usage log (counting)
- Three-layer refinement documentation
- Composition table (hypothesis set)
- Phase B+: thinking_space.md + elaborate usage aggregation

That's feature-rich for an inquiry that was supposed to audit the primitive set, not add infrastructure.

**Assembly verdict: REFINE (scope staging)** — design is coherent; ship order matters. Propose phased build for the primitive-system infrastructure itself:

**Phase α — Primitive Audit (first ship, standalone value)**
- Primitive Cards for all 8 Phase A primitives (absorbs P2/P5/P6)
- Corpus audit per primitive (admission gate)
- Calibration-first operational definitions
- Three-layer refinement documented in `enes/thinking_space_dynamics.md`
- Autonomy-indicator composition table (as hypothesis set)

**Phase β — /intuit integration (after Phase α primitives admitted)**
- /intuit P4/P5/P7/P8/output schema refactors (decomposition's P7-P11)
- Invocation trace format added to /intuit output
- Primitive usage log (minimal counting) activated at first /intuit ship
- Substrate-versioned delegation table with minimal versioning

**Phase γ — Phase B primitive additions (gated on Phase β calibration)**
- Motivation + Evaluation + Salience primitive cards
- Updates to /intuit spec to include Phase B primitives
- Elaborate usage-pattern aggregation (beyond counting)

**Phase δ — Persistent thinking-space (gated on cross-call use case)**
- `thinking_space.md` artifact spec
- Read/write/merge/cleanup rules
- Phase C+ modulator cards (if operationalization matures)

Each phase delivers standalone value; later-phase failure doesn't invalidate earlier. The phasing aligns with `/intuit`'s own A/B/C/D phases.

---

## Confirming Innovation's Kills

### K1. Primitives as substrate behaviors only (1c pure) — too contrarian
**Check:** holds. Pure version eliminates the discipline layer (spec becomes just prompt orchestration). Spectrum captured in HYBRID delegation decisions. **KILL CONFIRMED.**

### K2. Substrate-takeover as design driver (7c pure) — distorts MVP
**Check:** holds. Pure version forces MVP abstractions to serve hypothetical AGI scenarios. Migration paths in (minimal) substrate-versioned delegation table capture the proportionate version. **KILL CONFIRMED.**

### K3. RAG/microservices as lead framing (6a) — demoted
**Check:** holds. Accurate background; not the novelty. **DEMOTION CONFIRMED.**

### K4. Deep invert-again (audit substrate CoT directly) — outside MVP scope
**Check:** holds. ML-layer work, not methodology-layer. Future research direction. **KILL CONFIRMED.**

---

## Coverage + Convergence

**Accumulator update:**
- 9 candidates evaluated: 5 SURVIVE with caveats, 3 REFINE, 0 KILLED in critique
- 4 innovation kills confirmed
- 1 assembly-level REFINE (phased build α/β/γ/δ)

**Coverage assessment:**
- All 4 CRITICAL dimensions tested against every candidate
- All 3 HIGH dimensions tested per candidate
- 2 MEDIUM dimensions drove scope REFINE and timing decisions
- Unexplored region check: "what happens when primitive cards drift from operational reality?" — addressed via canonical-source-of-truth restructure (Card absorbs P2/P5/P6)
- Unexplored region check: "what if LLMs systematically fail invocation-trace accuracy?" — addressed via evidence-linked entries requirement
- Unexplored region check: "audit-gate rubber-stamping" — addressed via two-reviewer requirement

**Convergence signal:**
- At least one CRITICAL-dimension-clean SURVIVE: **candidate 4 (calibration-first) and candidate 3 (corpus audit) are clean on all critical dimensions** given their caveats are engineering gates (two-reviewer, DEFERRED bucket)
- All caveats are engineering gates / phase sequencing / explicit documentation requirements — no fundamental doubts
- Landscape: STABLE — candidates landed in predicted regions; scope REFINE is critique operating correctly, not failure mode

**Overall: PROCEED** (with phased build requirement and documented engineering gates). The primitive system design is coherent; ship order is the only structural decision remaining, and it's resolved via Phase α/β/γ/δ.

---

## Convergence Telemetry

* **Dimensions evaluated:** 9 / 9, all critical covered: YES
* **Adversarial strength:** STRONG — prosecution named specific, structural concerns per candidate (documentation drift, LLM self-report unreliability, audit rubber-stamping, YAGNI on substrate versioning, premature aggregator, locked-element override, new state surface, conjectural compositions). Strongest advocate would pause on each.
* **Landscape stability:** STABLE — candidates landed in predicted regions; scope-tension produced the phased-build refinement as expected.
* **Clean SURVIVE:** PARTIAL — candidates 3 and 4 clean on all critical dimensions given engineering gates; others have engineering-gate or phase-sequencing caveats. Assembly passes all CRITICAL dimensions under phased build.
* **Failure modes observed:** None from the 7. Critique caught the scope-explosion concern early and produced the phased-build refinement — the discipline operating correctly.
* **Overall: PROCEED** — dimensions covered, adversarial STRONG, clean-SURVIVE candidates exist, assembly-with-phased-build passes all critical dimensions. Ready for finding.
