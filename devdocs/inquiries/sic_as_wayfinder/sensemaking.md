# Sensemaking: SIC as Wayfinder

## User Input
devdocs/inquiries/sic_as_wayfinder/_branch.md

---

## SV1 — Baseline Understanding

The question asks whether the SIC loop can do wayfinding's job. Wayfinding's job is: given where we are, what's the most impactful thing to do next? The previous sensemaking (on SIC as primitive) concluded that wayfinding has a "structurally distinct cognitive shape" from S, I, and C. So the naive answer is "it can't." But the user is asking HOW it could — which means they suspect the structural distinctness might be overstated, or that SIC can approximate wayfinding well enough to be practical.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

- **C1**: Wayfinding's core question (from `wayfinding.md`): "Given where we are, where we've been, how fast we're moving, and whether anything we previously decided might no longer hold — what is the one action that would change the landscape most?"
- **C2**: Wayfinding was broken in practice — it produced surface-level TODO-list recommendations instead of identifying high-impact actions. Root cause (from `wayfinding_fundamental_fix/summary.md`): its definition scoped it to STATE AWARENESS but its core question demanded ACTION EVALUATION.
- **C3**: The fix added three layers: (1) goal in the sensing layers, (2) three named failure-mode traps (TODO fixation, fake gates, insignificance), (3) self-challenge.
- **C4**: SIC takes a QUESTION as input, not a STATE. Wayfinding takes a STATE as input. The state has to become the question.
- **C5**: Wayfinding produces a MOVE (one of six). SIC produces an ANSWER. The answer needs to become actionable direction.

### Key Insights

- **I1**: Wayfinding's core question IS a question. It can be phrased as: "Given [current state], what is the single highest-impact action toward [goal]?" That's a legitimate input for SIC.
- **I2**: The wayfinding fix's three layers (goal-directed evaluation, failure-mode traps, self-challenge) are essentially CRITIQUE DIMENSIONS. In SIC terms, they'd live in the C step.
- **I3**: Wayfinding's six moves (BROADEN, NARROW, SHIFT, DIAGNOSE, TERMINATE, RECONSIDER) are a constrained output vocabulary. SIC doesn't have a constrained output vocabulary — it produces freeform answers.
- **I4**: The wayfinding spec's three-layer awareness model is a structured way to READ the current state. In SIC terms, this would be the INPUT to S.
- **I5**: MVL is ALREADY doing primitive wayfinding. Its ITERATION COMPLETE logic reads state, decides if the question is answered, and either terminates or narrows. That's wayfinding — just not called that.

### Structural Points

- **SP1**: Two different things called "wayfinding": (a) the discipline spec with three-layer awareness and six moves, and (b) the practical need "what should I do next to make the most progress?"
- **SP2**: MVL's ITERATION COMPLETE already does within-inquiry wayfinding.
- **SP3**: What MVL doesn't do: steer ACROSS inquiries or across the project as a whole.

### Foundational Principles

- **FP1**: "The human is the natural classifier." They also decide WHEN to do wayfinding.
- **FP2**: "Every cognitive task is a SIC loop applied to a different question." If wayfinding is a cognitive task, then it IS a SIC loop applied to "what should I do next?"
- **FP3**: SIC doesn't constrain itself to state awareness. It takes any question — including action-evaluation questions.

### Meaning-Nodes

- **MN1**: Input format — state must become a question.
- **MN2**: Output format — answer must become actionable direction.
- **MN3**: Scope — within-inquiry vs. across-project wayfinding are different problems.

---

### SV2 — Anchor-Informed Understanding

The question dissolves into three sub-problems: (1) input translation (state → question), (2) output discipline (freeform answer → actionable direction), (3) scope definition (within-inquiry vs. across-project).

MVL is already doing within-inquiry wayfinding at its ITERATION COMPLETE step. The gap is across-inquiry/across-project wayfinding.

---

## Phase 2 — Perspective Checking

### Technical / Logical

Wayfinding decomposes into: (1) read current state, (2) identify candidate actions, (3) evaluate each action's impact toward goal, (4) select highest-impact action. This is S→I→C:
- S: make sense of current state
- I: generate candidate next actions
- C: evaluate which action changes the landscape most

The wayfinding spec's components map directly onto SIC phases. The spec isn't a different cognitive shape — it's a CONFIGURED SIC with specific input structure, output constraints, and evaluation dimensions.

**New anchor (I6):** Wayfinding's spec components map directly onto SIC phases.

### Human / User

When the user needs wayfinding, they want DECISIVENESS, not deep process. SIC might be too heavy.

**New anchor (I7):** Wayfinding-via-SIC has a weight concern.

Counter: SIC's depth scales with question complexity. A pointed question produces lighter treatment.

**New anchor (I8):** SIC weight scales with question complexity. Pointed wayfinding questions produce lighter runs.

### Strategic / Long-term

If wayfinding reduces to configured SIC, the pattern may generalize — ALL disciplines might be SIC with different input templates, output constraints, and evaluation dimensions.

**New anchor (I9):** If wayfinding = configured SIC, the pattern may generalize to all disciplines.

### Risk / Failure

The wayfinding spec accumulated specific wisdom about failure modes (TODO fixation, fake gates, insignificance). Running SIC without this wisdom risks regression.

**New anchor (I10):** Discipline specs are accumulated failure-mode wisdom for specific question types.

Counter: the failure modes CAN be injected into the SIC question as evaluation guidance.

**New anchor (I11):** Spec wisdom can travel as question-context.

### Definitional / Consistency

Re-examining the previous sensemaking's conclusion that wayfinding has a "structurally distinct cognitive shape":

Wayfinding's process: read state → integrate → check traps → produce move. It goes from perception (S) to selection (C) WITHOUT generation (I). This is why it fixated on TODOs — it never generated alternatives, just picked from what was visible.

**New anchor (I12):** Wayfinding's structural flaw was EXACTLY the missing I step. SIC fixes this. The "different shape" was actually a "broken shape."

---

### SV3 — Multi-Perspective Understanding

Major reframing: wayfinding was structurally DEFICIENT (missing the generative step), not structurally DISTINCT. SIC doesn't approximate wayfinding — SIC COMPLETES it. The wayfinding spec's valuable components are CONFIGURATIONS for SIC, not alternatives to it.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: Is wayfinding a "structurally distinct cognitive shape" or a "configured SIC"?

**Strongest counter-interpretation:** Wayfinding is distinct because its core operation is PERCEPTION (sensing where you are), not SEARCH. Different cognitive primitive.

**Why the counter-interpretation fails (structural grounds):** Wayfinding doesn't just perceive — it also decides. Its output is a MOVE (an action decision). Action selection requires: knowing the state (S), generating candidate actions (I), and evaluating which advances the goal most (C). Wayfinding tried to jump from (a) to (c), which is WHY it broke.

**Confidence:** HIGH

**Resolution:** Wayfinding is a CONFIGURED SIC, not a structurally distinct shape. Its components are configurations for running SIC on steering questions.

**What is now fixed:** Wayfinding = SIC with specific input/output/evaluation configuration.

**What is no longer allowed:** Treating wayfinding as requiring a fundamentally different cognitive process.

**What now depends on this:** Method for doing wayfinding via MVL. Status of other "structurally distinct" disciplines.

**What changed:** The previous sensemaking's SV6 model needs revision.

---

### Ambiguity 2: Is full SIC too heavy for a steering checkpoint?

**Strongest counter-interpretation:** Yes — running full S/I/C on "what should I do next?" is overkill.

**Why it partially survives:** The concern is real for open-ended wayfinding. But SIC scales to question complexity — narrow questions produce lighter runs.

**Confidence:** LOW

**Resolution:** Weight is managed through question scope. Phrase wayfinding questions narrowly to keep SIC light.

---

### Ambiguity 3: What scope of wayfinding can SIC handle?

**Resolution:** Both within-inquiry and cross-project, if the human provides compressed state as input. The human gathers state across contexts; SIC evaluates within the question's context.

**Confidence:** LOW — practical constraints create edge cases.

---

### SV4 — Clarified Understanding

Wayfinding via SIC is structurally superior to standalone wayfinding because SIC forces the generative step that wayfinding skipped. The method: phrase a wayfinding question with compressed state, goal, and failure-mode traps as evaluation guidance. Weight is managed by question scope. Both within-inquiry and cross-project scopes are viable.

---

## Phase 4 — Degrees-of-Freedom Reduction

**Fixed:**
- Wayfinding = configured SIC
- The generative step (I) was what wayfinding was missing
- Weight scales with question scope
- Both scopes viable with human state compression

**Eliminated:**
- "Wayfinding requires a different process" — eliminated
- "SIC is always too heavy for steering" — eliminated
- "SIC can't do cross-project wayfinding" — eliminated

**Remaining paths:**

1. **Ad-hoc**: User phrases wayfinding questions manually each time.
2. **Template-assisted**: A question template structures the wayfinding question with state, goal, and traps.
3. **Command wrapper**: A `/wayfinding` command that constructs the question from template and passes to SIC.

---

### SV5 — Constrained Understanding

Three paths at different formalization levels. Path 1 works now. Path 2 is more reliable with low overhead. Path 3 is most reliable but needs implementation. Pragmatic path: start with 2, graduate to 3 when template proves itself.

---

## Phase 5 — Conceptual Stabilization

### SV6 — Stabilized Model

**Using SIC as a wayfinder is not just feasible — it's structurally superior to the standalone wayfinding discipline.**

The standalone wayfinding discipline had a fundamental structural flaw: it went from perception (read state) to selection (pick a move) without generation (create candidate actions). SIC fixes this by forcing the generative step (I).

**The practical method — run `/MVL` with a wayfinding-shaped question:**

```
Given:
- [compressed current state — what's done, what's in progress, what's stuck]
- [goal — what you're trying to achieve]

What is the single highest-impact action I should take next?

Evaluation guidance (check for these traps):
- Am I recommending this because it's undone, or because it advances the goal?
- Is there a real prerequisite I'm treating as optional, or a fake prerequisite I'm treating as real?
- Is there a much higher-impact action I'm overlooking?

After selecting: name one action you're NOT recommending. Compare its impact to your choice. If higher — switch.
```

S makes sense of the state. I generates candidate actions (not just TODOs). C evaluates each against the goal, checking for the named traps.

**The wayfinding spec's role going forward:** Not a separate discipline — a QUESTION TEMPLATE and EVALUATION GUIDE for running SIC on steering questions. Three-layer awareness = input template for S. Failure-mode traps = evaluation dimensions for C. Six moves = optional output vocabulary.

**How SV6 differs from SV1:** SV1 assumed wayfinding is structurally distinct and asked whether SIC can approximate it. SV6 concludes wayfinding was structurally DEFICIENT (missing the generative step) and SIC doesn't approximate it — SIC COMPLETES it.

---

## Saturation Indicators

- **Perspective saturation**: 5 perspectives checked. Definitional produced the most significant destabilization — reframing "structurally distinct" as "structurally deficient." No additional perspectives likely to produce new anchor types.
- **Ambiguity resolution ratio**: 3/3 resolved. Ambiguity 2 and 3 at LOW confidence. Ambiguity 1 at HIGH confidence.
- **SV delta**: Very significant. SV1: wayfinding is a different shape. SV6: wayfinding is a broken version of SIC that SIC fixes. Complete structural reframe.
- **Anchor diversity**: Constraints (5), insights (12), structural points (3), principles (3), meaning-nodes (3) across 5 perspectives. I6 and I12 are the load-bearing anchors.
