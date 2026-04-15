# Comprehension: Testing the Wayfinding Diagnosis

**Aspect:** Both | **Depth:** Predictive (CV4) | **Predictions:** 7/7 confirmed

## Key Finding

The sensemaking diagnosis was correct on the ROOT CAUSE but overcomplicated the FIX.

**Root cause (confirmed):** Wayfinding's definition scopes it to state awareness. Its core question demands action evaluation. The mechanism can't answer its own question. The "not planning" identity constraint actively prevents goal-directed reasoning.

**Fix (simplified from sensemaking's proposal):** Not a layer redesign. 4 lines of instruction in the command.

## The Fix

### Primary: Add to wayfinding command (between "Read Layers" and "Produce Move")

```
### 1.5. Goal-Directed Evaluation

Before producing a move:

1. State the goal — read from input, _branch.md, or ask.
   If no goal stated, proceed with state-based steering.

2. Enumerate 5-7 significant possible next actions —
   include plan items AND at least 2 NOT on any plan.

3. Assess impact — for each action:
   HIGH (directly advances goal) / MEDIUM / LOW / NEGATIVE

4. The move must reflect the highest-impact action.
   If layers suggest X but highest-impact is Y, explain the override.
```

### Secondary: Update "not planning" in spec

From: "Wayfinding is not: Planning"
To: "Wayfinding is not: Full project planning. But it DOES evaluate possible actions against the stated goal to select the highest-impact direction."

### Tertiary: Add Goal to present layer in spec

```
| Goal | What is the user trying to achieve? | Stated in input or _branch.md |
```

## Why the sensemaking overcomplicated it

The sensemaking proposed: new evaluation step as an architectural component, goal + possible actions as formal present layer components, goal velocity as a trend layer addition.

The comprehension found: the layers, moves, and memory system are fine. The AI just needs an INSTRUCTION to evaluate actions against the goal before picking a move. The infrastructure works. The prompt didn't ask for goal-directed reasoning.

## Confidence Map

| Area | Confidence |
|------|-----------|
| Root cause | HIGH (5 predictions + 3 adversarial confirmed) |
| Command instruction fix | HIGH (scenario-tested + edge cases) |
| Spec updates | MEDIUM (logical but untested) |
| Real-world effectiveness | LOW (needs testing) |

## Next Step

Apply the fix, then test wayfinding on a real steering question.
