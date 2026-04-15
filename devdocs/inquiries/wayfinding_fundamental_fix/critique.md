# Critique: Wayfinding Fix — Which Formulation?

## Signal: TERMINATE — combined solution selected.

### Verdicts

| Candidate | Verdict |
|---|---|
| 1. Challenge first instinct | REFINE — too unstructured alone, needs "name one alternative" |
| 2. Failure mode traps | SURVIVE with caveat — necessary but insufficient alone |
| 3. Goal in layers + conflict detection | SURVIVE — most effective, addresses root cause directly |

### The Solution: All Three Combined as Layered Defense

**Layer 1 (structural — prevent):**
Goal enters present layer. Conflict detection between layers and goal when producing the move.

**Layer 2 (awareness — catch):**
Three named traps: TODO fixation, fake gate, insignificance. Check before producing move.

**Layer 3 (catch-all — verify):**
After producing move: "Name one action you're NOT recommending. Compare impact to chosen move. If higher — switch and explain."

### Combined: prevent → catch → verify

Three levels. Lightweight in each. Robust in combination. Addresses all 4 symptoms + root cause.

### What to implement

**In the wayfinding COMMAND (execution section):**
1. Present layer reads Goal (from input or _branch.md)
2. Three failure mode traps before producing the move
3. Self-challenge after producing the move (name one alternative, compare)
4. Conflict detection: if goal and layers disagree, explain and choose goal-advancing action
5. Reachability gate validation: real prerequisite or plan ordering?

**In the wayfinding SPEC:**
1. "Not planning" → nuanced statement
2. Goal added to present layer table
3. TODO fixation + fake gate + insignificance added as failure modes 8-10

### Telemetry
Dimensions: 5/5, all critical covered. Adversarial: STRONG. Landscape: STABLE. Clean SURVIVE: YES (Candidate 3). Overall: PROCEED.
