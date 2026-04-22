# Sensemaking: Thinking-Space Primitives — Completeness Audit

## User Input
devdocs/inquiries/thinking_space_primitives/_branch.md

---

## SV1 — Baseline Understanding

The current 4-primitive model (attention/focus/intuition/context) may be missing important primitives. Exploration suggests yes: multiple mature cognitive-science frameworks identify primitives our model doesn't represent. We should figure out which ones to add and whether this changes `/intuit` and the three-layer architecture.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

- **Primitivity test required:** candidates must meet operational criteria to be admitted — not just plausibility. The user explicitly asked for this.
- **Existing architecture preservation:** the three-layer architecture (L1/L3/L2) and `/intuit` as first-class discipline stand unless new primitives structurally force revision.
- **Substrate honesty:** the discipline can only model primitives the LLM substrate can represent. Some human primitives (embodied cognition, felt affective valence, dream-state consolidation) are structurally inaccessible.
- **Level 0-2 buildability:** additions must be operationalizable with current tooling; "real but unmeasurable" primitives must be documented honestly but not trusted for operational load-bearing.
- **Fuzzy detection as entry criterion:** user's hint — a candidate enters further investigation if it has (a) functional role distinguishable from current 4, (b) evidence from human problem-solving, (c) plausible operational handle. Full operationalization is downstream, not the gate.
- **Ship-readiness of `/intuit`:** the discipline is about to ship Phase A; primitive-model changes should land before build starts or the foundation shifts under the implementation.

### Key Insights (from exploration)

- **I1:** Cognitive science has NO consensus primitive list. Every architecture (Baddeley, ACT-R, SOAR, GWT) picks different atoms. This is the ground state of the field, not a bug of our audit. Absolute completeness is unattainable; pragmatic sufficiency is the achievable target.
- **I2:** The current 4 primitives SYSTEMATICALLY UNDERCOUNT. Each collapses multiple distinct operations:
  - Attention collapses: buffer-space + pointer-selection + salience-detection
  - Focus collapses: deep-processing + commitment + inhibition-of-alternatives
  - Intuition collapses: pattern-recognition + evaluation + prospection + abstraction-generation
  - Context collapses: framing + motivation + mood + goals
- **I3:** The primitive list is TYPED, not flat. Four structurally distinct categories emerged: **Operations** (things-you-do), **Buffers** (structures-you-hold-things-in), **Drivers** (motivational/energetic), **Modulators** (shape how primitives activate).
- **I4:** 7 Tier A candidates have multi-source evidence and distinct functional roles: Working memory, Inhibition, Simulation, Motivation, Metacognition, Salience, Evaluation.
- **I5:** The 7 Tier A candidates' COMBINATIONS map onto `autonomous_consciousness_goal`'s consciousness gradient indicators (spontaneous attention = salience + metacognition; intrinsic valuation = evaluation + motivation; real-time steering = metacognition + inhibition; discontinuity awareness = simulation + self-model; intrinsic curiosity = motivation + salience). Consistency signal — the primitive list and the end-goal check each other.
- **I6:** Tier B items (curiosity, mood, temporal projection, abstraction generation, commitment, self-model, intention, rehearsal) partition into sub-primitives of Tier A vs modulators vs emergent behaviors. Not all Tier B is distinct.
- **I7:** Predictive processing (D1) is an ALTERNATIVE ARCHITECTURE not an addition. Adopting it would re-express our primitives in a different frame without adding to the list. Noted as frontier, out of MVP.
- **I8:** Some Tier A primitives may already exist INSIDE the LLM substrate (attention heads, evaluation via reward model fine-tuning, implicit metacognition via introspective training). `/intuit` approximates them externally. Duplication risk — the discipline may re-build what the substrate provides.
- **I9:** Some human primitives are structurally inaccessible to LLM substrate: embodied body-state, felt affective quality, dream-state consolidation. These must be documented as OUT-OF-SCOPE, not silently dropped.
- **I10:** The user's original concern is VALIDATED by evidence, not just plausibility. Missing primitives isn't aesthetic — it's mechanically consequential: `/intuit` calibration accumulates against an incomplete model; Baldwin self-modification operates on mixed signal; autonomy indicators depend on primitives that aren't there to be composed.
- **I11:** `/intuit`'s own failure modes gain new names under the extended primitive set:
  - INSUFFICIENT_INTUITION outputs are PRODUCED BY metacognition (the "I'm stuck" primitive)
  - Abstraction quality variance is partially a SIMULATION primitive quality issue
  - The "confirmation bias" critique risk in hypothesis-first mode is an INHIBITION failure (not enough active suppression of confirming evidence)
  - Reliability scores are partially EVALUATION primitive outputs
- **I12:** Attention as currently specced (target inquiry + `_state.md` relationships + recent + top-K surface) bundles working-memory-construction with pointer-selection. Splitting these gives a cleaner design: working memory is the SET; attention is the POINTER; they evolve on different cadences.

### Structural Points

- **Primitivity test (proposed):** four criteria for admission as primitive:
  1. **Independence** — can you vary it without varying others? If primitive X always changes with primitive Y, they're not independent.
  2. **Necessity** — is thinking-space operation degraded when it's absent? If removing it has no functional cost, it's not load-bearing.
  3. **Composability** — can it combine with other primitives in definable ways to produce higher-level behaviors?
  4. **Irreducibility** — is it decomposable into simpler primitives we already recognize? If yes, it's a composite, not a primitive.
- **Typology (4 types):** Operations / Buffers / Drivers / Modulators
- **7 Tier A admitted candidates:** Working Memory, Inhibition, Simulation, Motivation, Metacognition, Salience, Evaluation
- **Current-4 fate:** each partially preserved, each split or reassigned. Not killed wholesale; refined.
- **/intuit impact points:** P4 (attention), P5 (context), P7 (hunch production), P8 (failure modes + decline), output schema
- **Honest OUT-OF-SCOPE list:** embodied cognition, felt affective quality, dream-state consolidation, Level 3+ custom-Z-space generation
- **Three-layer architecture impact:** primitives live WITHIN layers; L3 gains a richer primitive set; L1/L2 unchanged
- **LLM-internal vs external approximation boundary:** to be decided per primitive — discipline either delegates (trusts substrate) or approximates (external protocol)

### Foundational Principles

- **FP1: Pragmatic sufficiency, not absolute completeness.** The primitive list is "good enough to build on," not "philosophically complete." The field itself has no consensus; we accept that.
- **FP2: Primitivity is testable, not declared.** Any candidate must pass the four-criterion test. This prevents arbitrary expansion.
- **FP3: Typology over flat list.** Primitives partition across operations / buffers / drivers / modulators; completeness must be checked per type, not just by counting.
- **FP4: Substrate-honest modeling.** What the LLM can represent is the ceiling. Primitives beyond that ceiling are named but not operationalized.
- **FP5: Delegation where possible.** If a primitive exists in the LLM substrate (e.g., attention heads), the discipline delegates to it rather than duplicating externally. External approximation is for primitives the substrate lacks or accesses unreliably.
- **FP6: Additions are MOSTLY additive.** Current 4 primitives are not killed wholesale; they are refined (split or reassigned). The existing architecture stands; it becomes richer.
- **FP7: Propagation requires documentation.** Every primitive accepted here MUST be traced to specific impacts on `/intuit` spec and downstream disciplines. No primitive is accepted without propagation.

### Meaning-Nodes

- **Primitive** (central): a functional role in thinking-space that passes the four-criterion test (independent + necessary + composable + irreducible) and is operationalizable (or honestly named as unoperationalizable).
- **Thinking-space primitive set:** the minimum typed collection (operations + buffers + drivers + modulators) required to characterize human-like real-time cognition at a level `/intuit` can approximate.
- **Primitive typology:** the four-category organization (operations / buffers / drivers / modulators) that structures completeness checking and prevents same-type over-representation.
- **Undercount correction:** the act of splitting a current primitive that collapses multiple operations into the separable primitives it contained.
- **Substrate ceiling:** the boundary of what the LLM substrate can represent. Primitives above the ceiling are named but not built.
- **Delegation boundary:** the division between primitives approximated externally by the discipline vs. those present internally in the LLM substrate.

---

## SV2 — Anchor-Informed Understanding

The 4-primitive model isn't wrong — it's under-typed and under-counted. Fixing it is a **refinement**, not a rewrite: each current primitive is split or re-scoped, a typology is imposed, and 7 Tier A candidates join the set. The test for admission is four-criterion (independence + necessity + composability + irreducibility), not authorial judgment. The fix propagates concretely to `/intuit` (P4/P5/P7/P8 and output schema) and explicitly stops at the substrate ceiling (embodied cognition stays named-but-unoperationalized). The user's original concern was correct and the correction path is now concrete.

---

## Phase 2 — Perspective Checking

| Perspective | What it revealed |
|---|---|
| **Technical / Logical** | The typology (operations/buffers/drivers/modulators) is structurally sound; similar distinctions appear in ACT-R (productions vs buffers vs goal-stack). Each Tier A candidate has a clear computational role when described operationally. The primitivity test's four criteria correspond to standard decomposition hygiene (independence + necessity + composability + irreducibility ≈ orthogonality + load-bearing + composable + atomic). |
| **Human / User** | The user wanted to understand primitives by how humans navigate thinking-space. The 7 Tier A candidates all trace to observable human behavior: "I'm holding this in mind" (working memory), "don't think about it" (inhibition), "let me imagine what would happen" (simulation), "this matters more to me" (motivation + evaluation), "wait, I'm stuck" (metacognition), "that caught my eye" (salience). The list is experientially recognizable — important for the user's intuition-driven judgment. |
| **Strategic / Long-term** | At Level 3+ (autonomy), the consciousness-gradient indicators require primitives our current 4 lack. Not adding them forecloses the ability to build toward the end goal. Strategic weight is high: this audit isn't optional if autonomy is the goal. |
| **Risk / Failure** | Two risks: (a) primitive explosion — admitting too many, making the discipline heavy and the typology useless; (b) substrate overreach — claiming to model primitives the LLM cannot represent, producing confident-but-empty outputs. The primitivity test + substrate ceiling principle address both. |
| **Resource / Feasibility** | The 7 Tier A primitives are operationalizable with current LLM tooling. Each has plausible prompt-level or schema-level implementation. The typology's modulators (mood/arousal) are the hardest — may need to be simulated rather than observed; feasible but nuanced. |
| **Definitional / Consistency (INTERNAL)** | *Does the current 4-primitive definition contradict itself?* The exploration showed each current primitive collapses multiple operations — meaning the definition's stated role (e.g., "attention = the active set") and its actual mechanism (which must also include salience detection, working memory buffering, pointer selection) are in tension. **The internal gap in the current 4-primitive definition justifies override.** This is the explicit validation required for overriding a stabilized prior model: the definition's own components are in tension with its stated purpose. |
| **Definitional / Consistency (EXTERNAL)** | The extended primitive set is CONSISTENT with the three-layer architecture (L1/L3/L2). Primitives live WITHIN L3; they don't force a new layer. The L2 calibrator role is unchanged; the L1 structural layer is unchanged. External consistency with `thinking_space_dynamics` and `intuition_as_discipline` findings is preserved as additive refinement. |
| **Meta-Consistency (this sensemaking vs the inquiry's own primitives)** | Self-reference check — if we're claiming better primitives, does THIS sensemaking use the better set? Partially — we've been using metacognition (the "stuck" check), simulation (hypothetical probes), evaluation (ranking candidates), inhibition (killing Tier C candidates), motivation (the user's valuation signal). The extended set wasn't named but was operating. This is indirect evidence for their necessity. |

### Key convergence across perspectives

Technical + Strategic + Definitional-Internal all converge: **the current 4-primitive model has an internal gap (collapsing multiple operations into each); fixing it is required for the end-goal; the fix is feasible**. This is the strongest validation available — the override of a stabilized model is justified not by preference but by internal contradiction.

### Key tension surfaced

Resource + Risk perspectives tension: the 7 Tier A candidates are individually feasible, but integrating all 7 into `/intuit`'s spec risks bloat. Sensemaking must resolve HOW MANY of the 7 ship in Phase A vs later phases, and which operationalize vs which stay named-but-unoperational.

---

## SV3 — Multi-Perspective Understanding

The primitive refinement is not a matter of taste — it's justified by the CURRENT 4-primitive definition's internal contradictions (each collapsing separable operations into one primitive). Override is warranted. 7 Tier A candidates (Working Memory, Inhibition, Simulation, Motivation, Metacognition, Salience, Evaluation) each pass the four-criterion primitivity test and map onto observable human behavior. The primitives live within the existing three-layer architecture; L1/L2 are unchanged. `/intuit`'s spec needs concrete propagation — P4/P5/P7/P8 + output schema all touched. The residual tension is bloat risk: 7 new primitives in `/intuit` Phase A is too much. Sensemaking must resolve the phasing — which primitives ship when, which delegate to LLM substrate vs approximate externally, and which are named-but-unoperational due to substrate ceiling.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: What exactly is the primitivity test, operationally?

**Counter-interpretation:** primitives are whatever mature cognitive science accepts — no independent test needed, just pick a reference framework.

**Why the counter fails (structurally):** cognitive science has no consensus (I1). Picking one framework (Baddeley, ACT-R, predictive processing) imports that framework's assumptions wholesale. Our needs are specific — we need primitives operationalizable by `/intuit` at Level 0-2. Reference frameworks are sources of candidates, not final arbiters. We need a test calibrated to our purpose.

**Resolution:** Four-criterion primitivity test applied to every candidate:
1. **Independence:** can the primitive be varied without co-varying another recognized primitive? Behavioral and computational evidence count. If removal or alteration of candidate X always changes primitive Y, they're not independent — one is a sub-primitive or both are facets of a single deeper primitive.
2. **Necessity:** is thinking-space operation DEGRADED when this primitive is absent? Test by construction: does the failure mode analysis of `/intuit` have unexplained residuals without this primitive? If yes, necessary.
3. **Composability:** can it combine with other primitives in definable, non-arbitrary ways to produce higher-level behaviors? The 7 Tier A candidates + current 4 must be able to reconstruct observable human cognitive acts as compositions.
4. **Irreducibility:** is it decomposable into simpler already-recognized primitives? If yes, it's composite, not primitive. If no — or if its decomposition requires primitives we haven't yet named — it stands as primitive.

HIGH CONFIDENCE.

- **Fixed:** the four criteria; every admission requires passing all four; admissions can be revisited if a later primitive is discovered that decomposes a current one
- **No longer allowed:** authorial declaration of primitive status; picking a single cognitive-science framework as arbiter; accepting candidates because they're "plausible"
- **Depends:** the admission of all Tier A candidates; the typology's 4 categories each hold primitives that pass the test

### Ambiguity 2: Is Simulation a primitive, or a composite?

**Counter-interpretation:** simulation is composite — it's working-memory buffering a constructed representation + intuition-as-pattern-matching against the simulation's outputs + evaluation of those outputs. Three primitives working together, not a new one.

**Why the counter fails:** simulation has a distinct computational operation — **construction of a representation not currently present in input**. Working memory can hold simulation outputs but can also hold retrieved memories or sensory input; construction is the distinguishing act. Hippocampal evidence (amnesia patients who can't remember also can't imagine the future) points to a SHARED CAPABILITY that is neither pure memory nor pure perception. The composite story doesn't explain this shared deficit.

**Resolution:** **Simulation is primitive.** It passes all four criteria:
- Independence: can be varied (imagination capacity varies across individuals independent of memory capacity, modestly)
- Necessity: without it, /intuit's abstraction step has no primitive producing it; hypothetical reasoning has no primitive; prospection has no primitive
- Composability: combines with evaluation (imagine + rate) and motivation (imagine what I want) in definable ways
- Irreducibility: cannot be decomposed to working memory + intuition; construction is its distinguishing operation

HIGH CONFIDENCE.

- **Fixed:** Simulation as a primitive operation in the typology
- **Not allowed:** treating simulation as skillful application of other primitives; treating `/intuit`'s abstraction step as unique rather than a simulation-primitive application
- **Depends:** `/intuit`'s forward-transform step documentation; Tier B candidate disposition (temporal projection, mental rehearsal, abstraction generation all revisited as simulation sub-applications)

### Ambiguity 3: Motivation vs Context — one primitive or two?

**Counter-interpretation:** motivation is what "context" has always meant in the current 4 — the framing that shapes relevance. They're the same primitive with different names.

**Why the counter fails:** motivation and framing are orthogonal. Same framing (same inquiry branch) with different motivational intensity produces very different cognitive outputs (effort allocated, hunches generated). Same motivation (same drive) under different framings produces different hunches. Orthogonality is evidence of independence.

**Resolution:** **Motivation is a separate primitive; Context is refined to FRAMING specifically.** Their functional roles are:
- **Motivation (Driver type):** allocates effort; controls how long to stay on a problem; directs across candidate problems
- **Context (Driver/Modulator hybrid, refined):** the framing state — which inquiry, which specs, which prior findings, which goals are active. Shapes relevance, not effort.

HIGH CONFIDENCE.

- **Fixed:** Motivation as distinct Driver-type primitive; Context refined to framing-only role
- **Not allowed:** using "context" as a catch-all for motivational state; conflating framing (what problem?) with effort (how hard?)
- **Depends:** `/intuit`'s P5 refactor — splits into framing-context and motivation-driver

### Ambiguity 4: Is Metacognition one primitive or two (monitoring + control)?

**Counter-interpretation:** monitoring and control are separable operations with different properties — treat as two primitives.

**Why the counter fails:** functionally they're coupled — control without monitoring has nothing to control from; monitoring without control produces a signal with no consumer. Together they form a feedback loop that operates as a unit. Separating them produces an artificial distinction where the actual operation is the loop itself.

**Resolution:** **Metacognition is ONE primitive with two sub-operations (monitoring + control).** Passes primitivity test as a unit:
- Independence: varies independently of other primitives
- Necessity: required for "I'm stuck" signals, INSUFFICIENT_INTUITION outputs, real-time steering
- Composability: combines with inhibition (stop + try-different), simulation (imagine different approach), motivation (allocate effort to this vs that)
- Irreducibility: cannot be reduced to simpler primitives — monitoring and control are each incomplete alone

HIGH CONFIDENCE.

- **Fixed:** Metacognition as one primitive with named monitoring + control sub-operations; both must be present for the primitive to be "active"
- **Not allowed:** treating monitoring as a standalone primitive; treating control as synonymous with focus
- **Depends:** `/intuit`'s INSUFFICIENT_INTUITION output is formally attributed to the Metacognition primitive

### Ambiguity 5: Current 4 — retain, split, or replace?

**Counter-interpretation (replace):** the current 4 are flawed (each undercounts); replace them entirely with the 7 Tier A candidates.

**Why this counter fails:** the current 4 are not WRONG, they're UNDER-SPECIFIED. Attention still refers to a real thing (the active-set pointer); focus still refers to deep-processing selection; intuition still refers to similarity-based recognition; context still refers to framing. Each has a real residual role after its collapsed sub-operations are extracted. Replacement would throw out working abstractions.

**Counter-interpretation (retain):** the 4 are fine; the new candidates are just elaborations.

**Why this counter fails:** the 4 CONFLATE distinct operations, producing ambiguity in operational definitions. Elaborations don't resolve this; separation does.

**Resolution:** **Split + reassign.** Each current primitive keeps its residual role and loses its collapsed sub-operations to new primitives:
- **Attention → Attention (pointer-only) + Working Memory (buffer, split out) + Salience (bottom-up, split out)**
- **Focus → Focus (deep-processing selection) + Inhibition (alternative-suppression, split out) + (Commitment flagged as likely emergent from Focus + Inhibition)**
- **Intuition → Intuition (similarity-based recognition only) + Simulation (construction, split out) + Evaluation (ranking/valuation, split out) + Abstraction generation (as simulation sub-application)**
- **Context → Context (framing only) + Motivation (driver, split out) + Mood (modulator, split out)**

HIGH CONFIDENCE.

- **Fixed:** retain-with-split for all 4; concrete split mapping above
- **Not allowed:** keeping the current 4 undifferentiated; replacing them wholesale
- **Depends:** propagation to all downstream work — every reference to "attention" or "context" etc. in existing specs must now be read under the split meaning

### Ambiguity 6: How do we handle substrate-inaccessible primitives?

**Resolution:** **Named-but-unoperationalized.** Primitives like embodied body-state, felt affective quality, dream-state consolidation are documented in the thinking-space model as EXPLICITLY OUT OF SCOPE with reason. The discipline does not pretend to model them. This honors substrate-honest modeling (FP4) and prevents confidently-empty outputs. HIGH CONFIDENCE.

- **Fixed:** named-out-of-scope list as first-class architectural artifact
- **Not allowed:** silently dropping substrate-inaccessible primitives; pretending to model what the substrate cannot represent
- **Depends:** thinking-space-dynamics stable view documents these explicitly

### Ambiguity 7: LLM-internal vs external approximation

**Counter-interpretation:** the discipline should approximate all primitives externally regardless of whether the LLM has internal versions — this gives consistent control.

**Why this fails:** duplication cost (re-implementing what the substrate provides) + accuracy cost (external approximations likely noisier than the substrate's native versions) + spec bloat.

**Counter-interpretation:** delegate everything to LLM substrate — the discipline is just a prompt-scaffold around native capabilities.

**Why this fails:** LLM's internal "primitives" are not inspectable or controllable from the methodology layer; calibration becomes impossible because the calibration signal passes through opaque internal processes; when the LLM gets replaced or upgraded, the primitives shift silently.

**Resolution:** **Per-primitive delegation decision.** Some primitives are best approximated externally (metacognition via explicit INSUFFICIENT state; inhibition via explicit adversarial scan); others are best delegated to LLM substrate (pattern recognition, evaluation-as-ranking). The decision is PER-PRIMITIVE and documented with reasoning. MEDIUM CONFIDENCE (needs per-primitive analysis in decomposition).

- **Fixed:** per-primitive delegation decision is an explicit spec artifact
- **Not allowed:** uniform approximate-everything or uniform delegate-everything
- **Depends:** decomposition produces the per-primitive decision table

### Ambiguity 8: Is the typology (operations/buffers/drivers/modulators) load-bearing or descriptive?

**Counter-interpretation:** the typology is a convenient organization but not structural. Primitives can be admitted without typology membership.

**Why this fails:** completeness checking is per-type (FP3). Without the typology, completeness is just counting, which can't catch over-representation in one type (e.g., 10 operations, 0 buffers).

**Resolution:** **Typology is load-bearing.** Every primitive admitted must be placed in exactly one of the 4 categories. Admission without placement is invalid. This forces cross-type balance in the admitted set. HIGH CONFIDENCE.

- **Fixed:** every admitted primitive has a typology slot; the 4-category typology itself is part of the thinking-space model
- **Not allowed:** admitting primitives without typology placement; ignoring type-balance in completeness checking
- **Depends:** the stabilized primitive model documents typology explicitly

### Ambiguity 9: Tier B disposition — how to resolve each

**Resolution per item** (condensed):

| Tier B | Resolution | Why |
|---|---|---|
| Curiosity | **Sub-primitive of Motivation (A4)** + information-gap signal from Salience (A6) | Composable from A4 + A6; fails irreducibility independently |
| Mood | **Modulator, not primitive** | Acts on primitives rather than being one; different ontological kind |
| Temporal projection | **Sub-application of Simulation (A3)** | Simulation + time-direction parameter |
| Abstraction generation | **Sub-application of Simulation (A3)** | Simulation + structural-form parameter; /intuit's forward-transform is a use of this |
| Commitment / closure | **Emergent from Focus + Inhibition** | Not primitive itself; when alternatives are suppressed and focus is strong, commitment emerges |
| Self-model | **Sub-primitive of Metacognition (A5)** at higher level of abstraction | Metacognition directed at the self as cognitive object |
| Intention / goal | **Sub-primitive of Motivation (A4)** with explicit content | Motivation + explicit target |
| Mental rehearsal | **Sub-application of Simulation (A3)** | Simulation + repeat-for-strengthening parameter |

HIGH CONFIDENCE.

- **Fixed:** 8 Tier B items each assigned; Tier A remains at 7
- **Not allowed:** re-opening these as primitive candidates without new evidence
- **Depends:** documentation notes Tier B disposition explicitly so it doesn't resurface

### Ambiguity 10: Phasing — how many primitives ship in /intuit Phase A?

**Counter-interpretation:** ship all 7 Tier A + typology in Phase A — the model is unified and complete.

**Why this fails:** `/intuit`'s existing Phase A is already minimal (convergent mode only, flat output, 2 states). Adding 7 primitives makes Phase A no longer minimal. Bloat risk materializes.

**Counter-interpretation:** ship only the split of current 4 in Phase A; add Tier A primitives in later phases.

**Why this partly succeeds but partly fails:** the split IS necessary in Phase A because `/intuit` already uses these primitives implicitly (attention construction = working memory + pointer split; INSUFFICIENT = metacognition output). But not all Tier A primitives are equally needed in Phase A — some (Salience, Evaluation) are refinements; others (Working Memory, Metacognition) are required to make Phase A's existing claims honest.

**Resolution:** **Phased admission paralleling `/intuit`'s phased build:**
- **Phase A essentials:** Working Memory (split from Attention), Inhibition (named, operationalized minimally), Metacognition (names the INSUFFICIENT output), Simulation (names the abstraction step). Plus the current 4's RESIDUAL roles (Attention-as-pointer, Focus-as-deep-processing, Intuition-as-similarity, Context-as-framing). = 8 primitives for Phase A.
- **Phase B adds:** Evaluation (operationalized as separate ranking step), Motivation (split from context), Salience (operationalized via explicit surprise-detection).
- **Phase C+:** Modulator layer (Mood, Arousal) if needed; sub-primitives if evidence accumulates.

HIGH CONFIDENCE.

- **Fixed:** Phase A ships 8 primitives (4 split-down residuals + 4 essentials); Phase B adds 3 more
- **Not allowed:** admitting all 7 Tier A at once into Phase A; deferring the split of current 4 (it's already required to make existing claims honest)
- **Depends:** decomposition partitions the implementation of each primitive's admission per phase

---

## SV4 — Clarified Understanding

After ambiguity collapse, the primitive model is:

**Four types (typology):**
- **Operations:** Attention (pointer), Focus (deep-processing), Intuition (similarity-recognition), Inhibition, Simulation, Metacognition + [Phase B] Evaluation, Salience
- **Buffers:** Working Memory
- **Drivers:** Context (framing-only), [Phase B] Motivation
- **Modulators:** [Phase C+] Mood, Arousal

**Phase A ships 8 primitives** (the split of current 4 + 4 essentials that name currently-implicit operations). Phase B adds 3 more (Motivation, Evaluation, Salience). Phase C+ adds modulators if needed.

**Named-but-out-of-scope:** embodied cognition, felt affective quality, dream-state consolidation.

**Per-primitive delegation decisions:** to be produced in decomposition — some primitives approximated externally, others delegated to LLM substrate.

The current 4 primitives are RETAINED with split — each keeps its residual role and loses collapsed sub-operations to new primitives. This is refinement, not replacement.

Every primitive admission traces to specific impact on `/intuit` (P4/P5/P7/P8, output schema).

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed (locked; decomposition/innovation cannot move these)

- Four-criterion primitivity test (independence + necessity + composability + irreducibility) as admission gate
- 4-category typology (operations / buffers / drivers / modulators) as load-bearing
- 7 Tier A candidates (Working Memory, Inhibition, Simulation, Motivation, Metacognition, Salience, Evaluation) all admitted as primitives
- Tier B items resolved (each assigned as sub-primitive, sub-application, emergent, or modulator)
- Current 4 retained with split — each loses its collapsed sub-operations, keeps residual role
- Phasing mirrors `/intuit`'s Phase A/B/C+
- Phase A = 8 primitives (4 split residuals + Working Memory + Inhibition + Simulation + Metacognition)
- Phase B = +3 (Motivation, Evaluation, Salience)
- Phase C+ = modulators (Mood, Arousal) if needed
- Substrate ceiling is architectural: embodied cognition, felt affective quality, dream-state consolidation = named-but-out-of-scope
- Predictive processing is ALTERNATIVE architecture, not addition — noted as frontier
- Per-primitive delegation decisions are explicit spec artifacts
- Three-layer architecture (L1/L3/L2) is unchanged; primitives live within L3

### Eliminated (no longer viable paths)

- Keeping current 4 primitives undifferentiated
- Replacing current 4 wholesale
- Admitting primitives without typology placement
- Authorial / plausibility-based admission (must pass four-criterion test)
- Picking a single cognitive-science framework as arbiter
- Shipping all 7 Tier A at once in Phase A
- Deferring the split of current 4 past Phase A
- Uniform approximate-everything or uniform delegate-everything for LLM substrate
- Treating the typology as descriptive convenience

### Remaining viable (decomposition territory)

- Exact operational definitions for each Phase A primitive
- Per-primitive delegation decision table (approximate externally vs delegate to LLM)
- Specific `/intuit` spec changes per primitive:
  - P4 refactor (Attention split into Working Memory + Attention-pointer + Salience-in-Phase-B)
  - P5 refactor (Context split into Framing + Motivation-in-Phase-B + Mood-later)
  - P7 refactor (Hunch production uses Simulation for abstraction + Evaluation-in-Phase-B for reliability scoring)
  - P8 refactor (INSUFFICIENT_INTUITION formally attributed to Metacognition; Inhibition as explicit component in adversarial scan)
  - Output schema (source_type field relates to Metacognition verification; Evaluation output may be reliability refinement)
- `enes/thinking_space_dynamics.md` updates to document the typed primitive model
- Impact on three-layer architecture: L3's internal structure gains a typed primitive substrate (unchanged as a layer, richer internally)
- Measurement approach for each primitive (how to verify it's operating, not just modeled)
- Integration with the autonomy-goal consciousness gradient (which indicator = which primitive composition)

---

## SV5 — Constrained Understanding

The primitive model is determined. What decomposition partitions is: (a) operationalizing each Phase A primitive with concrete definitions, (b) deciding delegation vs approximation per primitive, (c) mapping each primitive to specific `/intuit` spec changes, (d) updating the stable thinking-space model in `enes/`, and (e) linking primitives to autonomy-goal consciousness-gradient indicators. These are concrete tasks; every one is bounded by the fixed elements above.

The work is primarily propagation and concrete specification. The hard cognitive-structural decisions are made.

---

## Phase 5 — Conceptual Stabilization

### SV6 — Stabilized Model

**The thinking-space primitive set has a four-type typology (operations / buffers / drivers / modulators), admits 7 Tier A primitives (Working Memory, Inhibition, Simulation, Motivation, Metacognition, Salience, Evaluation) plus the refined residual roles of the current 4 (Attention-as-pointer, Focus-as-deep-processing, Intuition-as-similarity-recognition, Context-as-framing-only), and is phased to parallel `/intuit`'s build (Phase A ships 8, Phase B adds 3, Phase C+ adds modulators). Admission is gated by the four-criterion primitivity test (independence + necessity + composability + irreducibility). Tier B items are resolved as sub-primitives of Tier A, sub-applications of Simulation, emergent behaviors (commitment = Focus + Inhibition), or modulators (mood). Substrate-inaccessible primitives (embodied cognition, felt affective quality, dream-state consolidation) are explicitly named-but-out-of-scope. Per-primitive delegation decisions (external approximation vs LLM-substrate trust) are explicit spec artifacts. The three-layer architecture (L1/L3/L2) is unchanged; primitives live within L3. `/intuit`'s spec propagates concretely via P4/P5/P7/P8 and output-schema refactors.**

### The typed primitive set (Phase A = 8 primitives)

**Operations (6):**
1. **Attention (pointer-only):** points at one item within the active set for processing now
2. **Focus:** allocates depth to the pointed-at item
3. **Intuition (similarity-recognition only):** matches current item against corpus patterns
4. **Inhibition:** actively suppresses candidate thoughts/responses
5. **Simulation:** constructs hypothetical representations (hosts `/intuit`'s forward-transform)
6. **Metacognition:** monitors own state, controls adjustments (produces INSUFFICIENT signals)

**Buffers (1):**
7. **Working Memory:** holds candidate items in the active set; the space the pointer operates within

**Drivers (1):**
8. **Context (framing-only):** which inquiry, which specs, which prior findings, which goals are active

**+ Phase B adds:**
- Motivation (Driver): allocates effort across candidate problems
- Evaluation (Operation): ranks items by worth
- Salience (Operation): bottom-up attention capture

**+ Phase C+ adds (modulators):**
- Mood, Arousal: global shapers of which primitives activate

### Substrate-honest out-of-scope

Structurally inaccessible to LLM substrate; named explicitly:
- Embodied body-state cognition
- Felt affective quality (the "feel" of an emotion, distinct from valence-value)
- Dream-state / offline consolidation
- Level 3+ custom intuition-space generation (future capability, beyond brute-force transfer)

### Per-primitive delegation decision template (to be filled by decomposition)

For each primitive, decide:
- **Approximate externally** (discipline implements via prompt/protocol) — for primitives the LLM substrate doesn't provide reliably
- **Delegate to LLM substrate** (trust native mechanism) — for primitives the substrate provides well
- **Hybrid** — some subsets approximated, some delegated

Decomposition produces the concrete decision per primitive.

### How SV6 differs from SV1

SV1 framed this as "we might be missing primitives." SV6 reframes it as **"the current 4-primitive model is internally inconsistent (each primitive collapses multiple separable operations); the correction is a typed primitive set with 7 Tier A additions (one of which is complex: Metacognition), a four-criterion admission test, explicit substrate ceiling, and phased propagation to `/intuit`."** The change from "maybe additions" to "justified typed refactor" is the main movement. The user's structural concern was correct; the correction path is concrete; downstream impact is specified.

The inquiry also revealed something SV1 did not anticipate: **the primitives' COMPOSITIONS map onto the autonomy goal's consciousness-gradient indicators.** This is a consistency signal cutting across inquiries and strengthens the claim that this primitive set is not arbitrary — it's the minimal set required to build toward the end goal. If we had picked a different primitive set, autonomy indicators would be unreachable.

---

## Saturation Indicators

- **Perspectives:** 8/8 run (technical, human/user, strategic, risk, resource, definitional-internal, definitional-external, meta-consistency); the definitional-internal perspective produced the load-bearing anchor (current 4-primitive definition contains internal contradiction — override justified)
- **Ambiguity resolution:** 10/10 resolved, 9/10 HIGH confidence, 1/10 MEDIUM (LLM-internal vs external delegation — deferred to decomposition per-primitive with explicit reasoning)
- **SV delta:** significant — SV1 "might be missing primitives" → SV6 "typed primitive set with 7 Tier A admissions, four-criterion test, substrate ceiling, phased propagation, mapping to autonomy indicators." Meaningful structural movement.
- **Anchor diversity:** Constraints (6), Insights (12), Structural Points (8), Foundational Principles (7), Meaning-Nodes (6). Balanced across all five types.
- **Accommodation trigger check:** no. Each perspective's anchors were integrated without destabilizing the model. The typology held across all perspectives; the primitive additions were consistent across perspectives.
- **Status quo bias check:** no. The current 4-primitive model was the established structure; the override is justified by the definitional-internal contradiction (internal gap in the definition's own components), not by preference.

**Overall: sufficient for Decomposition.** The primitive model is stable. What remains is operational work — concrete definitions, delegation decisions, `/intuit` spec propagation, `enes/` stable-view updates, and autonomy-goal mapping. All are within the question's scope and bounded by fixed elements.
