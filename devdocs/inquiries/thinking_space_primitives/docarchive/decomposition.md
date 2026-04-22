# Decomposition: Thinking-Space Primitives — Completeness Audit

## User Input
devdocs/inquiries/thinking_space_primitives/_branch.md

Sensemaking's SV6 is the partition seed. LOCKED by sensemaking:
- Four-criterion primitivity test (independence + necessity + composability + irreducibility)
- Four-type typology (operations / buffers / drivers / modulators)
- 7 Tier A primitives admitted (Working Memory, Inhibition, Simulation, Motivation, Metacognition, Salience, Evaluation)
- Current 4 retained with split (Attention-pointer / Focus-deep / Intuition-similarity / Context-framing)
- Tier B items all resolved (sub-primitives, sub-applications, emergent, or modulators — 8 items assigned)
- Phasing mirrors `/intuit`: Phase A = 8 primitives, Phase B = +3, Phase C+ = modulators
- Substrate-honest out-of-scope list (embodied cognition, felt affective quality, dream-state consolidation, L3+ custom-Z-space)
- Predictive processing is ALTERNATIVE architecture, not addition — out of MVP
- Three-layer architecture (L1/L3/L2) unchanged; primitives live within L3
- Per-primitive delegation decisions are explicit artifacts (but contents deferred)

What this decomposition partitions is the **concrete specification and propagation work**: filling each primitive's operational spec, deciding per-primitive delegation, producing `/intuit` spec refactors, producing documentation, and updating the stable view.

---

## 1. Coupling Map

```
CLUSTER A: Primitivity Infrastructure (FOUNDATION)
  └─ P1: Primitivity test + Typology + Primitive spec template

CLUSTER B: Primitive Specs (by phase — each applies P1's template)
  ├─ P2: Phase A primitive specs (8 primitives) [KEYSTONE — the largest block]
  │         - Operations (6): Attention-pointer, Focus-deep, Intuition-similarity,
  │                           Inhibition, Simulation, Metacognition
  │         - Buffers (1): Working Memory
  │         - Drivers (1): Context-framing
  ├─ P3: Phase B primitive specs (3 primitives)
  │         - Motivation (Driver), Evaluation (Op), Salience (Op)
  └─ P4: Modulators (Phase C+)
            - Mood, Arousal (named but operationalization deferred)

CLUSTER C: Cross-Primitive Decisions (depends on B)
  ├─ P5: Per-primitive delegation decision table
  │         (approximate externally vs delegate to LLM substrate vs hybrid)
  └─ P6: Per-primitive verification / measurement approach
            (how to tell each primitive is operating, not just modeled)

CLUSTER D: /intuit Spec Propagation (depends on B + C)
  ├─ P7: /intuit P4 refactor — Attention construction split
  │         (Attention-pointer + Working Memory + Salience-in-B)
  ├─ P8: /intuit P5 refactor — Context split
  │         (Context-framing + Motivation-in-B + Mood-in-C+)
  ├─ P9: /intuit P7 refactor — Hunch production uses primitives explicitly
  │         (Simulation for abstraction + Evaluation-in-B for reliability
  │          + Metacognition for INSUFFICIENT + Inhibition for adversarial)
  ├─ P10: /intuit P8 refactor — Failure modes + decline conditions attributed to primitives
  │         (INSUFFICIENT_INTUITION ← Metacognition; overfit/underfit ← Simulation quality;
  │          aliasing ← Working Memory collision; confirmation bias ← Inhibition failure)
  └─ P11: /intuit output schema refactor
            (source_type ← Metacognition verification; reliability ← Evaluation;
             discriminator ← Evaluation + Simulation of counter-hypothesis)

CLUSTER E: Architectural Documentation + External Integration
  ├─ P12: Substrate ceiling + out-of-scope list + autonomy-goal mapping
  │         (named-but-unoperational primitives documented;
  │          primitive-composition → consciousness-gradient-indicator mapping)
  └─ P13: enes/thinking_space_dynamics.md stable-view rewrite
            (integrate typed primitive set, phased additions, substrate ceiling)

Valleys (low-coupling regions — natural cut points):
  A ─ B     (infrastructure vs content — P1 gives template, each primitive applies it)
  B ─ C     (primitive definitions vs decisions about them — decisions are metadata
             layered on definitions; stable contract)
  C ─ D     (decisions vs /intuit refactor — delegation table hands off to refactors)
  D ─ E     (implementation-facing vs documentation-facing — docs summarize decisions)
  P7 ─ P8 ─ P9 ─ P10 ─ P11  (each /intuit refactor touches a different spec section;
                              low cross-coupling once primitive definitions are stable)
  P2 ─ P3 ─ P4  (each phase's primitives are independent of the others once P1 is set)
  P12 ─ P13  (documentation pieces; different target audiences)

Shared utilities (flagged):
  - Primitive spec template from P1 — used by P2, P3, P4
  - Primitivity test criteria from P1 — used by P2, P3, P4 (each primitive must pass)
  - Primitive operational definitions from P2/P3 — read by P5, P6, P7-P11, P12, P13
  - Delegation decisions from P5 — read by P7-P11 (shape implementation)
  - Verification approach from P6 — used by /intuit P14 validation (downstream)
```

### Coupling confidence assessment

| Boundary | Confidence | Why |
|---|---|---|
| A ↔ B | HIGH | Template + criteria are a stable contract; primitive contents don't propagate upward |
| B (P2) ↔ B (P3) | HIGH | Phase A and Phase B primitives are independent of each other once P1 is set |
| B (P2/P3) ↔ B (P4) | HIGH | Modulators are a different typology category with its own rules; independent |
| B ↔ C | HIGH | Decisions are metadata on definitions, one-way flow |
| C ↔ D | HIGH | Delegation table is a contract that refactors consume |
| Within D (P7–P11) | HIGH | Each refactor touches a different /intuit spec section; minimal cross-refactor coupling |
| D ↔ E | HIGH | Documentation reads from D's outputs; one-way |
| P12 ↔ P13 | HIGH | Different documentation layers (architectural ceiling doc vs stable-view finding) |

### What is NOT being decomposed

These are LOCKED by sensemaking and carried as constraints:
- The four-criterion primitivity test itself (applied in P2/P3, not re-derived)
- The typology (operations/buffers/drivers/modulators)
- Which primitives are admitted (7 Tier A + 4 current-4 residuals = 11 for full roadmap)
- Tier B dispositions (8 items resolved)
- Phasing (Phase A=8, Phase B=+3, Phase C+=modulators)
- Three-layer architecture (L1/L3/L2)
- Substrate-honest out-of-scope category (named-but-unoperational)

---

## 2. Question Tree (13 pieces)

### Cluster A — Primitivity Infrastructure

**P1: Primitivity Test + Typology + Spec Template** (FOUNDATION)
- **Question:** What is the exact operational form of the primitivity test, the typology placement rules, and the template every primitive spec must fill?
- **Sub-questions:**
  - **Primitivity test:** for each of the 4 criteria (independence / necessity / composability / irreducibility), what exactly does "passing" mean operationally? What evidence counts for each?
    - Independence: can be tested behaviorally (varies the primitive and checks others) or definitionally (show that two primitives don't co-vary in existing literature); which is the admission standard?
    - Necessity: can be tested by construction (identify a failure mode the primitive prevents) or by removal (show degraded operation without it); which is the admission standard?
    - Composability: requires showing at least one named composition with another primitive; how many required?
    - Irreducibility: show the primitive is not a composite of already-admitted primitives; what if it could be reduced to candidate primitives we haven't admitted yet?
  - **Typology placement rules:** for each of the 4 types, what's the decisive criterion?
    - Operation vs Buffer: operation TRANSFORMS; buffer HOLDS (is static between reads/writes)
    - Driver vs Operation: driver ALLOCATES; operation EXECUTES
    - Modulator vs Driver: modulator SHAPES how others activate (global bias); driver ALLOCATES effort to specific targets
    - Edge cases: attention-pointer sits between operation (points) and buffer (maintains pointer state). Rule: classify by PRIMARY function.
  - **Spec template (fields per primitive):**
    - `name`, `type` (from typology), `operational_definition`, `distinguishing_from` (which other primitives are conceptually nearby), `primitivity_evidence` (evidence per criterion), `composition_examples` (≥2 compositions with other primitives), `substrate_status` (operational / substrate-delegated / named-but-unoperational), `observable_signatures` (how we tell it's running), `/intuit_impact` (which spec section touches it)
- **Verification criteria:** [ ] 4 primitivity-test criteria operationalized; [ ] 4 typology placement rules written; [ ] template has all required fields; [ ] template passes "reverse test" — a candidate that fails any field leaves an obvious gap

### Cluster B — Primitive Specs

**P2: Phase A Primitive Specs (8 primitives)** [KEYSTONE]
- **Question:** For each of the 8 Phase A primitives, fill the P1 template with operational content that passes the primitivity test.
- **Sub-questions (per primitive):**
  - **Attention-pointer (Operation):** the mechanism that points at ONE item within the active set for processing. Operationalized as: the currently-selected target of focus in the prompt context; verified by "which item is being reasoned about right now?"
  - **Focus-deep (Operation):** allocates processing depth to the pointed item. Operationalized as: chain-of-thought length and specificity applied to the current target; verified by "how deep did we go on X vs Y?"
  - **Intuition-similarity (Operation):** pattern-match between current item and corpus (no more; ranking and construction are separate primitives). Operationalized as: retrieval + match scoring; verified by corpus-match presence.
  - **Inhibition (Operation):** actively dampens candidate thoughts/responses to let weaker-but-correct ones surface. Operationalized as: explicit "do not pursue X" instructions + adversarial scan; verified by candidates that WOULD have surfaced in unfiltered generation but don't in inhibited generation.
  - **Simulation (Operation):** constructs representations not currently in input (hypotheticals, abstractions, future states). Operationalized as: constructed-representation production — abstraction strings, "what if" scenarios, projections. Verified by constructed content distinct from input.
  - **Metacognition (Operation, combined monitoring + control):** observes own cognitive state and adjusts. Operationalized as: explicit state assessments ("I'm stuck on X"; "this seems low-confidence"; "I should try Y"); verified by INSUFFICIENT_INTUITION outputs and mid-run course corrections.
  - **Working Memory (Buffer):** holds candidate items in the active set accessible for operation. Operationalized as: the set of items currently in prompt context OR explicitly tagged as "in scope"; verified by which items can be referenced without retrieval.
  - **Context-framing (Driver, narrowed):** the framing state — current inquiry, active specs, relevant prior findings, current goals. Operationalized as: the _branch.md + project specs + phase indicator; verified by framing consistency across operations.
- **Verification criteria (overall piece):** [ ] 8 primitive specs complete using P1 template; [ ] each passes the 4-criterion primitivity test with evidence; [ ] typology placement explicit and defended; [ ] observable signatures are concrete (not vague); [ ] /intuit impact named per primitive

**P3: Phase B Primitive Specs (3 primitives)**
- **Question:** Fill P1 template for Motivation, Evaluation, Salience.
- **Sub-questions:**
  - **Motivation (Driver):** allocates effort across candidate problems. Operationalized as: goal-intensity parameter + time-on-problem signal; verified by effort distribution observable in run length and thoroughness.
  - **Evaluation (Operation):** ranks items by worth (distinct from similarity matching). Operationalized as: LLM-as-judge ranking with valuation criteria; verified by ranking consistency and calibration against outcomes.
  - **Salience (Operation):** bottom-up attention capture by surprise/novelty. Operationalized as: surprise-detection prompts ("what's unexpected about this?") + novelty signals from embedding distance OR from explicit prediction-error signals; verified by re-ranking of attention after surprise events.
- **Verification criteria:** [ ] 3 primitive specs complete; [ ] each passes the 4-criterion primitivity test; [ ] typology placement correct; [ ] Phase B trigger condition documented (activate when Phase A calibration is stable)

**P4: Modulator Specs (Phase C+)**
- **Question:** Name Mood and Arousal as modulators, document their structural role, and document that operationalization is deferred.
- **Sub-questions:**
  - **Mood (Modulator):** affective background biasing which patterns feel relevant. Structural role: globally scales activation of operations (e.g., positive mood broadens attention; negative mood narrows; anxiety raises salience threshold for threat-like patterns). Operationalization: DEFERRED; effectively represented only if LLM temperature / sampling parameters are treated as mood proxies — weak mapping.
  - **Arousal (Modulator):** activation intensity, independent of valence. Structural role: scales all cognitive operations uniformly. Operationalization: DEFERRED; potentially represented via LLM temperature or via explicit "urgency" parameter.
  - **Deferral reasoning:** modulators are real primitives but hard to operationalize without substrate access to affective state. Documented as named-but-operationally-deferred. May become operational if Phase D+ adds explicit affect-modeling.
- **Verification criteria:** [ ] 2 modulator specs with structural role; [ ] operational status marked DEFERRED with reasoning; [ ] activation condition for operationalization (Phase D+ trigger) documented

### Cluster C — Cross-Primitive Decisions

**P5: Per-Primitive Delegation Decision Table**
- **Question:** For each admitted primitive, decide: approximate externally (discipline-level), delegate to LLM substrate, or hybrid — with reasoning.
- **Sub-questions:**
  - Per primitive, apply decision criteria:
    - **Does the LLM substrate provide this primitive reliably?** (for attention, pattern-recognition, evaluation — likely yes; for inhibition, metacognition, simulation — partially)
    - **Does the discipline need to CONTROL this primitive for calibration?** (if yes, favor external approximation for visibility)
    - **Does external approximation add value over substrate delegation?** (if duplicative without gain, delegate)
  - Produce decision per primitive:
    - Attention-pointer: DELEGATE (LLM's attention mechanism handles this natively; discipline doesn't need to override)
    - Focus-deep: DELEGATE (CoT depth emerges from prompting; external control would be heavy-handed)
    - Intuition-similarity: HYBRID (LLM provides native similarity; discipline scaffolds with corpus retrieval for inspectability)
    - Inhibition: APPROXIMATE EXTERNALLY (adversarial scan + explicit "do not consider X" prompts; discipline needs explicit control for Popperian frame)
    - Simulation: APPROXIMATE EXTERNALLY (abstraction prompts, hypothesis construction — visibility required for calibration)
    - Metacognition: APPROXIMATE EXTERNALLY (INSUFFICIENT state, decline conditions — must be inspectable)
    - Working Memory: HYBRID (LLM context is native working memory; discipline adds explicit scope tagging for inspectability)
    - Context-framing: APPROXIMATE EXTERNALLY (inquiry folder + state + specs — explicit artifacts the LLM reads)
    - Phase B additions:
      - Motivation: APPROXIMATE EXTERNALLY via explicit effort parameters and phase indicators
      - Evaluation: HYBRID (LLM-as-judge for ranking; discipline scaffolds criteria)
      - Salience: APPROXIMATE EXTERNALLY (explicit surprise-detection prompts; LLM's internal salience not inspectable)
  - Document reasoning for each; flag duplication risks (where external approximation might conflict with substrate's native version)
- **Verification criteria:** [ ] decision table complete for all 11 primitives (8 Phase A + 3 Phase B); [ ] reasoning per decision; [ ] duplication risks flagged; [ ] modulator row marked "substrate-only, no discipline-level handling"

**P6: Per-Primitive Verification / Measurement Approach**
- **Question:** How does the discipline verify that each primitive is actually operating, not just modeled?
- **Sub-questions:**
  - Per primitive, produce:
    - **Observable signature** (what's visible when the primitive is active)
    - **Test case** (specific scenario that exercises the primitive)
    - **Failure signature** (what's visible when the primitive is NOT operating despite being claimed)
  - Aggregated measurement: how does an `/intuit` run report which primitives contributed? (e.g., "this hunch used Simulation + Intuition-similarity + Evaluation; Inhibition not triggered")
  - Calibration integration: how do primitive-level verification signals feed `/intuit`'s P10 calibration log?
- **Verification criteria:** [ ] observable signature + test case + failure signature per primitive; [ ] aggregation protocol specified; [ ] calibration integration specified

### Cluster D — /intuit Spec Propagation

**P7: /intuit P4 Refactor — Attention Construction Split**
- **Question:** How does `/intuit`'s current P4 spec change when Attention is split into Attention-pointer + Working Memory + Salience (Phase B)?
- **Sub-questions:**
  - Current P4 constructs a hybrid "attention set" bundling multiple operations. Split:
    - Working Memory (buffer): the set of items in scope for /intuit call — target inquiry, linked findings, recent activity, top-K surface similar
    - Attention-pointer: the currently-processed target within the set — which item is being evaluated right now
    - Query-expanded attention (prior's concept): reframed as Working Memory expansion by hunch target, not as a separate attention mechanism
    - Salience (Phase B): adds surprise-triggered re-entry into the Working Memory set
  - Document the refactored P4 sub-steps:
    1. Build Working Memory (buffer construction)
    2. Initialize pointer (default: target inquiry)
    3. Move pointer through items for processing (deep/shallow per Focus)
- **Verification criteria:** [ ] WM / pointer / salience distinction explicit; [ ] sub-steps enumerated; [ ] Phase B salience trigger specified; [ ] backward-compat with existing P4 concept mapping documented

**P8: /intuit P5 Refactor — Context Split**
- **Question:** How does `/intuit`'s current P5 change when Context is split into Context-framing + Motivation (Phase B) + Mood (Phase C+ modulator)?
- **Sub-questions:**
  - Current P5 captures a "context block" bundling framing + specs + discipline mode. Split:
    - Context-framing: inquiry + specs + goals (unchanged in Phase A)
    - Motivation (Phase B): effort parameter, problem-salience weight, time-budget
    - Mood (Phase C+): modulator, structurally represented as scaling factors on other primitives, operationally deferred
  - Document P5 refactor sub-steps per phase
- **Verification criteria:** [ ] framing / motivation / mood distinction explicit; [ ] Phase A carries framing only; [ ] Phase B adds motivation slot; [ ] Phase C+ modulator slot marked DEFERRED

**P9: /intuit P7 Refactor — Hunch Production Uses Primitives Explicitly**
- **Question:** How does `/intuit`'s hunch-production step refactor when primitives are named explicitly?
- **Sub-questions:**
  - Current P7 (LLM-as-judge with scaffolding). Refactor references:
    - Simulation → produces the forward-transform abstraction + hypothesis-first candidates
    - Intuition-similarity → produces corpus matches (convergent/divergent/adversarial scan)
    - Evaluation (Phase B) → produces reliability score + differential ranking
    - Metacognition → produces INSUFFICIENT_INTUITION when conditions met
    - Inhibition → runs adversarial scan; suppresses surface-similar-but-structurally-unrelated matches in divergent mode
  - Document per-primitive contribution to the hunch
- **Verification criteria:** [ ] each primitive's contribution to P7 named; [ ] phase mapping (Phase A uses Simulation + Intuition + Metacognition + Inhibition; Phase B adds Evaluation); [ ] composition rules documented

**P10: /intuit P8 Refactor — Failure Modes + Decline Attribution**
- **Question:** How do `/intuit`'s 6 inherited failure modes and 4 decline conditions map to primitives?
- **Sub-questions:**
  - Attribution:
    - Aliasing ← Working Memory collision (distinct sources occupy same slot)
    - Information loss ← structural property of Simulation's forward direction
    - Boundary effects ← Working Memory boundary (decontextualized items)
    - Domain mismatch ← Intuition-similarity applied across non-matching corpus
    - Overfit abstraction ← Simulation quality (too specific; retry)
    - Underfit abstraction ← Simulation quality (too generic; retry)
    - Empty abstraction → INSUFFICIENT_INTUITION ← Metacognition
    - No corpus matches → INSUFFICIENT_INTUITION ← Intuition-similarity + Metacognition
    - Contradictory seeds → surface contradictions ← Inhibition failure (alternatives not suppressed)
    - Projection failure → corpus_limit_seed ← structural property of Alignment step
  - Document attribution so primitive failures are diagnosable
- **Verification criteria:** [ ] each failure mode / decline condition attributed; [ ] attributions enable diagnosis ("which primitive failed when X happened?"); [ ] new failure modes surfaced by primitive split are added (e.g., "Metacognition silent failure — no INSUFFICIENT signal when one was warranted")

**P11: /intuit Output Schema Refactor**
- **Question:** How does the output schema change to reflect primitive-level origins?
- **Sub-questions:**
  - Current schema has 10-11 fields. Add primitive-attribution metadata:
    - `primitive_contributions`: array of primitive names that shaped the seed
    - `simulation_artifact`: the constructed abstraction or hypothesis (explicit Simulation output)
    - `evaluation_basis` (Phase B): what Evaluation used to score reliability
    - `metacognitive_state`: POSITIVE / NEGATIVE / INSUFFICIENT_INTUITION with reason
    - `inhibition_applied`: list of alternatives actively suppressed (for transparency)
  - Decide whether primitive-attribution is required or optional per field
- **Verification criteria:** [ ] schema refactor shown as diff against current; [ ] per-field required/optional decided; [ ] primitive-attribution explicitness level documented (full / summary / opt-in)

### Cluster E — Architectural Documentation & External Integration

**P12: Substrate Ceiling + Out-of-Scope + Autonomy-Goal Mapping**
- **Question:** Document the substrate ceiling (primitives the LLM can't represent) and the primitive-composition → autonomy-indicator mapping.
- **Sub-questions:**
  - **Substrate ceiling documentation:**
    - Embodied cognition — no body-state; deferred
    - Felt affective quality — can represent valence + arousal as scalars, cannot represent qualia; deferred
    - Dream-state / offline consolidation — LLM runs are clean-slate; no equivalent
    - Level 3+ custom-intuition-space generation — brute-force transfer at Level 2; future capability
  - **Autonomy-goal mapping:** for each consciousness-gradient indicator, name the primitive composition that produces it:
    - Spontaneous attention = Salience (Phase B) + Metacognition
    - Intrinsic valuation = Evaluation (Phase B) + Motivation (Phase B)
    - Real-time steering = Metacognition + Inhibition
    - Discontinuity awareness = Simulation (temporal projection sub-application) + self-model (sub of Metacognition)
    - Intrinsic curiosity = Motivation (Phase B) + Salience (Phase B) + information-gap from Intuition-similarity (failed-match signal)
    - Current-position indicator = Metacognition over accumulated calibration data
  - Document each mapping with the primitive-composition reasoning
- **Verification criteria:** [ ] substrate-inaccessible primitives listed with reasoning; [ ] 6 consciousness-gradient indicators each mapped to primitive composition; [ ] mapping enables "if primitive X is missing, indicator Y becomes unreachable" reasoning

**P13: enes/thinking_space_dynamics.md Stable-View Rewrite**
- **Question:** How does the user's curated stable-view file update to integrate the typed primitive set?
- **Sub-questions:**
  - Section 2 (The architecture of thinking-space): replace the 4-primitive table with the typed table (operations / buffers / drivers / modulators + Phase A/B/C+ membership)
  - Section 3 (Two kinds of similarity): unchanged (this is about intuition's recognition mode; still holds)
  - Section 4 (Three-layer architecture): unchanged (primitives live within L3; architecture intact)
  - Add Section 2.5 (Primitive typology and phasing): new section documenting the typed set, the four-criterion test, the out-of-scope list, and the phased admission
  - Section 5 (Phased build): update /intuit Phase A to reference the 8 primitives; Phase B adds the 3; Phase C+ adds modulators
  - Section 7 (Honest limits): expand substrate-ceiling section with primitive-level out-of-scope list
  - Reasoning section: add "why the typed primitive refactor" subsection explaining the internal-gap-in-definition justification
  - Open Questions: add primitive-level open items (delegation decisions, modulator operationalization, substrate-internal primitives)
- **Verification criteria:** [ ] stable-view rewrite preserves unchanged sections; [ ] new Section 2.5 added; [ ] Phase mapping updated; [ ] substrate-ceiling expanded; [ ] reasoning section explains the refactor; [ ] file remains readable as current-state standalone

---

## 3. Interface Map

| Source | Target | What flows | Direction |
|---|---|---|---|
| P1 | P2, P3, P4 | Primitivity test + typology rules + spec template | Contract |
| P2 | P5 | 8 Phase A primitive specs | Read |
| P3 | P5 | 3 Phase B primitive specs | Read |
| P4 | P5 | Modulator specs (marked DEFERRED) | Read |
| P2, P3 | P6 | Primitive operational definitions | Read |
| P2, P3 | P7-P11 | Primitive definitions feed /intuit refactors | Read |
| P5 | P7-P11 | Delegation decisions shape refactor implementation | Read |
| P6 | /intuit P14 validation (downstream, not in this inquiry) | Verification approach | Contract |
| P7 | /intuit P4 spec (downstream) | Refactored attention construction | Write |
| P8 | /intuit P5 spec (downstream) | Refactored context construction | Write |
| P9 | /intuit P7 spec (downstream) | Refactored hunch production | Write |
| P10 | /intuit P8 spec (downstream) | Refactored failure modes + decline | Write |
| P11 | /intuit output schema (downstream) | Refactored schema with primitive attribution | Write |
| P2, P3, P4 | P12 | Primitive definitions feed documentation | Read |
| P2, P3, P4, P5, P6, P7-P11, P12 | P13 | All outputs feed stable-view rewrite | Read |
| autonomous_consciousness_goal indicators | P12 | Consciousness-gradient indicator list | Read |
| Prior findings (thinking_space_dynamics, intuition_as_discipline) | P13 | Stable-view source material | Read |

### Hidden interfaces (external dependencies)

- Four-criterion primitivity test (defined in sensemaking / this decomposition's P1) — applied in P2/P3/P4
- LLM substrate capabilities (for P5 delegation decisions) — depends on LLM model characteristics, may need revisit when model changes
- /intuit existing spec sections (P4/P5/P7/P8/output schema) — P7–P11 produce diffs against these
- autonomous_consciousness_goal's consciousness-gradient indicator list — P12 depends on it being stable
- Markdown + frontmatter conventions — P13 uses them

All external dependencies are stable or accepted.

---

## 4. Dependency Order

```
FOUNDATION (must go first):
  P1 (primitivity test + typology + spec template)

PARALLEL after P1:
  P2 (Phase A primitive specs — 8 primitives)  ┐
  P3 (Phase B primitive specs — 3 primitives)  ├ parallel; each is template-application
  P4 (Modulator specs — 2, deferred)           ┘

AFTER PRIMITIVE SPECS (B):
  P5 (delegation decision table) ─ depends on P2+P3 (needs all definitions)
  P6 (verification approach) ─ depends on P2+P3

AFTER DELEGATION + DEFINITIONS:
  P7 (/intuit P4 refactor)      ┐
  P8 (/intuit P5 refactor)      │
  P9 (/intuit P7 refactor)      ├ parallel; each touches different /intuit section
  P10 (/intuit P8 refactor)     │
  P11 (/intuit schema refactor) ┘

DOCUMENTATION (after all above):
  P12 (substrate ceiling + autonomy mapping) ─ depends on P2+P3+P4
  P13 (enes/thinking_space_dynamics.md rewrite) ─ depends on everything
```

**Critical path:** P1 → P2 → P5 → P9 → P13.

**Parallelizable:** P2/P3/P4 after P1; P7–P11 after P2+P5; P12 parallel with P7–P11 once primitives are defined.

**No circular dependencies.** P13 is the terminal integration point.

**Deferred (NOT in this decomposition):**
- Full operationalization of modulators (Mood / Arousal) — Phase D+ concern
- Integration with disciplines beyond `/intuit` (e.g., /explore, /sense-making primitive usage) — downstream work, not this inquiry
- Custom intuition-space generation (Level 3 capability) — noted out-of-scope
- LLM-model-change re-evaluation of delegation decisions — post-MVP concern

---

## 5. Self-Evaluation

| Dimension | Result | Notes |
|---|---|---|
| **Independence** | PASS | Each piece has clear minimal dependencies. P2/P3/P4 parallelizable; P7–P11 parallelizable. |
| **Completeness** | PASS | All 13 pieces cover: infrastructure, all primitive specs per phase, delegation, verification, /intuit refactors (all 5 sections), architectural documentation, stable-view update. Nothing from sensemaking's locked elements is orphaned. |
| **Reassembly** | PASS | Pieces + interfaces → a complete primitive-model refactor with propagation to /intuit and the stable-view. Given all pieces answered, the inquiry's goal (completeness verdict + candidate primitives + primitivity test + /intuit impact + honest accounting) is satisfied. |
| **Tractability** | PASS | Each piece is spec-drafting or propagation work, not speculative exploration. P2 (8 primitives) is the largest but bounded — each primitive spec is ~1 page of structured content. |
| **Interface clarity** | PASS | 15 interfaces named; external dependencies (LLM substrate, /intuit spec sections, autonomy-goal indicators) flagged. |
| **Balance** | PASS | P2 (Phase A primitives) is the largest; but P7–P11 together (/intuit refactors) are comparable. No single piece is 80%; the work is distributed. |
| **Confidence** | PASS | Top-down clusters (A-E) and bottom-up atoms (13) agree. No mid-decomposition refinement needed. |

**All 7 dimensions pass. Decomposition ready for Innovation.**

### Innovation should focus on:

- **P1 (primitivity test operationalization)** — the four-criterion test needs concrete pass/fail procedures; innovation has leverage on "what evidence counts for each criterion." If this is weak, every downstream primitive admission is weak.
- **P2's hardest primitives — Simulation and Metacognition** — both are currently novel operational concepts at the discipline layer; innovation has leverage on the operational definitions and observable signatures.
- **P5 (delegation decision table)** — the approximate/delegate/hybrid decision per primitive has substantial innovation surface; creative designs could make primitives more inspectable without duplicating substrate work.
- **P9 (hunch production refactor)** — making primitive contributions explicit per seed is a significant design change; novel scaffolding patterns here.
- **P12 (autonomy mapping)** — which specific primitive compositions produce which indicators is an empirically-open question; innovation may find non-obvious composition rules.

### Innovation should avoid re-litigating:

- The four-criterion primitivity test itself (LOCKED in sensemaking)
- Which primitives are admitted (7 Tier A LOCKED; details of each are spec work, not novelty territory)
- The typology (LOCKED)
- Tier B dispositions (LOCKED — each already assigned)
- Phasing (LOCKED)
- Substrate out-of-scope category (LOCKED)
- Current-4 retention-with-split (LOCKED)

### Deliberately NOT decomposed further

- Per-primitive prompt engineering details (innovation/implementation territory, not decomposition)
- Specific numeric thresholds (e.g., salience detection sensitivity) — innovation/validation territory
- Cross-discipline integration beyond /intuit (out of scope for this inquiry; deferred)
- Model-specific delegation decisions (decisions are per-primitive; model-specific variants are later work)
