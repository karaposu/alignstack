# Branch: Wayfinding Fundamental Fix

## Question
What is fundamentally broken about wayfinding that causes it to produce surface-level, insignificant recommendations instead of identifying the most impactful paths forward? The system needs wayfinding to: spot all significant paths, understand what blocks what, and find the optimum way forward toward a goal. Currently it fixates on TODO items, can't assess significance, and misses the actual highest-impact action.

Known symptoms:
- TODO FIXATION: keeps recommending stale plan items without assessing significance
- WRONG ANSWER TO OWN QUESTION: the core question asks "what changes the landscape MOST?" but it answered with low-impact items
- MISSING SIGNIFICANCE: treats all undone items equally — a 5-min CLAUDE.md edit and a landscape-changing first real test look the same
- FAKE GATES: treats planned-before-X as must-be-done-before-X
- Previously identified: REACHABILITY gap (fixed by adding the component) and DEPENDENCY BLINDNESS (partially fixed)

The self-extending cognitive loop cannot work without a wayfinding that correctly identifies the most significant path forward. This is a blocking issue for the system's core goal.

## Parent
Root

## Depends on
None

## Provides to
The entire system — wayfinding steers everything.

## Tags
wayfinding, significance, regression, steering, self-improvement, blocking

## Verification
- [ ] Root cause identified (structural, not just symptom-level)
- [ ] Root cause explains ALL known symptoms (TODO fixation, wrong answer, missing significance, fake gates)
- [ ] At least one fix proposal that addresses the root cause
- [ ] Fix survives adversarial critique
- [ ] Fix is implementable in the wayfinding spec and command
