# Branch: Discipline Architecture

## Question
What is the right architecture for combining the existing non-core disciplines (Exploration, Decomposition, Comprehension) with the SIC loop — given that SIC handles DEEPENING on a single question but the system also needs WIDENING (covering more of thinking space) to reach the goal in autonomous_consciousness_goal/finding.md?

## Goal
A clear architectural decision about:
1. Whether Exploration, Decomposition, Comprehension remain as full disciplines or get absorbed into something else
2. Whether SIC gets extended (ESIC? SICD? dynamic sequencing like SIIIISEEISC?) or stays as-is with separate disciplines
3. Whether we need a second loop TYPE (widening loop) distinct from the SIC deepening loop
4. Whether an orchestrator (second thread overseeing the system) is needed to dynamically sequence disciplines based on problem shape
5. What the relationship is between widening and deepening modes — serial, parallel, alternating, problem-dependent

The user should know: which disciplines to keep investing in, what architectural changes (if any) to make, and whether to build an orchestrator or keep the current "SIC is the only primitive" approach.

## Scope Check
Question covers goal: YES — the question asks about discipline roles, loop architecture, widening vs deepening, and orchestration, which together cover the goal's five architectural decisions.

## Context

The user's hypotheses (to evaluate, not pre-commit to):
- **H1:** Add Exploration to SIC → ESIC. Concern: rigid.
- **H2:** Dynamic orchestrator that can sequence SIIIISEEISC based on problem. Concern: complexity.
- **H3:** Orchestrator just runs multiple SIC loops and combines them. Enough?
- **H4:** Exploration doesn't add much over Sensemaking (but the user felt it did when used).
- **H5:** Two loop types: widening (Explore/Search/Decompose) and deepening (SIC).

The autonomous_consciousness_goal/finding.md positions the end goal as cognitive emancipation with Baldwin-effect-driven evolution. The question is: what cognitive OPERATIONS does the system need to cover the full thinking space? SIC covers deepening. Does it also cover widening? Or is widening a separate cognitive mode requiring its own architecture?

The three disciplines:
- **Exploration** — maps unknown territory through scan-signal-probe at managed resolution (widening)
- **Decomposition** — perceives coupling topology, cuts at low-coupling boundaries (scale operator)
- **Comprehension** — builds internal models of opaque artifacts through construction + verification (understanding)

Each has a distinct cognitive operation per its spec. The question is: does SIC subsume them, do they complement SIC, or do they belong in a separate loop?
