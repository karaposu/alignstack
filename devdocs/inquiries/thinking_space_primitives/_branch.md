# Branch: Thinking-Space Primitives — Completeness Audit

## Question
Are the four primitives we currently recognize (attention / focus / intuition / context) COMPLETE as a characterization of thinking-space dynamics, or are there additional primitives — visible in how humans actually navigate thinking-space — that our current model is missing or collapsing, such that the /intuit discipline and the three-layer architecture are built on an incomplete foundation?

## Goal
A rigorous re-examination of the thinking-space primitive set, producing:

1. **A completeness verdict** — is the 4-primitive set (attention / focus / intuition / context) a COMPLETE basis, or are there additional primitives that we currently fold into these four, silently discard, or haven't noticed? Rigorous means: testable against phenomena from human problem-solving, not merely plausible as a list.
2. **Candidate additional primitives** — enumerate plausible additions (e.g., working memory, imagination, evaluation, motivation, salience, urgency, mood, temporal projection, mental rehearsal) with evidence for each being either (a) genuinely distinct from the current four, (b) a sub-primitive of an existing one, or (c) not a primitive at all.
3. **Test protocol for primitivity** — criteria for what makes something a PRIMITIVE vs an emergent behavior or a composite of other primitives. Without this test, any new "primitive" proposed could be arbitrary. Inspired by: independence (can you vary it without varying the others?), necessity (is the thinking-space operation degraded without it?), composability (can it combine with the others in definable ways?).
4. **Impact assessment on /intuit and the three-layer architecture** — if new primitives are accepted, how does the /intuit discipline change? Does the three-layer architecture (L1/L3/L2) absorb them, or do they force a new layer or a new module? Is Phase A still coherent, or does it need restructuring?
5. **Honest accounting of what we can and cannot observe** — some primitives may be real but inaccessible to the system's current telemetry. Name them even when unbuildable, so the MVP is honest about its coverage rather than silently dropping what it can't measure.

## Scope Check
Question covers goal: YES — the question names completeness of the primitive set; the goal asks for completeness verdict, candidate additions, primitivity test criteria, impact on /intuit architecture, and honest accounting of observable vs unobservable primitives. All five goal items are within the question's scope.

## Context — the user's concern verbatim

> "i am thinking that it is extremely important for us to understand the primitives, and missing one can hinder whole experiments and we should keep in mind there might be more and significant ones, lets try to think by understanding how humans navigate thinking space and if we can detect even in a fuzzy way there are more primitives"

### Why this concern lands

The current 4 primitives were extracted from sensemaking in `thinking_space_dynamics` based on the user's own phenomenological description of how humans solve problems. The analysis was good but was not explicitly tested for completeness. The user now flags that missing a primitive is not a small oversight — it silently invalidates every experiment downstream. Specifically:

- `/intuit` is specced assuming the 4 primitives are the complete set operating on the representation space. Sub-step design (P4 attention construction, P5 context capture, intuition queries) assumes no sixth process is shaping retrieval.
- Calibration (P10 / P11) assumes hunches are produced by known mechanisms; if an unrecognized primitive is active, calibration signal is mixed with noise from the unmodeled process.
- Three-layer architecture (L1/L3/L2) assumes L3 is the full real-time cognitive layer. If an additional primitive operates at a different temporal horizon or signal type, it might belong in a separate layer.

### Candidate primitives the current model may be missing (starting list, non-exhaustive)

To be probed, not accepted:

- **Working memory** — the buffer that holds items in attention. Possibly distinct from attention-as-spotlight.
- **Imagination / mental simulation** — running counterfactual scenarios. Humans constantly simulate "what if I did X" without committing to it.
- **Evaluation / valuation** — pre-logical sense of worth/importance attached to thoughts. Distinct from intuition-as-similarity; imagination produces a candidate, evaluation ranks it.
- **Motivation / drive** — the energy that keeps the system focused on one problem vs another. Context shapes relevance but doesn't determine effort allocation.
- **Salience / surprise** — the mechanism by which unexpected patterns demand attention. Possibly a sub-primitive of attention, possibly its own process.
- **Temporal projection** — reasoning about "when" (past analogies, future implications). Distinct from intuition-as-geometric-similarity which is timeless.
- **Mental rehearsal / practice** — running a pattern repeatedly to strengthen it. Distinct from attention or focus.
- **Mood / affective state** — emotional background that biases which hunches fire. Hard to operationalize; hard to ignore.
- **Inhibition / suppression** — the mechanism that STOPS pursuing a thought. Opposite of motivation.
- **Curiosity** — pull toward low-confidence exploration. Named in `autonomous_consciousness_goal` as an observable indicator but not as a primitive.
- **Self-monitoring / meta-cognition** — awareness of one's own thinking process. Arguably how humans know when they're stuck.
- **Abstraction generation** — the act of lifting source → abstraction (the forward-transform). Currently treated as a SKILL applied in /intuit, but if humans do it constantly unprompted, it may be a primitive.
- **Committing / closure** — the act of choosing and fixing a decision. Possibly distinct from focus-as-selection.

The goal is not to accept all of these — it is to SUBJECT each to the primitivity test and determine which are genuinely primitive vs composite vs emergent.

### What this inquiry should AVOID

- **Expansion for its own sake:** not every plausible candidate is a primitive. The primitivity test is the gate.
- **Mapping to specific neuroscience substrates:** the goal is a functional/operational characterization, not a neural correlate map.
- **Re-litigating the three-layer architecture:** L1/L3/L2 stands unless new primitives demand restructuring. Start from the current architecture and test whether new primitives fit or don't.
- **Replacing the current 4 primitives without cause:** if they survive the primitivity test, they stay. Additions are additive unless explicit collapse/merge is justified.
- **Phenomenology over mechanism:** philosophical handwaving about consciousness is the trap. Test primitives against characterizable functional roles.

### Related prior context

- `devdocs/inquiries/thinking_space_dynamics/finding.md` — where the 4 primitives were first stabilized. This inquiry may CORRECT or EXTEND that finding.
- `devdocs/inquiries/intuition_as_discipline/finding.md` — `/intuit` is built on the 4 primitives; changes here propagate there.
- `devdocs/inquiries/autonomous_consciousness_goal/finding.md` — names "intrinsic curiosity" as an observable indicator; curiosity may or may not be primitive.
- `enes/thinking_space_dynamics.md` — the stable version; may need update after this inquiry.
- `enes/desc.md` — the autonomous_consciousness_goal curated file; names the levels-of-intuition ladder (level 0 human seeds → level 3 custom Z-space generation) which may depend on which primitives are recognized.

### The user's load-bearing claim

"Missing a primitive can hinder the whole experiment." This is not aesthetic — it is structural. If humans use five (or six, or seven) primitives to navigate thinking-space and we model only four, every /intuit call silently processes through a reduced representation. Calibration data accumulates against the wrong mechanism. The Baldwin cycle self-modifies specs based on signal from an incomplete model. Errors compound over time.

The cost of running this inquiry is small (one SIC loop). The cost of NOT running it is potentially large (an entire architecture built on a load-bearing wrong abstraction). Worth the pass.

### What counts as "fuzzy detection" of a primitive

The user said "detect even in a fuzzy way." That's a useful methodological hint. Fuzzy detection means: we don't need perfect operational definitions. We need:
- A functional role distinguishable from the four we have
- Evidence from human problem-solving that the role is active
- A plausible handle for eventual operationalization (even if not precise yet)

Fuzzy detection is the ADMISSION CRITERION for further investigation. Full operational definition is the sensemaking/decomposition work, not the entry gate.
