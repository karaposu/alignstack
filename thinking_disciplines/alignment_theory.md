# Cognitive Alignment Theory

When work moves from intent to outcome — whether between two people, between a human and an AI, or within a single cognitive process — misalignment can occur at exactly six layers. Each layer represents a different type of understanding that must be established for the work to succeed. Skip any layer and the work built on top of it inherits the misalignment.

This document describes the six layers, the four pillars required at each layer, and the structural identity between the alignment chain and the SIC cognitive loop.

---

## The Six Alignment Layers

### Layer 0: Workspace Alignment

**The environment and context aren't set up correctly.**

Before any work begins: does the person doing the work understand the environment they're operating in? What already exists, what conventions are in place, what constraints apply, what has been tried before.

Without this, every task starts from a blank slate. Decisions contradict existing patterns. Work duplicates what already exists.

Workspace alignment is established once and verified each time work begins.

### Layer 1: Task Alignment

**The task is not understood well — in terms of intent, depth, and scope.**

The most basic level: what are we doing and why? Not how — just what.

Task alignment means both sides agree on:
- What the problem is
- Why it matters
- What the expected outcome looks like
- What is explicitly out of scope

If this layer fails, everything downstream is wasted effort. A perfectly executed plan for the wrong task is still the wrong task.

### Layer 2: Task Alignment (Intent & Scope)

**The intent or scope of the task doesn't match the intent & scope of the goal.**

Once the task is understood, the Intent& scope must be right. A question can be understood correctly (L1) but scoped too narrowly or too broadly (L2). Scope alignment ensures the work covers what the goal actually requires — no more, no less.

Scope misalignment is the most common failure in AI-assisted work: the AI answers the literal question perfectly while missing the broader concern that motivated the question.

### Layer 3: Action-Space Alignment

**The wrong approach is being used.**

Given the task (L1) and its scope (L2), what approach should be taken? For any non-trivial task, multiple valid approaches exist. Action-space alignment means agreeing on which region of the solution space to operate in — before committing to specific steps.

This layer has a natural split:
- **Reading** the action space: what approaches are known to exist? (Established during understanding)
- **Writing** to the action space: what approaches could exist but haven't been considered? (Established during generation)

### Layer 4: Action-Set Alignment

**The specific actions are wrong — wrong sequence, wrong steps, or critical steps missing.**

Given the approach (L3), what exactly are the steps? Each step should be unambiguous enough that someone could execute it without clarifying questions.

Action-set alignment catches a different class of problems than the layers above: the task is right, the approach is right, but the steps are out of order, or a critical step is missing, or a step makes an assumption that doesn't hold.

### Layer 5: Coherence Alignment

**The work breaks something that was already aligned.**

A plan can be correct in isolation and still be wrong in context. It might contradict established patterns, duplicate existing work, or break implicit contracts.

Coherence alignment asks: if we execute these actions, will the result be coherent with the whole — or will it create an island that doesn't connect to anything?

This layer has a natural split:
- **Question-level coherence**: before work begins, is the question itself coherent with prior findings and existing knowledge?
- **Answer-level coherence**: after work completes, does the result fit with what already exists?

### Layer 6: Outcome Alignment

**The result doesn't match the original intent.**

Everything above can be perfectly aligned and the outcome can still miss the mark. The task description was subtly wrong. The success criteria didn't capture what actually mattered. The real problem was adjacent to the articulated one.

Outcome alignment closes the loop. After execution, compare what was built against the original intent — not the plan, not the steps, but the actual problem that started everything.

Without outcome alignment, you can complete task after task with perfect process and gradually drift from what actually matters.

---

## Why the Order Matters

The layers are sequential. Each depends on the previous:

- You can't evaluate the approach (L3) if the task isn't clear (L1-L2)
- You can't define steps (L4) if the approach isn't chosen (L3)
- You can't check coherence (L5) if the steps don't exist yet (L4)
- You can't verify outcomes (L6) if nothing was executed (L0-L5)
- None of the above work if the workspace isn't understood (L0)

Skipping layers is how misalignment sneaks in. It feels faster to jump straight to action, but you end up building the wrong thing faster.

### The Cost Principle

The earlier the misalignment, the more expensive:

| Layer | Misalignment | Cost |
|-------|-------------|------|
| L0 | Operating without understanding the environment | Contradicts existing patterns, duplicates work |
| L1 | Building the wrong thing | Total waste — everything must be redone |
| L2 | Right thing, wrong scope | Major rework — scope must be corrected |
| L3 | Right task, wrong approach | Major rework — approach must be reconsidered |
| L4 | Right approach, wrong steps | Partial rework — specific steps need fixing |
| L5 | Right steps, poor fit | Technical debt — works but doesn't belong |
| L6 | Everything aligned, wrong result | Silent drift — process looks good, results don't |

---

## The Four Pillars

At each layer, alignment requires the same four conditions to hold. These are not optional — they are the chain of requirements for alignment to exist at all.

> Alignment requires **Comparison.**
> Comparison requires **Measurement.**
> Measurement requires **Visibility.**
> Visibility requires **Explicitness.**

### Explicitness

State it clearly. Intent, context, and boundaries are documented, not assumed. If it's implicit, it can't be verified.

### Visibility

Make it observable. All relevant state is accessible — not hidden in someone's head, not buried in a system's internals, not implied by convention.

### Measurement

Make it verifiable. The difference between intent and outcome is quantifiable or at least assessable — not vague, not "it feels right."

### Comparison

Check intent vs. outcome. Continuously compare what was meant against what was produced. This is the alignment check itself — the moment where misalignment becomes detectable.

### Applied Across Layers

At every layer, all four pillars apply. For example, at Task Alignment (L1):
- **Explicitness** → write clear task requirements
- **Visibility** → make requirements accessible to whoever does the work
- **Measurement** → define success criteria
- **Comparison** → verify that the work matches the requirements

The six layers define WHERE alignment can break. The four pillars define WHAT you need at each layer to maintain alignment. Together: 6 layers × 4 pillars = 24 specific alignment checks.

---

## The Alignment-Cognition Identity

The six alignment layers are not just a framework for checking delegation quality. They are structurally identical to the three operations of any cognitive process that moves from intent to outcome.

Every cognitive process that follows the understand → generate → evaluate pattern establishes alignment at exactly these six layers:

```
UNDERSTANDING (S)          GENERATION (I)           EVALUATION (C)
─────────────────          ──────────────           ──────────────
L0: Load context           L3: Generate approaches  L5: Evaluate coherence
L1: Understand the task    L4: Select best actions   L6: Verify outcome
L2: Establish right scope
```

### The Identity

| Alignment Layer | Cognitive Operation | What it establishes |
|---|---|---|
| L0: Workspace | Understanding | Environment is known |
| L1: Task (intent) | Understanding | Task is comprehended |
| L2: Task (scope) | Understanding | Scope matches the goal |
| L3: Action-Space | Generation | Approaches are identified and created |
| L4: Action-Set | Generation | Best combination is selected |
| L5: Coherence | Evaluation | Results fit with what exists |
| L6: Outcome | Evaluation | Results match original intent |

This is not an analogy. It is a structural identity:

- The alignment chain describes WHERE things go wrong (six failure modes)
- The cognitive loop describes HOW to go right (three operations)
- They are two perspectives on the same underlying process

The evidence: every operation of the cognitive loop maps exhaustively to alignment layers. Every alignment layer maps to a specific cognitive operation. No leaks in either direction. Removing one side makes the other lose its structural reason to exist.

### Three Levels

| Level | What it describes | Example |
|---|---|---|
| **WHAT** needs alignment | The six layers | "L2 alignment is broken" |
| **HOW** to establish alignment | The three cognitive operations (S, I, C) | "Understanding establishes L0-L2" |
| **METHOD** of each operation | Specific practiced methodologies | "Sensemaking uses anchors, perspectives, ambiguity collapse" |

The WHAT is universal — the six layers apply to any intent→outcome process. The HOW is the structural loop. The METHOD is where domain-specific knowledge and practiced skill reside.

### Implications

**Self-improvement becomes directed.** Alignment failures reveal which cognitive operation needs improvement. "L2 failed" → the understanding operation's scope methodology needs work. Not "something went wrong" — "scope checking at L2 needs improvement in the understanding methodology."

**Trust becomes granular.** Instead of trusting or distrusting the whole process, trust can be established per-layer. "The process reliably establishes L0 alignment but struggles with L2" → automate L0 verification, keep L2 manual.

**Verification splits into two phases.** Before execution: lightweight verification of L0-L3 (is context loaded? is the task clear? is scope right? is the approach chosen?). During and after execution: the cognitive operations establish L4-L6 deeply. Verification is fast and cheap. Establishment is thorough and substantive.

**Failures become diagnostic.** Any failure traces to a specific layer → specific cognitive operation → specific methodology component → specific improvement target. The chain from failure to fix is a lookup, not an investigation.

---

## The 24-Check Matrix

The six layers × four pillars produce 24 specific alignment checks. These can be instantiated for any system or process to reveal which checks are satisfied and which are gaps.

```
              Explicit    Visible    Measurable    Comparable
L0 Workspace    [ ]         [ ]         [ ]           [ ]
L1 Task         [ ]         [ ]         [ ]           [ ]
L2 Scope        [ ]         [ ]         [ ]           [ ]
L3 Approach     [ ]         [ ]         [ ]           [ ]
L4 Actions      [ ]         [ ]         [ ]           [ ]
L5 Coherence    [ ]         [ ]         [ ]           [ ]
L6 Outcome      [ ]         [ ]         [ ]           [ ]
```

The matrix is a MAP, not a score. Its value is in revealing which columns are empty (systemic pillar gaps) and which rows are incomplete (specific layer weaknesses). Empty cells are improvement targets. Filled cells are alignment guarantees.

Typical progression: Explicitness is established first (make things stated). Visibility second (make the stated things accessible). Measurement third (make the accessible things verifiable). Comparison last (compare across instances). This mirrors how alignment matures in any system.

---

## Alignment Artifacts

Each layer naturally produces an artifact — evidence that alignment at that layer has been established:

| Layer | Artifact | What it captures |
|---|---|---|
| L0: Workspace | Context summary / briefing | The environment and its current state |
| L1: Task (intent) | Task description / restated question | What the task is and why it matters |
| L2: Task (scope) | Scope check / in-out-adjacent list | What's covered and what's excluded |
| L3: Action-Space | Approach selection / methodology choice | How we'll tackle it |
| L4: Action-Set | Step-by-step plan / execution outputs | What exactly we'll do / did |
| L5: Coherence | Compatibility review / evaluation output | Whether results fit with what exists |
| L6: Outcome | Verification against intent | Whether it actually worked |

These artifacts are not bureaucratic paperwork. They are proof of alignment — a checkpoint at each layer that both sides can point to and confirm agreement before proceeding.

---

## The Feedback Loop

The four pillars combined with iteration form a feedback control loop:

1. Make the desired state **explicit** (setpoint)
2. Make the current state **visible** (sensor)
3. **Measure** the difference (signal)
4. **Compare** current vs. desired (error detection)
5. Act on the difference, then **iterate** (correction)

This is the universal structure of every aligned system — from a thermostat to a CI/CD pipeline to a cognitive process. The six layers define WHERE you apply this loop. The four pillars define WHAT each application of the loop needs. The cognitive operations (understand, generate, evaluate) define HOW you run the loop at each layer.

Things that can't be aligned are things where one of the pillars breaks down:
- Can't make it explicit → can't align (tacit knowledge, intuition)
- Can't make it visible → can't align (hidden state)
- Can't measure it → can't align (subjective quality)
- Can't compare it → can't align (no success criteria)

The pillars don't just describe what alignment needs — they describe the boundary conditions of where alignment is possible. If you want to align something that currently can't be, the pillars tell you exactly which requirement is failing and where to focus.
