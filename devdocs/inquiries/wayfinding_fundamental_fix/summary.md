# Inquiry Summary: Wayfinding Fundamental Fix

## The Problem

Wayfinding kept producing surface-level, insignificant recommendations — suggesting low-impact housekeeping tasks when the obvious high-impact action was staring at it. Four symptoms observed:

1. **TODO fixation** — recommending stale plan items without assessing significance
2. **Wrong answer to own question** — the core question asks "what changes the landscape MOST?" but it answered with low-impact items
3. **Missing significance** — treating all undone items equally regardless of impact
4. **Fake gates** — treating plan ordering as real prerequisites

## Root Cause

**Wayfinding's definition contradicts its core question.**

The definition scopes wayfinding to STATE AWARENESS — "the cognitive sense of where a search process stands." The core question demands ACTION EVALUATION — "what is the one action that would change the landscape MOST?"

State awareness reads: where are we, how fast are we moving, what did we decide before. Action evaluation requires: what's the goal, what are the options, which option advances the goal most.

The mechanism can't answer its own question because the scope excludes the required capability. The "not planning" identity constraint actively prevented goal-directed reasoning.

**Confirmed by:** Sensemaking (root cause analysis) → Comprehension (7/7 predictions confirmed, 3/3 adversarial cases survived) → Sensemaking synthesis (two independent methods converge).

## The Solution: Three-Layer Defense

The critique selected a combined formulation — three levels of defense, each lightweight, robust in combination.

### Layer 1: Prevent (structural — goal in the layers)

Goal enters the present layer as a primary sensing component. When producing a move, detect whether the layers and the goal point in the same direction. If they conflict, choose the goal-advancing action and explain why.

### Layer 2: Catch (awareness — failure mode traps)

Three named traps checked before producing the move:

- **TODO FIXATION** — Am I recommending this because it's undone, or because it advances the goal?
- **FAKE GATE** — Is this a real prerequisite (X literally can't happen without Y), or just a plan ordering?
- **INSIGNIFICANCE** — Is there a much higher-impact action I'm overlooking?

### Layer 3: Verify (catch-all — self-challenge)

After producing the move: "Name one action you're NOT recommending. Compare its impact toward the goal to your chosen move. If higher — switch and explain why."

### Why all three

- Layer 1 alone: prevents most wrong moves but misses edge cases
- Layer 2 alone: catches known failures but doesn't produce goal alignment
- Layer 3 alone: too unstructured — AI can dismiss the self-challenge perfunctorily without structured enumeration
- Combined: prevent → catch → verify. Full coverage.

## Concrete Changes Needed

### Change 1: Wayfinding COMMAND (`commands/wayfinding.md`)

**In the execution section, between "Read All Three Layers" and "Produce Steering Directive":**

Add new section:

```markdown
### 1.5. Goal-Directed Evaluation

**Read the goal:**
What is the user trying to achieve? Read from the input, the inquiry's _branch.md, 
or the conversation context. If no goal is stated, note this and proceed with 
state-based steering (skip steps below).

**Check for traps:**
Before producing a move, check:
- TODO FIXATION: Am I about to recommend something because it's undone, 
  or because it advances the goal?
- FAKE GATE: Am I treating a plan ordering as a real prerequisite? 
  Would X actually fail without Y?
- INSIGNIFICANCE: Is there an action with much higher impact toward the goal 
  that I'm not considering?

**Detect conflict:**
Do the layers (position, heading, reachability, trend, memory) point in the same 
direction as the goal? If they agree — proceed to produce the move. If they 
conflict — explain the conflict and choose the action that advances the goal more.
```

**In the execution section, after "Produce Steering Directive":**

Add:

```markdown
### 3.5. Self-Challenge

After producing your move:
Name one action you are NOT recommending that could advance the stated goal. 
Compare its impact to your chosen move. If the alternative has higher impact — 
switch to it and explain why you're overriding your initial move.
```

### Change 2: Wayfinding COMMAND — Present Layer reading

**In "Read All Three Layers" → Present Layer, add:**

```markdown
- What is the goal? What is the user trying to achieve? (Read from input, 
  _branch.md, or ask. If no goal stated, note "no goal — state-based steering.")
```

### Change 3: Wayfinding SPEC (`thinking_disciplines/wayfinding.md`)

**Update the "not planning" line in "What Wayfinding Is":**

From: "Planning (planning sequences steps before execution; wayfinding adjusts direction during execution based on what's been found)"

To: "Full project planning (wayfinding does not create detailed project plans or timelines). But wayfinding DOES evaluate possible actions against the stated goal to select the highest-impact direction — this is goal-directed steering, not planning."

### Change 4: Wayfinding SPEC — Present Layer table

**Add Goal row to the present layer component table:**

```markdown
| **Goal** | What is the user trying to achieve? What does success look like? | Stated in the input, inherited from inquiry _branch.md, or asked if unclear |
```

### Change 5: Wayfinding SPEC — Failure Modes

**Add three new failure modes (8, 9, 10) after the existing 7:**

```markdown
### 8. TODO Fixation

Recommending actions because they're undone on a plan, not because they advance the goal. 
The plan becomes the landscape instead of the actual situation.

**How to recognize:** The recommended action is a low-impact item from a previous plan. 
A much higher-impact action exists but wasn't considered because it wasn't "on the list."

**How to prevent:** The goal-directed evaluation step. Before producing a move, ask: 
"Am I recommending this because it's undone, or because it advances the goal?"

### 9. Fake Gates

Treating plan ordering as real prerequisites. "Y was planned before X" becomes 
"X can't happen until Y is done" — even when X could happen independently.

**How to recognize:** The reachability analysis constructs a gate, but removing the 
supposed prerequisite wouldn't actually prevent the blocked action.

**How to prevent:** Gate validation: "Is this a REAL prerequisite (X literally fails 
without Y) or a plan ordering (Y was planned first but X works independently)?"

### 10. Insignificance

Recommending an action that doesn't meaningfully advance the goal when a much 
higher-impact action is available. The recommendation is not wrong — it's just 
not significant enough to be the MOST impactful move.

**How to recognize:** The self-challenge reveals an action with clearly higher impact 
that wasn't initially recommended. The initial move was correct in direction but 
wrong in magnitude — it picked a small step when a big step was available.

**How to prevent:** The self-challenge step after producing the move. "Name one action 
you're NOT recommending. Compare impact. If higher — switch."
```

### Change 6: Wayfinding SPEC — Summary table

**Update the failure modes count:**

From: `| **Failure modes** | ... | 7 identified |`
To: `| **Failure modes** | ... | 10 identified |`

**Update the awareness layers count:**

From: `| **Awareness layers** | Present (position, heading, reachability), ... | 3 layers, 7 components |`
To: `| **Awareness layers** | Present (position, heading, reachability, goal), ... | 3 layers, 8 components |`

---

## Pipeline That Produced This

```
Sensemaking (root cause)     → found definition-mechanism mismatch
Comprehend (test diagnosis)  → confirmed 7/7 predictions, simplified fix from architecture to instruction
Sensemaking (synthesize)     → integrated findings, scoped innovation seed
Innovation (formulations)    → 3 variants: self-challenge, failure traps, goal-in-layers
Critique (select)            → combined all three as layered defense: prevent → catch → verify
```

## Verification Criteria (from _branch.md)

- [x] Root cause identified (structural, not just symptom-level)
- [x] Root cause explains ALL known symptoms (TODO fixation, wrong answer, missing significance, fake gates)
- [x] At least one fix proposal that addresses the root cause
- [x] Fix survives adversarial critique
- [ ] Fix is implementable in the wayfinding spec and command ← READY TO IMPLEMENT
