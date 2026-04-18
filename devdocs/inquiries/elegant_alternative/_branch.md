# Branch: Elegant Alternative to Adapters

## L0: Workspace
Briefing: absent

## L1: Original Request
The adapter system feels overengineered — it adds coupling to every discipline command, introduces a new file type, cascade logic, and injection mechanism. The user suspects there's a more elegant approach hiding underneath that we haven't considered. Step back, look at the whole system from far away, think in higher dimensions.

## L1: Rephrased Question
Is there a fundamentally simpler architecture that solves the same problems adapters were designed to solve (scope awareness, project context, question-type guidance) WITHOUT introducing adapter files, command edits, cascading, or injection — and if so, what is it?

## L1: Goal
Either: (a) a genuinely simpler architecture that replaces adapters entirely, or (b) a clear structural argument for why the adapter complexity is NECESSARY and no simpler alternative exists. The user should feel the answer is elegant, not over-engineered.

## L2: Current Scope
Alternative architectures for the problems adapters solve.

## L2: Strategic Scope
This could reshape the entire build sequence. If adapters are unnecessary, Builds 1-5 change. If a simpler mechanism achieves the same goals, the path to autonomy might be shorter.

## L2: Scope Check
Question covers goal: YES — asks for simpler alternatives or structural justification for complexity.

## L3: Approach
Adapter: default (but this inquiry might kill adapters entirely)

## L5: Prior Coherence
The adapter system was built across 3 inquiries (adapter-pattern, adapter-build, universal-vs-configurable). The user's pushback is: it's gotten too complex. The original problem was scope awareness (narrow question → narrow answer). Adapters were ONE solution. We may have fixated on it through the session's momentum. CHECK: is there a simpler solution we missed because we were building on the adapter concept instead of questioning it?

Critical context the disciplines already have:
- S: "Read the input and consume it. Use codebase context where relevant."
- C: "Extract evaluation dimensions from the sensemaking output" (Phase 0)
- `_branch.md` already carries: question, goal, scope check, and (designed) alignment labels
- The discipline specs already have: failure modes, assembly check, process structure
