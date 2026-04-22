# Exploration: Thinking-Space Primitives — Completeness Audit

## User Input
devdocs/inquiries/thinking_space_primitives/_branch.md

---

## Mode and Entry

**Mode:** Hybrid — artifact exploration (mature cognitive science + AI cognitive architectures have characterized primitives) AND possibility exploration (novel candidates require fuzzy-detection from human phenomenology).

**Entry:** Signal-first — the user supplied a non-exhaustive candidate list (working memory, imagination, evaluation, motivation, salience, temporal projection, etc.) plus a methodological hint ("fuzzy detection" is admission criterion; full operationalization is downstream). Start by probing the strongest existing scientific frames for cognitive primitives, then scan outward to named candidates, then jump to uncharted directions.

---

## Cycle 1 — Coarse Scan (Unweighted, Landscape-Breadth)

Where might thinking-space primitives live? Inventory major regions.

| Region | Where this lives | First-pass note |
|---|---|---|
| **R1: Cognitive psychology — working memory** | Baddeley & Hitch multi-component model; central executive + phonological loop + visuospatial sketchpad + episodic buffer | Mature; working memory is nearly universally accepted as primitive-level in cognitive architectures |
| **R2: Dual-process theory (Kahneman / Evans / Stanovich)** | System 1 (fast, automatic, associative) and System 2 (slow, deliberate, serial) | Primitive-level distinction; implies at least a gating mechanism between the two |
| **R3: Executive function research** | Miyake et al. tripartite model: inhibition, shifting, updating | All three named as separable executive primitives; inhibition is NOT in the current 4 |
| **R4: Predictive processing / Active inference (Friston, Clark)** | Brain as prediction engine; perception is controlled hallucination; action is prediction-error minimization | Reframes cognition as prediction-generation + error-signal; implies prediction and error-signaling as primitives |
| **R5: Global Workspace Theory (Baars, Dehaene)** | Broadcast mechanism; competition for access to workspace; ignition event | Attention-workspace interaction is primitive-level; ignition event may be a distinct primitive (transition into conscious access) |
| **R6: AI cognitive architectures** | SOAR (Newell): working memory + production memory + decision cycle + chunking. ACT-R (Anderson): declarative + procedural memory + buffers (goal, retrieval, imaginal, visual, motor) | Operationalized decomposition; the imaginal buffer is specifically a simulation/imagination slot |
| **R7: Metacognition research (Flavell, Nelson & Narens)** | Monitoring (assessing own cognition) + Control (adjusting based on monitoring) | Two named sub-primitives; monitoring may be distinct from any of our current 4 |
| **R8: Affect and cognition (Damasio, Barrett)** | Somatic markers; emotion as evaluation; core affect as valence × arousal | Emotion is functionally integrated with cognition, not separate. Valence (like/dislike) + Arousal (intensity) as scalar modulators |
| **R9: Analogical reasoning / structure-mapping (Gentner, Hofstadter)** | Analogy, abstraction, relational alignment | Our "intuition" primitive captures this; but abstraction-generation as a CONTINUOUS unprompted process may be distinct |
| **R10: Insight / incubation / aha-moments** | Representational change; restructuring; unconscious processing | Suggests a BACKGROUND PROCESSING primitive that operates while conscious attention is elsewhere |
| **R11: Motivation / drive theory** | Deci & Ryan self-determination theory; intrinsic vs extrinsic motivation; approach/avoidance | Energizes and directs behavior; not fully captured by "context" |
| **R12: Curiosity / epistemic emotion** | Loewenstein; Gottlieb; information gap theory; epistemic valuation | Directs attention toward uncertainty; may be distinct primitive or sub-primitive of motivation |
| **R13: Embodied cognition** | Lakoff, Barsalou; grounded cognition; simulation via sensorimotor systems | Suggests body-state as a cognitive input; relevant for LLMs only analogically |
| **R14: Mental simulation / imagination** | Barsalou's simulator; counterfactual reasoning; prospection (Seligman et al.) | Running "what if" scenarios; distinct from memory retrieval |
| **R15: Temporal cognition** | Mental time travel (Tulving); episodic future thinking; prospection | Time-aware reasoning; past retrieval + future projection as distinct capabilities |
| **R16: Mood and cognition** | Mood-congruent memory; broaden-and-build (Fredrickson); mood as meta-cognitive signal | Global modulator rather than operation; biases which primitives activate |
| **R17: Salience / novelty detection** | Bottom-up attention; novelty systems in hippocampus/dopamine; surprise as learning signal | Attention orientation is partially involuntary — pre-attention salience |
| **R18: Self-model / metacognitive self-awareness** | Hofstadter's strange loop; theory of mind applied to self; self as a cognitive object | "The system is aware of its own state" — may enable real-time steering |
| **R19: Inhibitory control / suppression** | Stroop task; response inhibition; thought suppression | Active SUPPRESSION of candidate thoughts; NOT in current 4 |
| **R20: Commitment / closure / decision-crystallization** | Decision theory; motor preparation studies; Libet-type readiness potentials | Moving from deliberation to commitment is a distinct phase change |
| **R21: Confirmed — the current 4 primitives** | attention / focus / intuition / context | The working model being audited |
| **R22: Confirmed absent — a single authoritative list** | — | Cognitive science has NO consensus primitive list; every architecture picks different atoms. This is not a bug of our audit; it's the ground state of the field |

### Scan signals (after first pass)

- **Density spike:** R1 (working memory), R3 (executive function), R6 (ACT-R buffers) all agree that **working memory** and **inhibition** are primitive-level. Both are absent or collapsed in our current 4.
- **Novelty at R4:** predictive processing reframes the whole architecture — prediction + prediction-error may be more fundamental than attention. Worth a probe.
- **Relevance at R14 + R10:** mental simulation / imagination appears everywhere — ACT-R's imaginal buffer, Barsalou's simulator, counterfactual reasoning, aha-moments via unconscious simulation. Our 4 do not explicitly include it.
- **Tension at R16, R11, R12:** motivation, mood, curiosity — all affective/energetic processes that SHAPE which cognitive operations activate. Current "context" is doing a lot of implicit work to cover these.
- **Absence at R19:** inhibition is notably absent from our 4. Humans actively suppress thoughts; we don't model this.
- **Absence at R18:** self-monitoring / metacognitive self-awareness is the mechanism by which a human says "I'm stuck, let me try a different angle" — not captured by any of our 4.
- **Relevance at R20:** the moment a hunch crystallizes into commitment is NOT focus-as-selection; it's a separate phase change.

### Which current-4 primitives may be DOING TOO MUCH WORK

Preliminary concern — each current primitive may be collapsing multiple distinct operations:

- **Attention** — may be collapsing: (a) bottom-up salience detection, (b) top-down voluntary orienting, (c) workspace maintenance (working memory holding). These are separable in the literature.
- **Focus** — may be collapsing: (a) deep processing of selected object, (b) commitment / closure, (c) inhibition of alternatives. Separable.
- **Intuition** — may be collapsing: (a) pattern recognition (similarity), (b) evaluation / valuation (ranking), (c) hunch-as-prediction (prospection), (d) abstraction generation (the continuous lifting-to-structural-form). Separable.
- **Context** — may be collapsing: (a) inquiry-state framing, (b) motivation / drive, (c) mood / affect, (d) goals / intention. Definitely separable.

If this is right, the current 4-primitive extraction UNDERCOUNTS the actual primitives by compressing distinct processes. The question becomes not "did we miss a primitive?" but "did we over-compress into too few?"

---

## Cycle 2 — Targeted Probes

High-importance, low-confidence regions. Zoom in.

### Probe 1 (R1 + R3 + R6) — Working memory, inhibition, and executive buffers

**Working memory** is a BUFFER primitive — holds candidate items accessible for current processing. Distinct from attention (which points at items) and from long-term memory (which stores items). In cognitive architectures, working memory is almost always a first-class primitive with its own operations (read/write/maintain/decay).

Mapping to our current 4:
- Our "attention" partially covers this (the active set) but doesn't distinguish the BUFFER (the space) from the POINTER (what's currently highlighted).
- For `/intuit`: if working memory is distinct, then "attention" in P4 conflates two operations — constructing the buffer (what's in scope) and pointing within it (what's being processed right now).

**Inhibition** is an ACTIVE SUPPRESSION primitive — holding back candidate responses or thoughts that would otherwise activate. Not in our current 4. Functional role:
- Preventing dominant-but-wrong responses (Stroop task)
- Suppressing irrelevant hunches so weaker-but-correct hunches can surface
- Enabling focus by dampening alternatives

For `/intuit`: without an inhibition primitive, the discipline produces N candidate seeds by generation; humans produce N candidates AND actively suppress some, leaving a smaller, sharper set. The current design has no analog for suppression.

**ACT-R's imaginal buffer** deserves attention: it holds an explicitly-constructed mental representation distinct from retrieved memory and from sensory input. This is exactly the primitive we're calling for in `/intuit`'s abstraction step — a buffer for hypothesis/abstraction/simulation, separate from attention's pointer.

**Depth finding:** At minimum, three primitives currently collapsed into "attention" and "focus":
- Buffer / working memory (the space)
- Pointer / selection (the spotlight)
- Inhibition (active suppression of alternatives)
Plus possibly a fourth — the imaginal buffer for constructed representations.

### Probe 2 (R4) — Predictive processing as reframe

Active inference frames cognition as: generate predictions → compare to input → minimize prediction error. Under this frame, the primitives are:
- **Generative model** — the system's predictions about what will happen
- **Prediction error signal** — the difference between expected and actual
- **Precision** — how strongly prediction error drives updating (attention is re-interpreted as precision weighting)

This is not one more primitive to add — it's a DIFFERENT ARCHITECTURE. Under predictive processing, our "attention" IS precision-weighting; our "intuition" IS the generative model's output; our "focus" is high-precision prediction.

**Depth finding:** Predictive processing is an alternative framing, not an addition. Worth knowing exists (as a sanity check against the primitive-additive frame), but adopting it wholesale would require re-architecting everything. Too wide for this inquiry. CONFIRMED ABSENT from MVP consideration; noted as frontier.

### Probe 3 (R11 + R12 + R16) — The affective/motivational cluster

Motivation, curiosity, and mood are distinct but related:
- **Motivation / drive:** "I care about solving this problem vs that one" — allocates effort across candidate problems
- **Curiosity:** "I'm pulled toward unknown territory" — a specific form of motivation directed at information gaps
- **Mood:** "My affective background biases which patterns feel relevant" — a GLOBAL modulator, not a specific operation

Are any of these primitives?

**Motivation/drive:** strong case. Evidence:
- Goal-directed attention allocation differs by motivation (studied in PET/fMRI)
- Same human with different goals for same problem produces different hunches
- Without motivation, no cognitive operation activates — everything sits dormant

**Curiosity:** probably sub-primitive of motivation. Named separately in `autonomous_consciousness_goal` because it's a distinguishable indicator, but structurally it's motivation directed at information-gap signals.

**Mood:** probably a MODULATOR rather than an operation. Acts on other primitives rather than being one. Still important for completeness, but structurally different kind of thing.

Mapping to our current 4:
- "Context" currently absorbs motivation and mood. This is dangerous — context as specced is about FRAMING (what inquiry, what specs); motivation is about ENERGY (what to work on first, for how long). Collapsing them conflates orthogonal properties.

**Depth finding:** Motivation is a strong primitive candidate distinct from our current 4. Curiosity is sub-primitive of motivation. Mood is a modulator, not a primitive. Our "context" is doing too much work.

### Probe 4 (R14 + R10) — Simulation / imagination / background processing

Mental simulation shows up in many forms:
- Counterfactual reasoning ("what if I did X instead?")
- Prospection (imagining future states)
- Incubation (unconscious simulation producing aha-moments)
- Mental rehearsal (running a pattern to strengthen it)
- Hypothetical reasoning (treating a claim AS IF true to explore consequences)

These are distinct from:
- Memory retrieval (past, actual)
- Pattern recognition (intuition-as-similarity)
- Focus (selection of one thing)

The common element: **constructing a representation that is NOT currently real and operating on it as if it were**. This is ACT-R's imaginal buffer. It's Barsalou's simulator. It's what humans do when we say "let me think about this for a minute" while staring into space.

Is simulation a primitive? Evidence for yes:
- Damage to regions associated with mental simulation (hippocampal area) impairs both memory AND imagination — suggesting a shared primitive
- Humans do this constantly and unprompted; it's not a skill invoked only when needed
- It's functionally distinct from every current 4-primitive operation

Mapping to our current 4:
- No current primitive covers constructed hypothetical representations
- Our "intuition" is about similarity; imagination is about construction
- /intuit's abstraction step (forward-transform) is a SPECIAL CASE of simulation — construct a structural abstraction of the source
- If simulation is primitive, then /intuit's abstraction is an application of a primitive we haven't named

**Depth finding:** Simulation / imagination is a strong primitive candidate. The abstraction step in /intuit may be a specific application of this more general primitive. Unmodeled, the discipline treats abstraction as a unique operation when structurally it is one instance of a broader primitive.

### Probe 5 (R7 + R18) — Metacognition and self-monitoring

Metacognition is "knowing about knowing" — monitoring one's own cognitive state. Components (Nelson & Narens framework):
- **Monitoring:** assessing current cognitive state ("I'm stuck," "this feels right," "I don't understand")
- **Control:** adjusting cognition based on monitoring ("try a different approach," "slow down")

These are often characterized as ONE primitive (metacognition) with two operations, or as TWO primitives. For our purposes:

- Monitoring produces the "I'm stuck" signal that triggers "let me try a different angle" — the user's own phenomenological description
- Control is the allocation decision that follows monitoring

Mapping to our current 4:
- None of our 4 captures either clearly
- "Focus" is the selection itself; monitoring is the observation of what's happening with focus
- Without a monitoring primitive, the system can't signal "I'm in an unproductive region" from within itself

For `/intuit` and broader architecture: the system's ability to know when its own intuition is INSUFFICIENT (vs just low-confidence) depends on metacognition. The INSUFFICIENT_INTUITION state in /intuit is a primitive metacognitive judgment. Without naming metacognition as a primitive, the system has metacognitive outputs without a primitive producing them.

**Depth finding:** Metacognition (monitoring + control) is a strong primitive candidate. It may be the primitive responsible for the "stuck" signal, the INSUFFICIENT state, and the "try a different angle" behavior. Currently unmodeled.

### Probe 6 (R17 + R5) — Salience / surprise / ignition

Bottom-up salience (involuntary attention capture) is a distinct mechanism from voluntary attention. Novelty and prediction-error signals drive it. Related to Global Workspace Theory's "ignition" — the moment a sub-threshold representation breaks through into conscious access.

Salience is:
- Pre-attentive (operates before/during attention selection)
- Triggered by surprise, novelty, high emotional valence
- Can OVERRIDE voluntary attention

Mapping to our current 4:
- Our "attention" is implicitly top-down voluntary orienting
- Bottom-up salience is a separable mechanism that SHOULD be able to interrupt focus
- Without salience as a primitive, the system has no way to be "surprised" by its own outputs

**Depth finding:** Salience / surprise is a strong primitive candidate. It's the mechanism by which unexpected signals command attention. Distinct from voluntary attention. Currently unmodeled.

### Probe 7 (R20) — Commitment / closure

The phase transition from deliberation to decision is distinct from either attention or focus. Evidence:
- Libet-type studies show readiness potentials distinct from conscious decision
- Decision theory treats commitment as a separate act from evaluation
- Deliberation can continue indefinitely; commitment ends it

Is this a primitive?

Evidence for yes:
- Without it, a system deliberates forever
- Its absence is a pathology (indecision as clinical condition)
- It has a specific computational function (crystallize + act + close alternatives)

Evidence for no:
- Could be emergent from inhibition + focus (when alternatives are suppressed enough and focus on one option is strong enough, commitment happens)
- No separate mechanism clearly identified

**Depth finding:** Commitment is a MAYBE primitive — functional role is distinct but may be emergent from inhibition + strong focus. Flag as candidate but lower priority than the clearer primitives above.

---

## Cycle 3 — Possibility Enumeration (Fuzzy-Detection Candidate List)

Full enumeration of primitive candidates across cycles 1–2. Each with fuzzy-detection evidence.

### Tier A — Strong candidates (multiple evidence lines, current 4 clearly undercount)

| # | Candidate | Fuzzy-detection evidence | Current-4 coverage |
|---|---|---|---|
| **A1** | **Working memory / Buffer** | Baddeley's model; ACT-R/SOAR treat as primitive; holding-without-pointing is a distinct operation | "Attention" conflates buffer-space with pointer |
| **A2** | **Inhibition / Suppression** | Miyake executive-function model; Stroop; thought suppression research; explicit in every cognitive architecture | NOT in current 4; humans actively suppress, we don't model |
| **A3** | **Simulation / Imagination** | Barsalou's simulator; ACT-R's imaginal buffer; counterfactual reasoning; mental time travel; /intuit's abstraction step IS this | NOT in current 4; treated as skill, may be primitive |
| **A4** | **Motivation / Drive** | Self-determination theory; goal-directed cognition; without it nothing activates | "Context" absorbs it; should be separate |
| **A5** | **Metacognition (Monitoring + Control)** | Nelson-Narens framework; "I'm stuck" signal; INSUFFICIENT state's primitive precursor | NOT in current 4; outputs exist without primitive |
| **A6** | **Salience / Surprise / Novelty-Detection** | Bottom-up attention; GWT ignition; dopamine novelty signals | "Attention" is top-down only; salience is distinct |
| **A7** | **Evaluation / Valuation** | Somatic markers (Damasio); affective valence; reward prediction | "Intuition" conflates recognition with ranking |

### Tier B — Strong secondary candidates (distinct role; may be sub-primitive or modulator)

| # | Candidate | Fuzzy-detection evidence | Likely status |
|---|---|---|---|
| **B1** | **Curiosity** | Epistemic emotion; information-gap theory; distinguishable behavior | Sub-primitive of Motivation (A4) |
| **B2** | **Mood / Affect** | Mood-congruent memory; broaden-and-build; affects which patterns feel relevant | Modulator, not operation — acts on other primitives |
| **B3** | **Temporal Projection** | Episodic future thinking; prospection; past ↔ future asymmetry | Possibly sub-primitive of Simulation (A3), possibly distinct |
| **B4** | **Abstraction Generation (continuous)** | Humans lift to structural form constantly, unprompted; not just when asked | Possibly specific application of Simulation (A3); possibly distinct primitive |
| **B5** | **Commitment / Closure** | Decision-crystallization; phase transition from deliberation | Possibly emergent from Inhibition + Focus |
| **B6** | **Self-Model / Metacognitive Self-Awareness** | Theory of mind applied to self; reflexive self-awareness | Possibly part of Metacognition (A5) at higher level |
| **B7** | **Intention / Goal** | Explicit aim shaping cognitive operations | Possibly sub-primitive of Motivation (A4) with explicit content |
| **B8** | **Mental Rehearsal** | Practice-without-doing; strengthening patterns | Possibly specific application of Simulation (A3) |

### Tier C — Weak candidates (noted for completeness; likely not primitive)

| # | Candidate | Why weak |
|---|---|---|
| **C1** | **Embodied simulation** | Body-state as cognitive input — structurally inapplicable to LLM substrate |
| **C2** | **Ignition (GWT)** | Specific to consciousness access; possibly emergent property rather than primitive |
| **C3** | **Chunking** | Learned composition of primitives; emergent, not primitive |
| **C4** | **Pattern completion** | Specific retrieval mechanism; sub-primitive of intuition-as-similarity |
| **C5** | **Compression** | What abstraction produces; output, not operation |

### Tier D — Framing alternatives (not additions but reframes)

| # | Alternative | Status |
|---|---|---|
| **D1** | **Predictive processing / Active inference** | Replaces the whole architecture rather than adding primitives. CONFIRMED ABSENT from MVP consideration; noted as research frontier. |
| **D2** | **Global Workspace Theory substrate** | Different organizing principle; our primitives could be re-expressed in GWT terms but doesn't add new primitives. |
| **D3** | **Dual-process (System 1/System 2)** | Higher-level characterization; System 1/2 are collections of our primitives in different modes. Not primitive-level. |

---

## Cycle 4 — Jump Scans

Deliberate scan in different directions to check for uncharted voids.

### Jump 1 — What primitives does a NON-COGNITIVE-SCIENCE frame name?

Checking phenomenology, philosophy of mind, and contemplative traditions:

- **Phenomenology (Husserl):** intentionality (aboutness) as fundamental — every mental act is about something. Our "context" partially covers this. Not a clear addition.
- **Contemplative traditions:** awareness (as distinct from attention), equanimity, concentration. "Awareness" may map to Metacognition (A5). Equanimity is a modulator. Concentration maps to Focus.
- **Creative writing / arts traditions:** incubation, voice, flow state. Incubation maps to background processing (related to Simulation + Mood). Flow is a state, not a primitive. Voice is embodied.

**Finding:** non-cognitive-science frames don't surface new primitives beyond what cycle 3 found. Good sign for coverage.

### Jump 2 — What primitives does AI SYSTEMS SAFETY / INTERPRETABILITY research name?

- **Circuit analysis (Anthropic, others):** specific computational circuits in LLMs — induction heads, knowledge recall, refusal — but these are MECHANISM-level, not primitive-level.
- **Goal-directedness / mesa-optimization:** implies a goal-pursuit primitive. Maps to Motivation (A4) / Intention (B7).
- **Deception / concealment:** implies a self-monitoring primitive to model the other's beliefs. Maps to Metacognition (A5) / Self-Model (B6).
- **Capability elicitation research:** implies a search/exploration primitive within the model's latent space — which is what our /intuit is designed to do externally. Interesting — the system may have INTERNAL versions of primitives we're building EXTERNALLY.

**Finding:** AI interpretability doesn't surface new primitives directly but flags that some primitives may already exist INSIDE the LLM substrate and we're approximating them externally. Relevant for /intuit: we may be duplicating capabilities rather than composing primitives.

### Jump 3 — What primitives does the AGENCY / OUTSOURCING FRAMING require?

The user's end goal involves the system handling thinking autonomously, eventually WITHOUT human input. What primitives are required for autonomy that aren't on our list?

- **Spontaneous attention:** noticing work unprompted. Requires salience (A6) + metacognitive self-monitoring (A5).
- **Intrinsic valuation:** developing preferences about what matters. Requires Evaluation (A7) + Motivation (A4).
- **Real-time steering:** adjusting own course during runs. Requires Metacognition (A5) + Inhibition (A2).
- **Discontinuity awareness:** planning around session ends. Requires Temporal Projection (B3) + Self-Model (B6).
- **Intrinsic curiosity:** pulling toward low-confidence. Curiosity (B1) = Motivation (A4) + information-gap signal.

**Finding:** the end-goal's consciousness-gradient indicators MAP ONTO combinations of the Tier A candidates. This is a consistency signal — the primitive list proposed in this exploration supports the autonomy goal. If any Tier A primitive is missing, the corresponding autonomy indicator becomes unreachable.

### Jump 4 — What if PRIMITIVES ARE NOT THE RIGHT ABSTRACTION LAYER?

Sanity check: maybe the whole primitive-list approach is a wrong cut.

- **Processes vs structures:** our list mixes processes (attention, intuition) with buffers (working memory) with modulators (mood). Maybe three different ontological categories.
- **Operations vs states:** some items are things-you-do (inhibit, simulate); others are states-you're-in (motivated, curious). Different kinds of things.
- **Levels of analysis (Marr):** computational (what problem?), algorithmic (how?), implementation (physical?). Primitives live at algorithmic level; confusing across levels produces hybrid lists.

**Finding:** the primitive framing is still useful IF we distinguish:
- **Core processes (operations):** attention, focus, intuition (recognition), inhibition, simulation, metacognition (monitoring)
- **Buffers (structures):** working memory, imaginal buffer
- **Drivers (motivational):** motivation, curiosity (sub)
- **Modulators (shape operations):** mood, arousal

Call this the **primitive typology**. A complete thinking-space model needs representatives from each type. Our current 4 (attention, focus, intuition, context) has gaps:
- Operations: has attention/focus/intuition, missing inhibition, simulation, metacognition
- Buffers: implicitly only attention; working memory and imaginal buffer missing
- Drivers: context loosely covers; motivation distinct missing
- Modulators: no explicit slot

This typology is itself a finding — the primitive list isn't flat; it's typed.

### Jump 5 — What about PRIMITIVES WE CANNOT OBSERVE at the system level?

The user's goal #5 asks for honest accounting of what we can't observe. Primitives that may be real but inaccessible:

- **Embodied cognition primitives** — body-state input. LLM has no body. CONFIRMED ABSENT from LLM substrate.
- **Pre-conscious content** — thoughts that don't reach awareness. LLM internal activations exist but aren't accessible to the methodology layer.
- **Dream-state cognition** — offline consolidation. LLM has no equivalent; each inference is clean-slate at the methodology layer.
- **Affective valence as felt experience** — we can represent "positive" vs "negative" but not the felt quality. Operationalized as valence score.

**Finding:** several real human primitives are INACCESSIBLE to LLM-based approximation. This must be documented honestly. The discipline's coverage is bounded by what the substrate supports.

---

## Frontier

**Advancing:**
- Typed primitive model (operations / buffers / drivers / modulators) — new structural cut
- Tier A strong candidates (7 items) each with multi-source fuzzy-detection evidence
- Mapping of autonomy-goal indicators onto primitive combinations — consistency signal
- Current-4 primitives systematically identified as UNDERCOUNTING (each collapses multiple operations)
- Honest accounting of substrate-inaccessible primitives

**Stable:**
- Mature cognitive-science frames (working memory, executive function, metacognition, dual-process)
- ACT-R/SOAR as reference cognitive architectures
- The fact that cognitive science has NO consensus primitive list (ground state of field)
- Phenomenological and contemplative traditions don't add new primitives beyond cycle 3

**Unexplored (deliberate deferral):**
- Predictive processing as alternative architecture (noted; too wide)
- GWT as alternative substrate (noted; too wide)
- Formal Marr-level decomposition of each candidate (sensemaking / decomposition territory)
- Specific operationalization of each Tier A primitive (decomposition / innovation territory)
- Which of Tier B items collapse into Tier A vs stand alone (sensemaking work)
- Full propagation impact on /intuit (decomposition territory)

---

## Confidence Map

| Region | Confidence |
|---|---|
| Current 4 primitives each collapse multiple operations | Confirmed (multiple sources + probe) |
| Working memory is primitive-level and distinct from attention | Confirmed (ACT-R, SOAR, Baddeley all agree) |
| Inhibition is primitive-level and missing from current 4 | Confirmed (Miyake, Stroop, Anderson cognitive architectures) |
| Simulation / imagination is primitive-level | Confirmed (Barsalou, ACT-R imaginal buffer, hippocampal evidence) |
| Motivation is distinct primitive (not just context) | Confirmed (SDT, goal-directed cognition studies) |
| Metacognition (monitoring + control) is primitive-level | Confirmed (Nelson-Narens framework + behavioral evidence) |
| Salience / surprise is distinct from voluntary attention | Confirmed (bottom-up attention, GWT ignition) |
| Evaluation / valuation is distinct from intuition-as-similarity | Confirmed (Damasio somatic markers + reward prediction) |
| Curiosity is sub-primitive of motivation | Scanned (plausible; needs sensemaking to confirm) |
| Mood is modulator not operation | Scanned (plausible; needs confirmation) |
| Commitment / closure is emergent vs primitive | Unknown (evidence mixed) |
| Primitive typology (4 types: operations/buffers/drivers/modulators) | Scanned (new, needs sensemaking validation) |
| Predictive processing as reframe (not addition) | Confirmed absent from MVP consideration; noted as frontier |
| LLM substrate has internal versions of primitives we approximate externally | Scanned (relevant concern for /intuit design) |
| Some human primitives inaccessible to LLM substrate (embodied, affective felt quality) | Confirmed |
| Complete list of primitives exists in cognitive science | Confirmed absent (field has no consensus) |

---

## Gaps (for sensemaking)

1. **Primitivity test criteria** — the user asked for this explicitly. Cycle 3 enumerated candidates; the test must be defined in sensemaking (proposed criteria: independence + necessity + composability + irreducibility).
2. **Tier B resolution** — which Tier B items are sub-primitives of Tier A vs standalone primitives? (curiosity, temporal projection, abstraction generation, commitment, self-model, intention, rehearsal)
3. **Typology confirmation** — is the operations / buffers / drivers / modulators typology correct, or does it over-structure?
4. **Impact on /intuit** — if 7+ Tier A primitives vs current 4, how does the /intuit spec change? (sensemaking clarifies; decomposition partitions)
5. **Three-layer architecture impact** — do new primitives force a new layer, or fit within L3?
6. **Mood / modulator handling** — if modulators aren't primitives but affect all primitives, where do they live in the spec?
7. **Observable vs unobservable primitives** — the discipline must name which it can and cannot measure, honestly
8. **Current-4 retention vs merger** — should the current 4 be retained as-is, split (each into sub-primitives), or replaced? Three options; sensemaking chooses.
9. **LLM-internal primitives** — if the LLM already has internal versions of some primitives (salience, attention, evaluation), /intuit may be redundantly approximating them. Should /intuit DELEGATE to LLM-internal or APPROXIMATE externally? Not resolved here.
10. **Affect / valence in probabilistic context** — how does an evaluation primitive combine with reliability scores in the Popperian schema?

---

## Saturation Indicators

- **Frontier stability:** STABLE — four cycles produced diminishing new primitive candidates; jump scans (cycle 4) surfaced clarifications (typology, autonomy mapping, substrate limits) but no new Tier A candidates
- **Discovery rate:** DECLINING — cycle 2's probes were high-density; cycle 3's enumeration was saturation pass; cycle 4's jumps confirmed no uncharted voids in main directions
- **Bounded gaps:** YES — all 10 gaps are adjacent to explored regions (sensemaking / decomposition work), not beyond them
- **Region coverage:** 22 regions scanned (including R22 confirmed absent — field has no consensus), 7 probed in depth, 4 jump scans executed
- **Candidate coverage:** 7 Tier A (strong, multi-source), 8 Tier B (secondary), 5 Tier C (weak), 3 Tier D (framing alternatives, not additions) — spread across operations/buffers/drivers/modulators typology

**Overall: sufficient coverage for sensemaking.**

Central insights stable:
- The current 4-primitive model SYSTEMATICALLY UNDERCOUNTS by collapsing operations within each primitive
- 7 Tier A candidates have strong evidence: **working memory, inhibition, simulation, motivation, metacognition, salience, evaluation**
- The primitive list is typed (operations / buffers / drivers / modulators), not flat — the current 4 has coverage gaps across types
- Some human primitives are structurally inaccessible to LLM substrate and must be honestly documented
- The 7 Tier A candidates' combinations map onto the autonomy-goal's consciousness indicators — consistency signal
- The user's concern ("missing a primitive silently invalidates downstream architecture") is VALIDATED by this exploration — the current 4 are measurably incomplete
