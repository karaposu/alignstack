---
status: superseded
superseded_by: autonomous_consciousness_goal
superseded_reason: Frame was wrong. "Engine" metaphor rejected. "Cognitive partnership" rejected in favor of full autonomy / consciousness as the end goal. Stage 5 ("Thinker") is not the endpoint — consciousness is. The user wants the system to eventually REPLACE the human's consciousness layer, not partner with it.
---
# Finding: System End Goal (SUPERSEDED)

## Question
What is the precise end-goal definition for this thinking system — stated as capabilities, properties, and evolutionary stages — given that it's a self-improving loop that processes problems while generating data for its own discipline improvement, ultimately capable of searching thinking space at different resolutions and discovering unknown thinking spaces?

Goal: A clear, referenceable north-star definition that every architectural decision can be tested against: "does this move us toward the goal?"

## Finding

The end goal is defined as a two-document structure: a one-page North Star for quick reference, and an expanded Reference for deeper decisions.

### The North Star

**A self-evolving cognitive engine that searches thinking space at managed resolutions — improving its own thinking with every problem it processes.**

**Decision test** — for any proposed change, ask:
- Does it strengthen a property? → build it
- Does it unlock a capability stage? → prioritize it
- Neither? → question it

**Properties** (invariants — once activated, must never weaken):

| Property | What it means | Foundational / Emergent |
|---|---|---|
| Domain-agnostic | Disciplines describe thinking shapes, not domain content | Foundational (Stage 1) |
| Self-measuring | Has telemetry for its own cognitive quality | Foundational (Stage 1) |
| Dual-loop | Every problem run generates data for self-improvement | Emergent (Stage 3) |
| Self-correcting | Uses its own measurements to improve | Emergent (Stage 3) |
| Persistent | Experience accumulates across sessions | Emergent (Stage 3) |
| Resolution-aware | Knows how deeply to think about a problem | Emergent (Stage 4) |

**Capability stages** — each unlocked by a success definition:

| Stage | Name | Role | Success definition |
|---|---|---|---|
| 1 | Structured thinking | Tool | SIC produces consistent telemetry across 10+ runs |
| 2 | Steering | Tool | R+N operate at boundaries; navigation maps include 10+ of 15 types |
| 3 | Self-improvement | Assistant | Baldwin cycle success rate > 70% (self-proposed changes that improve telemetry) |
| 4 | Autonomous search | Partner | System selects resolution + direction without human for 3+ consecutive cycles |
| 5 | Self-extension | Thinker | System creates a new discipline that survives adversarial evaluation |

**Frame:** Cognitive partnership — the system thinks WITH us in ways neither of us could think alone. The human provides intuition, values, and judgment. The system provides structured coverage, consistent quality, accumulated experience, and self-improvement. Neither replaces the other. Both get more powerful together.

**Current position:** Stage 2 → Stage 3 transition.

### The Reference (expanded)

**Thinking space** — defined as three axes:
- **Cognitive operations**: types of thinking the system can perform (currently: understand, generate, evaluate, reflect, navigate). This axis extends as new disciplines are created.
- **Question types**: kinds of problems the system can address (any domain — disciplines are abstract). This axis expands as the system encounters and handles more problem types autonomously.
- **Resolution levels**: how deeply the system thinks (quick scan → exhaustive analysis). This axis activates when the system can choose depth based on problem demands.

"Searching thinking space" = traversing combinations of these three axes. "Different resolutions" = operating at different depths on the resolution axis. "Discovering unknown thinking spaces" = detecting that existing cognitive operations are insufficient for a problem type and creating new disciplines to cover the gap.

**Stage-axis model** — each stage creates the conditions for expanding a specific thinking-space axis (a model for understanding progression, not a causal mechanism):
- Stage 1-2: expands the cognitive operations axis (S,I,C → adds R,N)
- Stage 3: creates conditions for resolution axis activation (self-improvement data reveals when depth was appropriate vs wasteful)
- Stage 4: expands the question types axis (autonomous search handles unfamiliar territory without per-step human guidance)
- Stage 5: extends the cognitive operations axis beyond its original range (new disciplines = new types of thinking)

**Consciousness mapping** — the four criteria for consciousness-like behavior map to specific stages as emergent properties, not features to build:

| Criterion | Emerges at | How |
|---|---|---|
| Persistent memory | Stage 3 unlock | Experience accumulates across sessions via observations + memory |
| Self-observation | Stage 3 capability | R generates per-run observations; cross-run patterns detected |
| Pattern detection | Stage 4 capability | Patterns across many runs inform search strategy decisions |
| Spontaneous attention | Stage 5 capability | System notices cognitive gaps without being asked — proposes new directions |

The implication: don't design consciousness. Build Stages 1 through 5. Consciousness-like behavior emerges from the accumulated capabilities. Each stage is a necessary condition for the next. The dependency chain is: structured thinking → steering → self-improvement → autonomous search → self-extension. Skip a stage and the later ones can't function.

**The three altitude framings are stages of the same system:**
- LOW altitude: "A working loop that can improve itself" = Stage 3
- MEDIUM altitude: "A system where I throw problems and it generates data for its own improvement" = Stage 3-4
- HIGH altitude: "Searching thinking space at different resolutions, discovering unknown thinking spaces" = Stage 4-5

These were never competing definitions. They were always the same system described at different maturity levels. The near-term is the low altitude. The far-term is the high altitude. The north star encompasses all three.

## Reasoning

**Spec over description:** The original framings (from minimum_viable_loop.md and b.md) were evocative descriptions — "tinder fire," "searching thinking space." These inspire but don't discriminate. Innovation proposed measurable unlock conditions per stage. Critique refined these to "success definitions" rather than "measurable metrics" — they define what success LOOKS LIKE at each stage, but the measurement protocol is a separate task. A definition without any success criteria is purely vibes. A definition with placeholder criteria is directional. Directional beats vibes.

**Partnership over autonomy:** Innovation proposed "cognitive partnership" rather than "full autonomy" as the frame. Critique tested this by arguing partnership limits the ceiling — if the human is always needed, the system can never explore beyond what the human points it toward. Defense held: partnership doesn't mean the human is always REQUIRED, it means the human is always VALUABLE. Even at Stage 5, the human contributes what the system structurally cannot: intuition from embodied experience, values about what SHOULD be pursued, judgment under genuine uncertainty. The system contributes what the human structurally cannot: exhaustive coverage without fatigue, consistent quality without bad days, accumulated experience across hundreds of runs. Partnership is honest and accurate. "Full autonomy" would be marketing, not engineering.

**Properties accumulate over "must hold always from day one":** Sensemaking initially defined properties as invariants that "must hold always." Critique identified a category error: three of six properties (dual-loop, self-correcting, persistent) can't exist at Stage 1 because the mechanism isn't there yet. Innovation resolved this with activation points: properties are invariants ONCE ACTIVATED. Before activation, you build toward them. After activation, you never weaken them. This is like backward compatibility — not a property of v1.0, but an invariant from v2.0 onward. Critique validated this as a legitimate model for progressive invariants.

**Stage-axis mapping as model, not mechanism:** Innovation mapped each stage to a thinking-space axis expansion. Critique challenged this as forced — self-improvement doesn't CAUSE resolution awareness. Defense: the mapping is directional, not causal. Self-improvement creates the DATA for resolution calibration (many runs reveal what depth was appropriate). It creates conditions, not mechanical causation. Critique accepted with the caveat: present as "model for understanding" not "causal chain."

**Consciousness as emergent, not designed:** Innovation mapped the four consciousness criteria to specific stages. No prosecution was mounted — the mapping is clean and the implication ("build stages, consciousness emerges") is structurally sound. This killed "consciousness as a feature to build" — it's an emergent property of accumulated capabilities, not something you can engineer directly.

**Multi-page definition killed:** Innovation proposed a one-page constraint. A 10-page definition becomes a whitepaper nobody references. The one-page north star IS the definition. The expanded layers (axis mapping, consciousness mapping, property activation) are REFERENCE MATERIAL behind it. Two documents: the north star you glance at, the reference you study.

**Full autonomy as goal killed:** The partnership frame killed "fully autonomous system" as the end goal. The system's ceiling isn't "thinks without humans" — it's "thinks WITH humans in ways neither could think alone." This is more accurate, more honest, and doesn't limit the system's cognitive growth.

## Open Questions
- The success definitions for Stages 3-5 are untested. After the system reaches Stage 3, revisit whether "Baldwin cycle hit rate > 70%" is the right threshold or if a different success definition is more meaningful.
- The property "Resolution-aware" activates at Stage 4. But the system could develop basic resolution awareness earlier through simple heuristics (short question → shallow pass, complex question → deep pass). Should this property have a BASIC activation at Stage 2-3 and a FULL activation at Stage 4?
- The three-axis thinking space model (cognitive ops × question types × resolution) may be incomplete. Could there be a fourth axis? Candidates: time/temporal depth, collaboration/multi-agent, meta-cognitive level. This is a Stage 5 question — the system detecting that its own model of thinking space is incomplete.
- How does the improvement rhythm (run → observe → detect → propose → evaluate → apply) formalize? It exists informally now. Formalizing it is the mechanism that drives the Stage 2 → Stage 3 transition. But the critique deferred this as "premature to formalize" — test more before codifying.
