# Sensemaking: Question Framing Gap

## User Input
devdocs/inquiries/question_framing_gap/_branch.md

---

## SV1 — Baseline Understanding

The question asks why SIC couldn't autonomously expand "adapter pattern" into "adapter + automation + multi-heading." Candidates: second iteration, double-sensemaking, or missing component. Initial read: S's strategic perspective should have caught it, so either S was too narrow or the question constrained the perspectives.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints
- **C1**: S scopes all perspectives to the question from `_branch.md`. Perspectives ask about THIS QUESTION, not THE WHOLE PROJECT.
- **C2**: SIC iteration narrows focus, never widens. Iteration 2 is always a NARROWER version.
- **C3**: The human's expansion came from knowledge OUTSIDE the question — project strategic goals in minimum_viable_loop.md, where_we_left.md, notes.md.

### Key Insights
- **I1**: The SIC-as-wayfinder run's innovation DID produce "7a: all disciplines become configured SIC." The GENERALIZATION was found. But OPERATIONAL CONSEQUENCES (automation, branching) weren't explored because the question was about wayfinding, not system architecture.
- **I2**: Question scope creates a CEILING. SIC goes deeper (iteration) but never wider. Width is locked at question-framing time.
- **I3**: The human's expansion was a CONNECTION operation — linking the immediate question to strategic context. It's Combination applied to the question itself, not to the answer.
- **I4**: S's strategic perspective is scoped BY the question. "Strategic implications of the adapter pattern" is interpreted as implications FOR THE ADAPTER PROBLEM, not FOR THE ENTIRE SYSTEM.
- **I5**: Structural asymmetry: the ANSWER gets widened (perspectives, mechanisms). The QUESTION never does. No mechanism questions the question.
- **I6**: S's perspectives are bounded by the context window. If strategic context is in unread files, S can't use it. Human had it in their head.
- **I7**: Iteration is structurally narrowing. It CANNOT produce width expansion by design.
- **I8**: The human's operation was goal-aligned scoping: "Does this question, if answered well, advance my actual goals? If not, what wider question would?"
- **I9**: This gap BLOCKS autonomous self-improvement. A loop that can't widen its own questions optimizes locally but never restructures globally.
- **I10**: Question expansion must be selective — not every question needs widening.
- **I11**: Question expansion is genuinely absent. Not decomposition (breaks down), not elaboration (clarifies), not accommodation (destabilized model). It's: "widen the question by connecting it to strategic context."

### Structural Points
- **SP1**: Three candidate explanations: (a) S applied too narrowly, (b) iteration goes deep not wide, (c) missing mechanism
- **SP2**: The human performed goal-aligned scoping: compare question to project goals, widen if narrow answer would miss critical concerns.

### Foundational Principles
- **FP1**: "The human is the natural classifier" — extended: also the natural question-framer.
- **FP2**: Every discipline has a transform. Nothing transforms narrow-question → properly-scoped-question.

---

### SV2 — Anchor-Informed Understanding

SIC has a WIDTH BLIND SPOT. Goes deep (perspectives, mechanisms, adversarial testing) and deeper (iteration narrows). But never wider. The question scope at the beginning is the ceiling. The human's expansion was goal-aligned scoping — connecting the question to strategic context. This operation is genuinely absent.

---

## Phase 2 — Perspective Checking

### Technical
Traced each candidate: (a) S's strategic perspective COULD catch it but needs context it doesn't have. (b) Iteration structurally narrows — can't widen. (c) Gap is real — nothing questions the question.

### Human
The human's operation: load strategic context → compare question to goals → notice narrow answer misses critical concerns → widen. This is a goal-alignment check on the QUESTION.

### Strategic
Without this fix, the system produces well-crafted answers to narrowly-scoped questions forever. Blocks Level 3+ autonomy and autonomous self-improvement.

### Risk
Excessive expansion is harmful — not every question needs widening. Must be conditional and selective.

### Definitional
Checked existing system: `/elaborate` clarifies, doesn't expand. Decomposition narrows, doesn't widen. Accommodation handles model instability, not scope insufficiency. Nothing addresses scope expansion. Gap confirmed.

---

### SV3 — Multi-Perspective Understanding

The gap is NOT a missing discipline (too lightweight for a full discipline). NOT a pre-loop step (most questions don't need it). It's a CONDITIONAL check at question-framing time: compare question to strategic context, propose widening if narrow answer would miss critical concerns.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: Could a second iteration discover the expansion?

**Resolution:** NO. Iteration narrows scope. If the narrow question is technically answered, the loop terminates. Iteration can't detect scope insufficiency because the question defines what "sufficient" means.
**Confidence:** HIGH

### Ambiguity 2: Could double-sensemaking catch it?

**Resolution:** It COULD work but is the wrong granularity. Full S→SV6 is overkill for a scoping check. The need is lighter.
**Confidence:** LOW

### Ambiguity 3: Missing component, missing step, or missing prompt?

**Resolution:** TWO changes to EXISTING mechanisms: (a) the adapter loads project-level strategic context before S runs, (b) S's strategic perspective includes a scope-sufficiency check. Not a new component — two additive enhancements.
**Confidence:** HIGH

---

### SV4 — Clarified Understanding

Option (a) from the goal: already present but insufficiently configured. Adapter doesn't load strategic context. S's strategic perspective doesn't ask "should this question be wider?" Two targeted additions.

---

## Phase 4 — Degrees-of-Freedom Reduction

**Fixed:** Iteration cannot expand scope. The gap is real. Fix uses existing mechanisms.
**Eliminated:** New discipline, new component, double-sensemaking, iteration-based discovery.
**Remaining:** Two additive changes — adapter context loading + S scope checking.

---

### SV5 — Constrained Understanding

One path: adapter loads strategic context files, S's strategic perspective includes scope check. Human still decides whether to widen (graduated autonomy Level 0-1). At higher levels, S widens autonomously.

---

## Phase 5 — Conceptual Stabilization

### SV6 — Stabilized Model

**The question-framing gap is NOT a missing component — it's two underspecified features of EXISTING components.**

**What the human did:** Loaded strategic context → compared question to goals → noticed narrow answer misses critical concerns → widened.

**What the system is missing:**

1. **Context loading** — adapter's S guidance should specify which project files to read for strategic context before S runs.

2. **Scope checking** — S's strategic perspective should explicitly ask: "Given the project's strategic direction, would answering this question narrowly miss critical adjacent concerns? If yes, propose a wider question before proceeding."

**Why other candidates fail:**
- Iteration: structurally narrows, can't widen
- Double-S: works but overkill for a lightweight check
- New component: unnecessary — existing mechanisms just need configuration

**Implementation:**

In adapter `## S — Input Guidance`:
```
Before analyzing the question, load project strategic context:
- Read thinking_disciplines/minimum_viable_loop.md
- Read thinking_disciplines/where_we_left.md
Then check: given these goals, is the question scoped correctly?
```

In S's strategic perspective:
```
After checking strategic implications, also ask:
"Would answering this question narrowly miss critical
adjacent concerns? If yes, propose wider scope."
```

**How SV6 differs from SV1:** SV1 saw three candidate explanations. SV6 identifies the exact two features that need additive changes and eliminates the others with structural arguments.

---

## Saturation Indicators

- **Perspective saturation**: 5 perspectives, all produced new anchors. Saturated.
- **Ambiguity resolution ratio**: 3/3 resolved. 2 HIGH, 1 LOW.
- **SV delta**: Significant. From three candidates to one specific two-part fix.
- **Anchor diversity**: C(3), I(11), SP(2), FP(2), MN(3). I2, I5, I8 load-bearing.
