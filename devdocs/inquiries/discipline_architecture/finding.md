---
status: superseded
superseded_by: extended_mvl_architecture
superseded_reason: Counter-arguments on parity (E, D should be always-run like I), intra-I recursion (wrongly killed here), orchestration framing (IS the MVL evolving, not separate), and analogy (scientific method, not Unix) held up. E and D graduate from Situational to Core. Extended MVL is the Level 0-2 architecture.
---
# Finding: Discipline Architecture (SUPERSEDED)

## Question
What is the right architecture for combining the non-core disciplines (Exploration, Decomposition, Comprehension) with the SIC loop — given that SIC handles DEEPENING on a single question but the system also needs WIDENING (covering more of thinking space) to reach the goal in autonomous_consciousness_goal/finding.md?

Goal: An architectural decision on discipline roles, loop structure, widening vs deepening, orchestration, and relationships between modes.

## Finding

**The architecture is mostly correct. The gap is documentation, not structure.** The three-tier palette (Core: SIC + Boundary: R, N + Situational: E, D, Comprehension) is the right frame. Disciplines CHAIN serially based on input shape; they don't compose within a single cycle. Orchestration is a CAPABILITY (not a discipline) that grows along the graduated autonomy trajectory — human at Level 0-2, system at Level 3+.

All five architectural hypotheses from the branch were evaluated and rejected or refined:

- **H1 (ESIC — extend SIC with Exploration):** Killed. Every problem would pay the exploration cost whether needed. Rigid composition bakes in assumptions.
- **H2 (Dynamic SIIIISEEISC sequencing):** Killed. Wrong granularity. Each discipline has its own internal process; interleaving breaks them. Disciplines chain between cycles, not within.
- **H3 (Orchestrator runs SIC loops only):** Killed. Undersells the unique cognitive operations of E, D, Comprehension — each addresses something SIC cannot do efficiently.
- **H4 (Exploration ≈ Sensemaking):** Killed. They address different cognitive operations. Exploration discovers unknown territory (structural mapping via scan-signal-probe). Sensemaking resolves ambiguity about something already in view. Your felt distinction when using Exploration was real.
- **H5 (Separate widening/deepening loops):** Killed. Oversimplifies — Decomposition is neither widening nor deepening (it RESTRUCTURES); Comprehension is both. Widening vs deepening is a PROPERTY of disciplines, not an architectural partition.

### The Level 0-2 Architecture (buildable now)

**Three-tier palette:**

| Tier | Disciplines | Primary function |
|---|---|---|
| Core cycle | Sensemaking, Innovation, Critique | Understand → Generate → Evaluate on a single question |
| Boundary | Reflection, Navigation | Between cycles: learn from past (R), map forward (N) |
| Situational | Exploration, Decomposition, Comprehension | Problem-shape-specific cognitive operations |

**Entry conditions for situational disciplines:**

- **Exploration** — unknown territory. "What exists here?" Use when you don't yet have enough to define a question.
- **Decomposition** — complex whole. "How should this be partitioned?" Use when one SIC can't carry the problem.
- **Comprehension** — observable but opaque artifact. "What's the internal model?" Use when you can see the thing but don't understand it.

**Chaining (problem-shape-driven):**

```
Unknown territory → Exploration → SIC on discovered question
Complex problem   → Decomposition → SIC per piece → Merge
Opaque artifact   → Comprehension → SIC if further decisions needed
Clear question    → SIC directly
Completed cycle   → R + N → Select next direction
```

**Bidirectional navigation between folders:**
- `CONTINUES FROM` (child → parent) — already exists in `_state.md`
- `SPAWNED` list in parent's `_state.md` — new, lightweight. When Exploration produces a map that spawns three SIC inquiries, the parent Exploration folder lists those three children. Parent↔child navigation becomes bidirectional.

**Living shape taxonomy:**
The five known shapes (unknown territory, complex whole, opaque artifact, clear question, completed cycle) are a living starting point. New shapes get added as encountered. The taxonomy evolves with use.

**Orchestration at Level 0-2:**
The human is the orchestrator. They read the problem, detect its shape, and pick the discipline. At this level, the architecture needs three light tracking mechanisms to accumulate learning signals for future autonomous orchestration:

1. **Selection reasoning** — when the human deliberately chooses a non-trivial discipline (anything other than default SIC, or when multiple options exist), capture WHY. "I chose Exploration because the codebase is new." Trivial selections (SIC as the default flow) don't need justification — no overhead there.

2. **Usage telemetry** — simple invocation counter per discipline. Surfaces patterns like "Exploration hasn't been used in 50 runs" — triggers investigation of whether the discipline is needed, whether orchestration is bad, or whether the use case isn't being encountered.

3. **Mistake-based shape classification** — when a discipline is chosen and its telemetry signals thinness (low SV delta, low anchor diversity, tangled output), that's a RETROACTIVE shape signal. "SIC was thin → the input was actually unknown territory → should have used Exploration first." Reflection already observes these signals; aggregating them across runs produces the orchestration learning data. This is the Baldwin cycle applied to orchestration itself.

### Unix-for-Thinking Framing (documentation only)

For describing the architecture to newcomers:
- **Tools** = disciplines (each does one cognitive operation well)
- **Pipes** = chaining (output feeds input between disciplines)
- **Shell** = orchestrator (human at Level 0-2, system at Level 3+)

This is pedagogy, not specification. Discipline outputs are unstructured markdown, not Unix pipes. But the organizing principle — composable tools coordinated by an orchestrator — fits exactly.

### Frontier Components (Level 3+, not built)

The architecture is SHAPED to support these without building them now:

- **Input-shape classifier** — automatic shape detection. Emerges from accumulated mistake-based classifications.
- **Selection model** — "given this shape, use this discipline." Trained on accumulated selection reasonings.
- **Outcome tracker** — did the selection work? Feeds Baldwin on orchestration.
- **Parallel discipline application** — multiple threads running different disciplines on the same input, with a reconciliation layer. Matches your "parallel MVL loops" vision from the autonomous_consciousness_goal end-goal. Reconciliation is genuinely open; left for Level 3+ design.

### Palette Evolution (Baldwin on disciplines themselves)

The palette is not static. Over many Baldwin cycles:
- Disciplines may split (Exploration could fork into artifact-mode and possibility-mode as distinct disciplines if they evolve in different directions)
- Disciplines may merge if operations converge
- New disciplines may emerge when the system detects a cognitive operation it needs but doesn't have (Stage 5 self-extension from the end-goal)
- Count is dynamic, not fixed at 8

The evaluation mechanism is standard Baldwin: encode the change, run, check telemetry. If metrics improve, accept. If they degrade, revert.

### Out of Current Scope

- **CREATION discipline** — building artifacts (code, physical things, executed plans) is EXECUTION, not thinking. The current thinking-discipline scope stays thinking. But the end-goal's "extremely hard problem over 1 year" requires action eventually. Creation is flagged as a necessary future expansion of scope, not a thinking discipline.
- **Multi-step situational chain patterns** (E → D → SIC, D → Comprehension → SIC, etc.) — let these patterns EMERGE from actual use before codifying them. Prescribing chain templates now is premature abstraction.

## Reasoning

**The architecture is mostly right because each discipline addresses a genuinely different cognitive operation:**

- **Exploration** has unique mechanisms (scan-signal-probe, frontier tracking, resolution management) that don't reduce to SIC's understand-generate-evaluate pattern. Sensemaking resolves ambiguity ABOUT something already in view; Exploration discovers what exists in territory you can't yet see. Different operations.
- **Decomposition** operates on coupling topology — perceiving where things are tightly vs loosely connected, cutting at low-coupling boundaries. No SIC analog. It's the SCALE OPERATOR for converting overwhelming problems into tractable pieces.
- **Comprehension** builds predictive models of opaque artifacts through construction + verification (perturbation testing + adversarial self-challenge). Its critical feature — catching confident-but-wrong models via adversarial self-challenge — is not a SIC operation. Sensemaking resolves ambiguity; Comprehension models clarity-but-opacity. Different cognitive targets.

These aren't SIC specializations. They're distinct operations. SIC is the core cognitive CYCLE for convergence on a defined question, not a universal primitive. "SIC is the only primitive" was always shorthand — useful during the early system but accurate refinement is "SIC is the core cycle."

**H1 (ESIC) killed because rigid composition imposes exploration on every problem:** A well-defined question with clear anchors doesn't need exploration first. Hardcoding E into every cycle adds unnecessary steps. The composition-vs-chaining principle: disciplines CHAIN serially based on problem shape; they don't COMPOSE into rigid multi-discipline loops.

**H2 (dynamic intra-cycle sequencing like SIIIISEEISC) killed because it breaks internal discipline processes:** Each discipline has its own internal structure — sensemaking progresses from SV1 to SV6 with accommodation triggers; innovation applies mechanisms with coverage requirements; critique runs adversarial testing with dimension construction. Interrupting one of these mid-way with another discipline's step breaks both. The right granularity is BETWEEN cycles, not WITHIN them.

**H3 (orchestrator runs SIC loops only) killed because it undersells the unique operations:** Running a SIC loop on "what exists in this unknown codebase?" produces worse results than running a proper Exploration pass. Exploration has signal detection, resolution management, frontier tracking — operations SIC doesn't perform. Reducing E to "just another SIC question" loses what makes E valuable.

**H4 (Exploration ≈ Sensemaking) killed because they address different cognitive operations:** The user's felt distinction when using Exploration was real, not an artifact. Exploration is upstream of sensemaking — you explore first to know what exists, then sensemake on what you found. Exploration discovers WHAT and WHERE. Sensemaking discovers WHY and HOW.

**H5 (separate widening/deepening loops) killed because the dichotomy is too clean:** Decomposition is neither widening nor deepening — it RESTRUCTURES a complex whole into tractable pieces. Comprehension is both — it widens (exploring the design space via perturbation) and deepens (building a predictive model). Forcing disciplines into two buckets distorts their actual function. The better frame: a single palette with situational entry conditions.

**The orchestrator question resolved through the autonomy trajectory:** The user asked whether a "second thread that oversees the system" is needed. Critique said: yes, conceptually — but currently, the HUMAN is that thread. The architecture doesn't need a new orchestrator COMPONENT at Level 0-2. What it needs is the LEARNING MECHANISMS that will eventually produce autonomous orchestration — selection reasoning, usage telemetry, mistake-based classification. These mechanisms are light, buildable now, and accumulate data that becomes the training signal for Level 3+ automated orchestration.

**Chain relationships refined from formal types to a lightweight list:** Innovation proposed adding CHAINS INTO and CHAINED FROM as formal `_state.md` relationship types. Critique pushed back: we already have CONTINUES FROM (child → parent). The missing piece is parent → children for bidirectional navigation. Solution: a simple SPAWNED list in the parent's `_state.md`, not a new formal relationship type. Avoids proliferation while preserving the bidirectional navigation value.

**Selection reasoning refined from mandatory to conditional:** Requiring reasoning on every discipline invocation creates overhead for trivial selections (SIC as the default flow). Critique refined: capture reasoning ONLY for non-trivial selections — when the human chose a non-default discipline (E, D, Comprehension), or when multiple options existed. This keeps the data quality high and the overhead low.

**Unix framing refined from structural commitment to documentation:** The "Unix for thinking" metaphor is pedagogically useful but has limits. Unix tools have structured stdin/stdout; discipline outputs are unstructured markdown. The framing is for COMMUNICATING the architecture to newcomers, not for specifying piping semantics. Keep the metaphor for docs; don't mistake it for the spec.

**Parallel application and selection layer confirmed as frontier:** These are Level 3+ components that require design we can't do today (reconciliation of parallel outputs; input-shape classifier). Their value is in being NAMED in the architecture so current design doesn't accidentally block them. Building them now would be premature.

**CREATION discipline confirmed as out of current scope:** The system's scope is THINKING. Creation is EXECUTION. The end-goal's "execute year-long plans" requires action capabilities that aren't thinking disciplines. This is a scope expansion flag, not a current architecture addition.

## Open Questions
- **Mistake-based classification aggregation mechanism:** How exactly do we aggregate "thin output" signals across many runs to extract shape patterns? Reflection catches per-run signals; we need a cross-run aggregator. This is a concrete buildable next step at Level 2-3.
- **The SPAWNED list format:** Where in `_state.md` does it live? As its own section? In History? As a new relationship subsection? Design detail for when first multi-inquiry chain is formalized.
- **Selection reasoning format:** What's the right structure for capturing "I chose X because Y"? A one-line entry in `_state.md`? A dedicated field? Design detail for first implementation.
- **Shape taxonomy growth:** As new shapes are encountered, where do they get recorded? A global shapes.md? A section in a discipline spec? Needs a home.
- **Parallel discipline reconciliation (frontier):** How do outputs from an Exploration and a Decomposition on the same input get combined into coherent next-step guidance? Genuinely open design question, deferred to Level 3+ work.
- **Palette evolution criteria (frontier):** When the system proposes splitting or merging a discipline, what's the evaluation criterion beyond telemetry improvement? Same as general Baldwin, but specifics for palette changes may need refinement.
- **Integration with `commands/MVL.md`:** The current MVL spec handles SIC composition. Does it need updating to explicitly reference the broader palette and chaining rules? Minor documentation update worth considering.
