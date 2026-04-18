# Branch: Next Step Taxonomy

## L1: Original Request
When the SIC loop finishes an iteration and needs to determine "what next?" — what are ALL the possible types of next steps? Not just "narrow and iterate" (which is all MVL currently does). The full space: unblock, re-evaluate under new conditions, go deeper on one branch, broaden another, refine what's built, create tests, revisit past decisions, etc. Define the complete taxonomy of next-step types, and for each type, identify what supporting mechanisms it needs (e.g., "re-evaluate past finding" needs a mechanism to FIND that past information).

## L1: Rephrased Question
What is the complete taxonomy of next-step types that a multi-headed SIC loop needs to support — and what does each type require in terms of information access, state management, and supporting mechanisms?

## L1: Goal
A comprehensive list of next-step types with: (1) what each type IS, (2) when it's the right choice, (3) what information/mechanism it needs to execute, and (4) how it relates to multi-headed async loops where multiple next-steps run in parallel. This taxonomy defines the VOCABULARY of the wayfinding/focus system — before designing the system itself.

## L2: Current Scope
The taxonomy of next-step types and their requirements.

## L2: Strategic Scope
This defines what the multi-headed loop's "steering" must be capable of. The wayfinding replacement isn't a single "what's next?" — it's a multi-output "here are the N things that should happen next, in parallel or in sequence, each of a specific type." The taxonomy is the prerequisite for designing that steering system.

## L2: Scope Check
Question covers goal: YES — asks for the full taxonomy, per-type requirements, and connection to multi-headed loops.

## L3: Approach
Default — this is a foundational exploration question.

## L5: Prior Coherence
- MVL currently has ONE next-step type: "narrow the focus and re-run S→I→C." This is insufficient for multi-headed loops.
- Wayfinding had SIX moves (BROADEN, NARROW, SHIFT, DIAGNOSE, TERMINATE, RECONSIDER) — a richer vocabulary but still insufficient (no "go deeper on branch A while broadening branch B").
- The user identified several types: unblock, re-evaluate under new conditions, deepen branch, broaden branch, refine, test. These are seeds for the taxonomy.
- The multi-headed loop vision: one iteration produces MULTIPLE next-steps of different types, each becoming an independent SIC branch.
