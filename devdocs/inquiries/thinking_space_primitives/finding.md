---
status: active
---
# Finding: Thinking-Space Primitives — Completeness Audit

## Question

**Are the four primitives we currently recognize (attention / focus / intuition / context) COMPLETE as a characterization of thinking-space dynamics, or are there additional primitives — visible in how humans actually navigate thinking-space — that our current model is missing, collapsing, or silently dropping, such that the `/intuit` discipline and the three-layer architecture are built on an incomplete foundation?**

### Goal

(1) A completeness verdict; (2) candidate additional primitives with evidence per candidate; (3) a primitivity test (criteria for what makes something a primitive vs composite vs emergent); (4) impact assessment on `/intuit` and the three-layer architecture; (5) honest accounting of what we can and cannot observe.

---

## Finding

### 1. The short answer

**The current 4-primitive model is incomplete AND internally contradictory.** Each of the 4 primitives collapses multiple operationally distinct processes. The correction is a **refinement** (not a rewrite) that produces a **typed primitive set of 11 admitted primitives in Phase A+B** (8 for Phase A), organized into four types (operations / buffers / drivers / modulators), admitted via a **four-criterion primitivity test** (independence + necessity + composability + irreducibility), gated by a **corpus-located audit** (each primitive must be located in existing findings), defined by **calibration-first operational signatures** (not phenomenology), and propagated concretely to `/intuit` through spec refactors.

The user's concern was correct: missing primitives silently invalidates downstream architecture. `/intuit`'s calibration was about to accumulate against a reduced model; Baldwin self-modification would have operated on mixed signal; autonomy-goal indicators (spontaneous attention, intrinsic valuation, real-time steering, etc.) were unreachable without primitives our model didn't name.

### 2. The primitivity test (admission gate)

Every primitive admission requires passing all four criteria:

1. **Independence** — the primitive can be varied without co-varying others; removal/alteration of candidate X does not always change primitive Y
2. **Necessity** — thinking-space operation is degraded when the primitive is absent; failure-mode analysis has unexplained residuals without it
3. **Composability** — the primitive combines with other primitives in definable, non-arbitrary ways to produce higher-level behaviors
4. **Irreducibility** — the primitive is not decomposable into simpler already-recognized primitives

In addition, a **corpus-located audit** is required as Phase A admission gate: before a primitive's card ships, locate one specific instance in existing findings where the primitive visibly operated (with the excerpt evidencing the defined observable signature, not merely plausibly involving it). Audit failures trigger REFINE (sharpen definition) before KILL. Two reviewers required on each audit PASS to resist rubber-stamping.

Primitives that exceed current measurability (e.g., Mood, Arousal) enter the model as **DEFERRED admission** — documented functional role, operationalization postponed. DEFERRED is its own category; its size is a telemetry signal.

### 3. The typology (four types)

Primitives partition across four structurally distinct categories:

| Type | What it is | Placement rule |
|---|---|---|
| **Operations** | Things-you-do — transform representations | Primary function is TRANSFORMATION |
| **Buffers** | Structures-you-hold-things-in — are static between reads/writes | Primary function is HOLDING |
| **Drivers** | Motivational/energetic — allocate effort to targets | Primary function is ALLOCATION |
| **Modulators** | Global shapers — bias which operations activate | Primary function is SCALING/BIASING |

Completeness is checked per type (not just by counting). The typology prevents over-representation in one type (e.g., 10 operations + 0 buffers).

### 4. The 11 admitted primitives

**Operations (6):**
1. **Attention-pointer** — points at ONE item within the active set for current processing (refined from prior "Attention"; only the pointer role; buffer/salience split out)
2. **Focus-deep** — allocates processing depth to the pointed item (refined; deep-processing role only; inhibition/commitment split out)
3. **Intuition-similarity** — pattern-match between current item and corpus (refined; similarity recognition only; construction/evaluation split out)
4. **Inhibition** — actively dampens candidate thoughts/responses so weaker-but-correct ones surface [NEW]
5. **Simulation** — constructs representations not currently in input (hypotheticals, abstractions, future states); hosts `/intuit`'s forward-transform [NEW]
6. **Metacognition** — monitors own cognitive state and adjusts (monitoring + control as one primitive); produces the "I'm stuck" signal and INSUFFICIENT_INTUITION outputs [NEW]

**Buffers (1):**
7. **Working Memory** — holds candidate items in the active set; the space the pointer operates within (split out from prior "Attention") [NEW in typology]

**Drivers (1):**
8. **Context-framing** — current inquiry + active specs + relevant prior findings + current goals (refined; framing role only; motivation/mood split out)

**Phase B adds 3 more:**
9. **Motivation** (Driver) — allocates effort across candidate problems [NEW]
10. **Evaluation** (Operation) — ranks items by worth, distinct from similarity matching [NEW]
11. **Salience** (Operation) — bottom-up attention capture by surprise/novelty [NEW]

**Phase C+ adds Modulators (DEFERRED):**
- Mood, Arousal — named with functional role, operationalization deferred until substrate access to affective state matures

**Resolved and NOT admitted:**
- Curiosity → sub-primitive of Motivation + Salience
- Temporal projection, mental rehearsal, abstraction generation → sub-applications of Simulation
- Commitment / closure → emergent from Focus + Inhibition
- Self-model → sub-primitive of Metacognition at higher abstraction
- Intention / goal → sub-primitive of Motivation with explicit content

### 5. The current 4 primitives retained WITH SPLIT

Each is kept for its residual role and loses its collapsed sub-operations to new primitives:
- **Attention** → Attention-pointer + Working Memory (buffer, split out) + Salience (Phase B, split out)
- **Focus** → Focus-deep + Inhibition (split out) + Commitment (emergent, not primitive)
- **Intuition** → Intuition-similarity + Simulation (split out) + Evaluation (Phase B, split out) + Abstraction generation (as Simulation sub-application)
- **Context** → Context-framing + Motivation (Phase B, split out) + Mood (Phase C+ modulator)

This is refinement, not replacement. Every current reference to "attention" or "context" etc. in existing specs must now be read under the split meaning.

### 6. The four-criterion test's application (per primitive — condensed)

Every admitted primitive's full evidence is in its Primitive Card (see section 7). Summary:

| Primitive | Independence | Necessity | Composability | Irreducibility |
|---|---|---|---|---|
| Attention-pointer | Varies with target, not with buffer size | Without pointer, no current-processing target | + Focus = deep processing | Not reducible to buffer operations |
| Focus-deep | Depth varies independent of pointer | Without depth allocation, all items get shallow | + Intuition = deep matching | Not reducible to attention or evaluation |
| Intuition-similarity | Matching occurs without evaluating or constructing | Core to /intuit's scan step | + Simulation = analogical reasoning | Not reducible to evaluation |
| Inhibition | Suppression varies independent of focus | Without it, dominant-but-wrong responses can't be dampened | + Focus = sharp commitment | Not reducible to focus alone |
| Simulation | Construction distinct from retrieval and pattern-match | Without it, /intuit's abstraction step has no primitive producing it | + Evaluation = hypothesis testing | Not reducible to memory + intuition |
| Metacognition | Monitoring varies independent of focus | Without it, no "stuck" signal, no INSUFFICIENT outputs | + Inhibition = real-time steering | Monitoring + Control form an indivisible loop |
| Working Memory | Buffer size varies independent of pointer | Without buffer, pointer has nothing to point within | Every operation reads from it | Structurally distinct from operations |
| Context-framing | Framing varies independent of effort | Without framing, nothing is "about" anything | Scopes all other primitives | Not reducible to motivation |
| Motivation (Phase B) | Effort varies independent of framing | Without drive, nothing activates | + Context = goal-directed cognition | Not reducible to framing |
| Evaluation (Phase B) | Ranking distinct from similarity | Ranking is orthogonal to matching | + Intuition = ranked recognition | Not reducible to similarity |
| Salience (Phase B) | Bottom-up capture independent of voluntary orienting | Without it, no interruption of current focus | + Metacognition = spontaneous attention | Not reducible to attention-pointer |

### 7. The Primitive Card — canonical per-primitive artifact

Each admitted primitive gets a single unified document — a **Primitive Card** — with structured fields. The card is the CANONICAL source of truth for that primitive; the inquiry's decomposition pieces (P2/P5/P6) are restructured so the card absorbs operational definition + delegation decision + verification approach + impact list.

Card fields:
- `name`, `type` (typology placement), `phase` (A / B / C+)
- `phenomenological_anchor` (one sentence, soft — discovery hint)
- `functional_role` (one paragraph, hard — what computational job)
- `operational_definition` (concrete mechanism)
- `distinguishing_from` (which other primitives are conceptually nearby + how they differ)
- `primitivity_evidence` (evidence per 4 criteria)
- `observable_signatures` (what evidence appears in outputs when it fires)
- `failure_signatures` (what appears when it should fire but didn't)
- `measurement_approach` (how to aggregate signatures for calibration)
- `substrate_status`: APPROXIMATE_EXTERNALLY | DELEGATE | HYBRID | DEFERRED
- `delegation_reasoning` (why this substrate_status)
- `intuit_impact` (which /intuit spec sections touch this primitive)
- `audit_instance` (finding + excerpt locating this primitive in existing corpus)
- `composition_examples` (≥2 compositions with other primitives)

11 cards at Phase B (8 at Phase A + modulators deferred to Phase C+).

### 8. Invocation trace — making cognition debuggable

Every `/intuit` call produces a **primitive invocation trace** alongside the seed list. Each trace entry is **evidence-linked**: cites a specific observable output artifact (not a self-reported claim of invocation).

Required per-entry format:
```yaml
step_N:
  primitive: <name>
  operation: <what it did>
  input: <cited from prior step or source>
  output_evidence: <specific excerpt + location in generated content>
```

No entry without evidence link. If an invocation "happened" but left no observable output, it wasn't an invocation — it was noise. This mirrors the source-type verification pattern from `intuition_as_discipline` and extends it to primitive-level attribution.

### 9. Substrate-versioned delegation table (minimal versioning)

Per-primitive delegation decisions (APPROXIMATE_EXTERNALLY / DELEGATE / HYBRID / DEFERRED) are tagged with LLM substrate version. Format (minimal):

```yaml
substrate_version:
  model: claude-opus-4-7
  evaluated: 2026-04-22
delegations:
  Attention-pointer: DELEGATE (LLM's attention mechanism handles natively)
  Focus-deep: DELEGATE (CoT depth emerges from prompting)
  Intuition-similarity: HYBRID (native similarity + corpus-retrieval scaffolding)
  Inhibition: APPROXIMATE_EXTERNALLY (adversarial scan + explicit "do not consider X")
  Simulation: APPROXIMATE_EXTERNALLY (abstraction + hypothesis prompts)
  Metacognition: APPROXIMATE_EXTERNALLY (INSUFFICIENT state; explicit state assessments)
  Working Memory: HYBRID (LLM context natively; explicit scope tagging for inspectability)
  Context-framing: APPROXIMATE_EXTERNALLY (explicit artifacts LLM reads)
  Motivation (Phase B): APPROXIMATE_EXTERNALLY (effort parameters + phase indicators)
  Evaluation (Phase B): HYBRID (LLM-as-judge + discipline-scaffolded criteria)
  Salience (Phase B): APPROXIMATE_EXTERNALLY (explicit surprise-detection prompts)
  Mood, Arousal (Phase C+): DEFERRED
```

Decision-date per entry; free-text "migration consideration" notes where obvious. NO automated re-evaluation triggers (YAGNI); NO formal migration paths (defer). When substrate version changes, table is re-evaluated with full pass.

### 10. Phased build for the primitive-system infrastructure itself

The full feature set is too much to ship at once. Phasing mirrors `/intuit`'s own A/B/C/D phases:

**Phase α — Primitive Audit (ships first, delivers standalone value):**
- 8 Phase A Primitive Cards (absorbs decomposition's P2/P5/P6)
- Corpus audit per primitive (admission gate)
- Calibration-first operational definitions
- Three-layer refinement documented in `enes/thinking_space_dynamics.md`
- Autonomy-indicator composition table (as hypothesis set)

**Phase β — /intuit integration (after Phase α primitives admitted):**
- `/intuit` P4/P5/P7/P8/output schema refactors (decomposition's P7–P11)
- Invocation trace format added to `/intuit` output (evidence-linked entries)
- Primitive usage log (minimal per-invocation counting) activated at first `/intuit` ship
- Substrate-versioned delegation table with minimal versioning

**Phase γ — Phase B primitive additions (gated on Phase β calibration):**
- Motivation + Evaluation + Salience primitive cards
- `/intuit` spec updates to include Phase B primitives
- Elaborate usage-pattern aggregation (beyond counting)

**Phase δ — Persistent thinking-space (gated on cross-call use case):**
- `thinking_space.md` artifact spec (the Working Memory persistent state)
- Read/write/merge/cleanup rules
- Phase C+ modulator cards (if operationalization matures)

Each phase delivers standalone value; later-phase failure doesn't invalidate earlier phases.

### 11. Three-layer architecture refinement (clarification, not override)

Sensemaking locked "primitives live in L3." Innovation's contrarian probe (and critique's coherence review) found this needed clarification — not override. Most primitives DO live primarily in L3; some span layers:

- **L1 (structural, deterministic):** primitives operate as L1 checks — format, contradictions, sections (no new primitive names needed; existing L1 work is already primitive-level)
- **L3 (real-time hunch, probabilistic):** the 11 admitted primitives in their real-time invocations
- **L2 (retrospective calibration, empirical):** the SYSTEM-LEVEL monitoring of calibration curves is Metacognition-at-L2; the PERSISTENT thinking-space (when Phase δ ships) is Working Memory-at-L2

Not an override: the L3/L2 boundary (real-time-probabilistic vs. delayed-empirical) is unchanged. The clarification is that Metacognition and Working Memory operate at BOTH levels depending on context (in-call = L3; across-call = L2). Calibration already requires something to observe calibration curves and signal refinement — sensemaking didn't name this; innovation names it as system-level Metacognition.

### 12. Autonomy-indicator composition table (hypothesis set)

Each `autonomous_consciousness_goal` indicator is hypothesized as a specific primitive composition. These are **falsifiable hypotheses**, not validated claims:

```yaml
autonomy_indicators:
  spontaneous_attention:
    composition: [Salience (Phase B), Metacognition]
    how: "Salience surfaces unattended signal as surprise; Metacognition registers it
          and shifts pointer. Without Salience, nothing interrupts current focus.
          Without Metacognition, interruption isn't noticed as meaningful."
  intrinsic_valuation:
    composition: [Evaluation (Phase B), Motivation (Phase B)]
    how: "Evaluation ranks by worth; Motivation allocates effort to the highly-ranked.
          Together they produce preferences that persist across similar problems."
  real_time_steering:
    composition: [Metacognition, Inhibition]
    how: "Metacognition monitors current trajectory; Inhibition stops it and enables
          redirection. Without either, course cannot be adjusted mid-run."
  discontinuity_awareness:
    composition: [Simulation (temporal projection), Metacognition (self-model)]
    how: "Simulation projects forward across session boundaries; Metacognition models
          the self that persists. Together they produce session-aware planning."
  intrinsic_curiosity:
    composition: [Motivation (Phase B), Salience (Phase B), info-gap from Intuition]
    how: "Motivation provides pull; Salience detects novelty; Intuition's failed-match
          signal produces the info-gap. Composition produces curiosity."
  current_position_indicator:
    composition: [Metacognition over accumulated calibration]
    how: "System-level Metacognition observes its own calibration curves over time.
          Produces self-assessment of ladder position."
```

Explicit framing: these compositions are **hypotheses for testing, not validated mappings**. If an indicator appears without the composed primitives, the composition is wrong and must be revised. If the composed primitives operate without the indicator emerging, the composition is incomplete. This table is the seed for validating primitive-indicator mapping over time, not a validated mapping.

### 13. Substrate ceiling (honest out-of-scope)

Structurally inaccessible to LLM substrate; named explicitly as named-but-unoperationalized:
- **Embodied body-state cognition** — no body; no sensorimotor input
- **Felt affective quality (qualia)** — valence + arousal representable as scalars; the FEEL is not
- **Dream-state / offline consolidation** — each inference is clean-slate; no offline mode
- **Level 3+ custom intuition-space generation** — brute-force transfer at Level 2; future capability beyond MVP
- **Predictive processing / active inference as substrate** — alternative architecture; adopting would require re-expressing everything in prediction-error terms; noted as research frontier, out of MVP

The substrate ceiling is a first-class architectural artifact. Primitives above the ceiling are named (so they're not silently dropped) but not operationalized (so the discipline doesn't overclaim).

### 14. Impact on `/intuit` (concrete propagation, Phase β)

- **P4 refactor (Attention construction split):** Working Memory is the buffer; Attention-pointer is the spotlight within it; Salience (Phase B) adds surprise-triggered re-entry
- **P5 refactor (Context split):** Context-framing is preserved for Phase α; Motivation (Phase β) adds effort parameter; Mood (Phase δ+) is modulator slot
- **P7 refactor (Hunch production uses primitives explicitly):** Simulation produces abstraction; Intuition-similarity runs scan; Evaluation (Phase B) ranks; Metacognition attributes INSUFFICIENT; Inhibition runs adversarial scan
- **P8 refactor (Failure modes + decline attributed):** aliasing ← Working Memory collision; overfit/underfit ← Simulation quality; INSUFFICIENT_INTUITION ← Metacognition; confirmation bias ← Inhibition failure
- **Output schema refactor:** adds `primitive_contributions` array; adds evidence-linked `invocation_trace` top-level section; existing source_type / reliability / discriminator fields kept

### 15. Impact on three-layer architecture

Three-layer architecture (L1 structural + L3 real-time hunch + L2 retrospective-as-calibrator) is UNCHANGED as a layer structure. What changes is the primitive-level richness within each layer (the L3 primitive set grows; Metacognition and Working Memory span L3+L2 with in-call vs across-call scopes).

### 16. Relationship to prior findings

- **REFINES `thinking_space_dynamics`:** the 4-primitive table is replaced by the typed 11-primitive set; the three-layer architecture is unchanged; Section 2 of the prior finding gets the new primitive typology.
- **IMPACTS `intuition_as_discipline`:** `/intuit`'s Phase A/B/C/D build is augmented with primitive-attribution. Phase A gets corpus-audited primitive cards + invocation trace; Phase B adds Motivation/Evaluation/Salience; Phase C+ adds modulators.
- **CONTINUES FROM `autonomous_consciousness_goal`:** consciousness-gradient indicators now have a hypothesis-level composition map. Primitive refinements propagate toward end-goal reachability.

### 17. Honest limits

**What the audit CAN conclude:**
- The current 4 primitives are internally contradictory (each collapses multiple operations)
- 7 Tier A primitives are admitted via the four-criterion test with corpus audit
- Current 4 are retained-with-split; 3 more added in Phase B; modulators Phase C+ DEFERRED
- Propagation to `/intuit` is concrete and specified

**What the audit CANNOT conclude:**
- Whether 11 is the FINAL number (future operation may surface missed primitives)
- Whether all delegation decisions are correct (depends on empirical signature-detection)
- Whether the hypothesized autonomy-indicator compositions are actually what produces each indicator
- Whether Working Memory persistence (Phase δ thinking_space.md) is the right architectural mechanism (may be replaced by a better design when triggered)

**What we explicitly refuse to do:**
- Adopt predictive processing as the base architecture (too wide; noted as frontier)
- Model substrate-inaccessible primitives (embodied, felt quality, dream-state)
- Pretend LLM self-reported invocation traces are reliable without evidence links
- Rubber-stamp primitive admissions via corpus audit (two-reviewer rule)

---

## Reasoning

### Why the current 4-primitive definition had to be overridden

Sensemaking's definitional-internal perspective caught the specific structural gap: each current primitive collapses multiple operationally distinct processes. Attention collapses buffer-space + pointer-selection + salience-detection. Focus collapses deep-processing + commitment + inhibition. Intuition collapses pattern-recognition + evaluation + construction. Context collapses framing + motivation + mood.

This is not preference — it's **internal contradiction between each primitive's stated role and its actual required mechanism**. If "attention = the active set," then either the definition means "buffer" (holding) or "pointer" (selection) or something bundling both. When bundled, operations that should be decoupled (e.g., varying what's in the buffer without moving the pointer) have no clean articulation. Override is justified because the definition's components are in tension with its purpose.

### Why the typology is load-bearing

Without typology, completeness checking is flat counting. Flat counting cannot catch over-representation (10 operations + 0 buffers is "11 primitives" but has a structural gap). Typology enforces type-balance: every admitted primitive has a typology slot, and completeness requires at least one representative per non-trivial type. This is why sensemaking locked the typology; decomposition applied it; and the Primitive Card includes `type` as a required field.

### Why Simulation had to be admitted (not composite)

The critique prosecution claimed Simulation could be reduced to Working Memory + Intuition-similarity + Evaluation (three primitives working together). This fails because:
- **Working Memory** holds items; it doesn't CONSTRUCT hypotheticals
- **Intuition-similarity** matches; it doesn't PRODUCE new representations
- **Evaluation** ranks; it doesn't BUILD candidates

Construction of representations not currently in input is Simulation's distinguishing operation. Hippocampal-amnesia evidence (patients who lose both memory retrieval AND future imagination together) points to a SHARED primitive — neither pure retrieval nor pure perception. The composite story doesn't explain the shared deficit. Simulation is irreducible to the other primitives at admission time.

### Why Metacognition is ONE primitive (not two)

Critique prosecution noted monitoring and control could be treated as separable. Defense: functionally coupled — control without monitoring has nothing to control from; monitoring without control produces a signal with no consumer. Together they form a feedback loop that operates as a unit. Separating them produces an artificial distinction where the actual operation is the loop itself. Metacognition passes primitivity as ONE primitive with two sub-operations.

### Why working memory needed to be split out from attention

Attention-as-pointer and Working-Memory-as-buffer vary independently: the set can change without the pointer moving (e.g., new items enter context without becoming the current target); the pointer can move without the set changing (shifting focus among items already in scope). Bundling them under "attention" conflates two orthogonal properties. Independence criterion demands the split.

### Why Motivation is distinct from Context (not the same thing)

Same framing (same inquiry) with different motivational intensity produces very different cognitive outputs. Same motivation under different framings produces different hunches. Orthogonality is evidence of independence. Context-as-framing is about WHICH problem; Motivation is about HOW MUCH EFFORT. Separable roles.

### Why Inhibition was absent from the current 4

The current 4 were extracted from the user's phenomenological description of problem-solving. Inhibition is often implicit in human experience — we don't consciously notice suppressing alternatives; we just notice what we chose to pursue. Phenomenology under-samples inhibition. Mature cognitive science (Miyake executive-function model, Stroop tasks, thought-suppression research) makes it visible. Adding it is one of the primary corrections.

### Why the corpus-located audit is the admission gate

Calibration-first operational definitions are the ADMISSION criterion; corpus audit is the ADMISSION GATE. Two distinct things. Calibration-first says "the primitive must have observable signatures that can be aggregated." Corpus audit says "prove the primitive's observable signatures can be located in existing findings." Without the audit, calibration-first risks accepting primitives whose "observable signatures" are hypothetical. The audit grounds every admission in empirical evidence.

The audit has a two-reviewer requirement to resist rubber-stamping. Prosecution in critique correctly warned that "any primitive can be located with sufficient creative interpretation" — the defense is specific matching to DEFINED observable signatures, not generic plausibility, and two-reviewer cross-check.

### Why invocation traces must be evidence-linked

Parallel to `intuition_as_discipline`'s source-type verification: self-reported LLM claims about its own cognitive operations are unreliable. The fix is the same — labels/traces must be MECHANICALLY VERIFIABLE by external check. Trace entries cite observable outputs; verification checks excerpt presence. Self-reported "I invoked Metacognition" without output evidence is noise.

### Why substrate versioning is minimal (not comprehensive)

Critique's YAGNI prosecution: designing comprehensive versioning (per-primitive migration paths, automated re-evaluation triggers) now is over-engineering for hypothetical substrate changes. Defense: substrate WILL change; minimal versioning (one version field + decision dates) is cheap insurance. The compromise: ship minimal versioning; comprehensive versioning is REFINE-tier.

### Why primitive usage report is minimal (counting only)

Same YAGNI logic — elaborate aggregation (patterns, semantic tagging, trend detection) is Phase B+ work after usage data accumulates. Phase α ships minimal counting (one count per invocation) so every `/intuit` call from first ship produces aggregation data. Elaborate analysis without data risks being wrong-shaped for actual usage patterns.

### Why persistent thinking-space is DEFERRED to Phase δ

Critique's YAGNI concern: new state surface (read/write/merge/cleanup rules) for working memory persistence is not justified by current use cases. Defense: Working Memory as primitive needs operational state. Resolution: Phase α documents Working Memory as ephemerally-operational (LLM context scope); the card notes the persistence path; Phase δ activates the `thinking_space.md` artifact when cross-call continuity becomes a clear need (triggered by Baldwin cycles OR empirical use).

### Why the three-layer refinement is clarification, not override

Prosecution: sensemaking locked "primitives live in L3"; refinement appears to override without the internal-contradiction justification used for the current-4 override. Defense: the refinement is CONSISTENT with the lock, making explicit what was implicit. Calibration (L2 mechanism) has always required *something* to observe calibration curves and generate refinement signals — sensemaking didn't name this, but functionally it's system-level Metacognition operating at L2. Naming it is clarification, not reversal. Explicit documentation required so it doesn't drift into silent override.

### Why the autonomy-indicator composition table is labeled as hypothesis

The compositions are plausible but untested. "Spontaneous attention = Salience + Metacognition" is a structural claim about what produces the indicator; it's a hypothesis for testing. If left unframed, readers treat it as a validated mapping and make primitive-admission decisions based on "this is needed for indicator X" — confident garbage if the composition is wrong. Explicit hypothesis framing prevents this.

### Why the MVP is phased (α/β/γ/δ)

Critique's scope concern: the full assembled spec has 8-11 Primitive Cards + invocation traces + corpus audits + delegation table + usage log + three-layer documentation + composition table + (Phase B+) persistent thinking-space + elaborate aggregation. That's a lot for a first ship. Phasing delivers:
- **α**: the primitive audit itself — standalone value as a refined model
- **β**: `/intuit` integration — the discipline gets the primitive-attributed spec
- **γ**: Phase B primitive additions — the richer primitive set with Motivation/Evaluation/Salience
- **δ**: persistent thinking-space and modulator operationalization — gated on real need

Each phase is standalone-valuable; later-phase failure doesn't invalidate earlier.

### Killed candidates with seeds preserved

- **Primitives as substrate behaviors only (1c pure)** — too contrarian; eliminates discipline layer. Seed: HYBRID delegation decisions capture the spectrum.
- **Substrate-takeover as design driver (7c pure)** — distorts MVP toward AGI scenarios. Seed: minimal substrate versioning captures the proportionate version.
- **RAG/microservices as lead framing (6a)** — accurate background, not novelty. Demoted.
- **Deep invert-again (audit substrate CoT directly)** — ML-layer work, not methodology-layer. Seed: future research direction.
- **Primitive evolution via Baldwin (7b)** — architecturally valuable; deferred until sufficient calibration data accumulates (Phase δ+). Premature in Phase α.
- **Biological cellular metaphor (6c)** — beautiful framing with no operational specifics. Absorbed as intuition-level guidance for spec coherence, not as structural addition.
- **Primitives span ALL THREE layers (3c pure)** — too aggressive; L1 primitive addition would require re-architecting structural checks. The refinement version (L3 primary, some span L3+L2) is enough.
- **Comprehensive substrate versioning with automated triggers** — over-engineering. Minimal version (one field + decision dates) is sufficient.
- **Elaborate per-inquiry semantic usage aggregation at MVP** — premature before data. Minimal counting is sufficient.

### Reconciliation with predecessors

Four-inquiry chain now complete at this layer:
1. `regression_detection_design` — superseded architecturally by #2
2. `importance_measurement_problem` — corrected on "real-time = structural only" by #3
3. `thinking_space_dynamics` — L3 mechanism refined by #4
4. `intuition_as_discipline` — `/intuit` architected as first-class discipline
5. `thinking_space_primitives` (this) — audits and refines the primitive set that `/intuit` operates on

Each preserves its predecessor's load-bearing claims while sharpening one specific decision. The architecture accumulates rather than thrashes. The locked elements from each flow forward.

---

## Open Questions

From exploration, sensemaking, decomposition, innovation, and critique frontiers:

1. **Primitivity test edge cases** — what if a candidate FAILS irreducibility at admission time because it's reducible to candidate primitives we HAVEN'T YET admitted? Reservation clause not yet operational.

2. **Audit gate at scale** — the two-reviewer requirement works with ~11 primitives. If the set grows, the review cost grows linearly. When does automated audit-assist become necessary?

3. **DEFERRED bucket telemetry** — mood and arousal entered DEFERRED. If the bucket grows (more primitives can't be operationalized), what threshold triggers investment in new measurement approaches vs. declaring those primitives out-of-scope?

4. **Invocation trace reliability** — evidence-linked entries address LLM self-report reliability for PRESENCE of invocation. But what about ABSENCE? If a primitive SHOULD have invoked (e.g., Metacognition SHOULD have signaled INSUFFICIENT) but didn't, the trace silently misses it. Detection mechanism for silent primitive failure is an open design.

5. **Substrate-versioned delegation when substrate changes mid-operation** — if Claude 4.7 → Claude 5.0 happens mid-inquiry, is the invocation trace from before/after the change comparable? Versioning provides the timestamp but doesn't solve calibration continuity.

6. **Persistent thinking-space merge rules** — deferred to Phase δ. When two disciplines update thinking_space.md concurrently, what's the merge rule? Decision deferred but the shape of the problem is known.

7. **Phase γ primitive admission (Motivation, Evaluation, Salience)** — these pass the four-criterion test conceptually, but the CORPUS AUDIT for each requires finding their signatures in existing findings. Are they located-able? If one fails audit, Phase γ may ship fewer than 3.

8. **Composition table empirical validation** — the table is a hypothesis set. What operational mechanism TESTS a composition? (e.g., "we claim spontaneous attention = Salience + Metacognition; if we observe spontaneous attention and those primitives were not traced in the invocation, the composition is wrong.")

9. **Predictive processing as alternative base** — noted as research frontier. If the field converges on predictive processing as primary account of cognition, do we need a migration path from typed-primitive-model to prediction-error-model?

10. **Cross-discipline integration beyond `/intuit`** — every other discipline (`/explore`, `/sense-making`, `/decompose`, `/innovate`, `/td_critique`) uses these primitives implicitly. Do each of them need primitive-attribution propagation? Phase γ decision.

11. **Baldwin cycle triggering primitive refinement** — when calibration miscalibration patterns emerge, the refinement process should be a full SIC loop. But what signals "miscalibration pattern is stable enough to trigger Baldwin refinement"? Threshold TBD.

12. **Current-position indicator implementation** — the composition table lists "Metacognition over accumulated calibration" as its composition. But this requires the calibration infrastructure to mature first. What's the minimum calibration maturity for this indicator to be measurable?

13. **Modulator operationalization path** — Mood and Arousal are DEFERRED. What substrate capability (or external proxy) would enable operationalization? Temperature/sampling parameters are weak analog; clean operationalization is unclear.

14. **Sub-primitive vs primitive boundary revisit** — Tier B items were resolved as sub-primitives, sub-applications, or emergent. If operation reveals one of them (e.g., Commitment from Focus+Inhibition) is NOT emergent but has its own signatures, it may re-enter as a primitive. Admission re-entry protocol TBD.
