# Branch: Adapter Build Implementation

## L0: Workspace
Briefing: absent (not yet created for this project)

## L1: Original Request
Build adapter templates + MVL reads them — how should this be done? How will MVL read them? How will templates be injected into discipline commands?

## L1: Rephrased Question
What is the concrete implementation design for adapter injection — how does `_adapter.md` content reach the S, I, and C discipline commands during a SIC run, and what are the adapter templates?

## L1: Goal
The user should walk away with: (1) the injection mechanism fully specified, (2) adapter templates written, (3) MVL and discipline command edits identified, ready to implement.

## L2: Current Scope
How adapter content gets from the file into the discipline command prompts.

## L2: Strategic Scope
The adapter mechanism is Build 1 of the scalable loop architecture. It must work for human-driven use now AND not block auto-dispatch (Build 3), multi-heading (Build 4), or autonomous loops (Build 5). From the adapter-pattern inquiry: adapter-as-file, three-section format, two-tier storage.

## L2: Scope Check
Question covers goal: PARTIAL — the question asks about injection mechanics and templates, which is the current scope. But the strategic scope (automation compatibility, multi-heading support) should be checked during S to ensure the implementation doesn't create blockers.

## L3: Approach
Adapter: default (this is an implementation design question, standard SIC is appropriate)

## L5: Prior Coherence
Related findings from this session:
- Adapter-pattern inquiry: adapter-as-file with three sections (S/I/C guidance), central templates + per-inquiry copies
- Alignment-SIC identity: L3 = Action-Space alignment, adapters ARE L3 alignment configuration
- Build sequence: adapters → telemetry → auto-dispatch → multi-heading → autonomous loop
- Adapter format: prose S/I guidance + checklist C traps (from adapter-pattern critique)
No conflicts detected.
