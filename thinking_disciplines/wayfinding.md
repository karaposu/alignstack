


# Structural Wayfinding — A Thinking Discipline

A thinking discipline for steering cognitive search processes by maintaining continuous awareness of position, trajectory, and historical validity across the solution space. Wayfinding is not planning or orchestration — it's the adaptive sense that knows where a search is, where it's heading, whether it's improving, and whether any past decisions should be revisited.

Rather than relying on intuition to decide "where to look next," Structural Wayfinding treats search steering as a practiced methodology based on three-layer awareness, a minimal steering grammar, and temporal belief revision.

> **Structural Wayfinding is the process of integrating present landscape state, trend dynamics, and past verdict conditions into continuous awareness that produces steering directives and reconsideration signals — transforming blind iteration into directed, adaptive search.**

---

## What Wayfinding Is

**Wayfinding is the cognitive sense of where a search process stands — its position in the solution space, its trajectory over recent iterations, and the ongoing validity of its past decisions — integrated into awareness that produces steering actions.**

Wayfinding is not:
- Planning (planning sequences steps before execution; wayfinding adjusts direction during execution based on what's been found)
- Orchestration (orchestration manages pipelines, state, and sequencing; wayfinding provides the search intelligence that orchestration consumes)
- Decision rules (decision rules are mechanical — if X then Y; wayfinding is perceptual integration that produces awareness from which actions emerge)
- Navigation (navigation finds a path through static terrain; wayfinding operates on terrain that changes as the search progresses and can revise past route decisions)
- Monitoring (monitoring observes and reports; wayfinding observes, integrates, and acts — it's both sensor and actuator)

Wayfinding is the **second-order awareness** in a thinking system. Sensemaking, innovation, critique, and decomposition are first-order — they operate on problems, ideas, candidates, and structure. Wayfinding operates on the cognitive process itself: are we looking in the right place? Is the search productive? Should we continue, redirect, or reconsider a past decision?

Every discipline is a specialized search. Sensemaking searches for understanding. Innovation searches for novelty. Critique searches for viability. Decomposition searches for structure. Wayfinding is the **general search awareness** that operates across all of them — the ability to know where you are in any search and whether the process itself is well-aimed.

### The Core Question

At every checkpoint, wayfinding asks one question:

> *"Given where we are, where we've been, how fast we're moving, and whether anything we previously decided might no longer hold — what is the one action that would change the landscape most?"*

This question is information-maximizing, not success-maximizing. In early iterations, discovering dead zones is as valuable as finding survivors. In late iterations, refining the best survivor matters more than exploring new territory. The question adapts its emphasis based on the search's state.

---

## Wayfinding's Role

Wayfinding operates **across** the discipline loop, not **in** it. First-order disciplines (sensemaking, innovation, critique, decomposition) operate on content — problems, ideas, candidates, structure. Wayfinding operates on the process — is the loop looking in the right place, making progress, and honoring or revising its own history?

```
                    ┌──────────────────────────────────────────┐
                    │            META-SEARCH                   │
                    │  Reads: accumulator (all three layers)   │
                    │  Produces: steering directives            │
                    │  Reconsiders: past verdicts               │
                    └──────┬──────────────┬──────────┬─────────┘
                           │              │          │
                    ┌──────▼──────────────▼──────────▼─────────┐
                    │        [discipline pipeline]              │
                    └──────┬───────────────────────────┬───────┘
                           │                           │
                           └────── loop ───────────────┘
```

Wayfinding produces two types of output:

1. **Steering directives** — where the next iteration should focus (which dimension, how broad/narrow, how deep)
2. **Reconsideration signals** — whether past verdicts should be re-evaluated given new information

Critique renders verdicts on ideas. Wayfinding renders verdicts on the search process itself.

---

## Key Components

### The Three-Layer Awareness Model

Wayfinding integrates awareness across three temporal layers. Each layer is both sensor and actuator — it detects something and produces its natural response.

```
┌─────────────────────────────────────────────────────────────┐
│  MEMORY LAYER                                               │
│  Senses: past verdicts, kill conditions, near-misses        │
│  Drives: RECONSIDER                                         │
│  Temporal scope: full search history                        │
│  Features: confidence decay, dependency tracking            │
├─────────────────────────────────────────────────────────────┤
│  TREND LAYER                                                │
│  Senses: velocity, acceleration, goal distance              │
│  Drives: DIAGNOSE, TERMINATE                                │
│  Temporal scope: recent trajectory (last 2-5 iterations)    │
├─────────────────────────────────────────────────────────────┤
│  PRESENT LAYER                                              │
│  Senses: position, heading, reachability                    │
│  Drives: BROADEN, NARROW, SHIFT                             │
│  Temporal scope: current iteration state                    │
└─────────────────────────────────────────────────────────────┘
```

#### Present Layer — "Where are we now?"

| Component | What it senses | How it reads the accumulator |
|---|---|---|
| **Position** | Where on the fitness landscape are the current candidates? Which regions are explored, which are unexplored? | Coverage map — density of evaluated candidates per region |
| **Heading** | Which dimension is the search currently focused on? Is the focus broad (many dimensions) or narrow (one dimension)? | Current iteration's dimension parameters vs previous iterations |
| **Reachability** | What regions are accessible from the current position? What regions are blocked behind gates (prerequisites that must be met before the region becomes reachable)? | Dependency analysis — which regions require outputs, decisions, or conditions that don't yet exist |

Reachability senses the **topology** of the landscape — not just where you are, but what you can reach from here. Some regions of the solution space are gated: they become accessible only when a prerequisite is met. A gate has three parts:

- **Blocked region** — what becomes reachable when this gate opens
- **Condition** — what must be true for the gate to open (an output that must exist, a decision that must be made, a resource that must be available)
- **Current state** — open (condition met, region reachable) or closed (condition unmet, region blocked)

Reachability is to the action landscape what frontier tracking is to the knowledge landscape in Exploration. Exploration tracks the boundary between known and unknown. Wayfinding's reachability tracks the boundary between reachable and gated.

Without reachability, wayfinding can steer within the currently accessible landscape but cannot see that more productive regions exist behind gates. This leads to optimizing within a constrained space when the highest-impact action would be to unlock a gate — opening an entirely new region.

The present layer answers: given the current snapshot of the landscape — position, heading, and what's reachable vs. gated — what spatial adjustment is needed?

#### Trend Layer — "Where are we heading?"

| Component | What it senses | How it reads the accumulator |
|---|---|---|
| **Velocity** | Is the search getting closer to viable regions or drifting further? Is each iteration producing more or less new information than the previous one? | Compare coverage deltas between recent iterations — growing = positive velocity, shrinking = negative |
| **Acceleration** | Is velocity itself changing? Is the search speeding up (converging), slowing down (stalling), or oscillating? | Compare velocity across 3+ iterations — stable, increasing, decreasing, or oscillating |
| **Goal distance** | How far is the search from convergence criteria? How many criteria are met vs unmet? | Convergence checklist — at least one clean SURVIVE, landscape stability, coverage sufficiency |

The trend layer answers: given recent trajectory, should we continue on the current heading or make a strategic change?

#### Memory Layer — "Should we reconsider anything?"

| Component | What it stores | How it ages |
|---|---|---|
| **Kill conditions** | Falsifiable predicates that caused each kill — the specific constraint that made the idea dead | Confidence decays over iterations. Critical-dimension kills (correctness, coherence) decay slower. Minor-dimension kills (elegance) decay faster. |
| **Survival conditions** | Why each survivor survived — which dimensions it passed and with what strength | Updated when source sensemaking output changes. If the problem understanding shifts, survival conditions may be invalidated. |
| **Near-miss record** | Ideas that almost flipped — near the boundary between SURVIVE and KILL, or between KILL and REFINE | Highest-priority reconsideration targets. A small change in conditions could flip these. |
| **Dependency chains** | Which sensemaking/innovation outputs each verdict depends on | When a source output changes, all downstream verdicts are flagged for reconsideration. |

The memory layer answers: given new information, should any past verdict be reconsidered?

---

### The Six Moves

Wayfinding produces six steering moves, each driven by a specific awareness layer.

#### Present Layer Moves

**BROADEN** — explore new territory

| Trigger | All candidates cluster in the same region of the landscape. The search is stuck in a local area. OR: reachable space is exhausted but gated regions exist that would open productive territory. |
|---|---|
| **Directive** | Tell innovation to use different mechanisms, try new seeds, explore different dimensions. Tell sensemaking to check new perspectives. **If a gate blocks the most promising region:** identify the gate condition and direct the next action toward meeting it — the prerequisite must be addressed before the region becomes explorable. |
| **What it prevents** | Local optima — finding the best idea in one region while missing a better region entirely. Gate blindness — optimizing within reachable space when unlocking a gate would open a more productive region. |

**NARROW** — refine what's promising

| Trigger | One or more strong survivors exist but have weaknesses on specific dimensions. The refinement region is reachable (not gated). |
|---|---|
| **Directive** | Tell innovation to focus on strengthening the survivor's weak dimensions. Tell sensemaking to probe the specific constraints the survivor struggles with. |
| **What it prevents** | Premature breadth — abandoning a promising candidate to explore when refinement would be more productive. |

**SHIFT** — change dimension focus

| Trigger | The current dimension focus isn't producing progress. Coverage map shows large unexplored regions on a different dimension. OR: reachability analysis shows a gated region on a different dimension that would be more productive if unlocked. |
|---|---|
| **Directive** | Tell the next iteration to focus on a different evaluation dimension entirely. **If shifting toward a gated region:** include the gate condition in the directive — what must be done to unlock the region before the dimension can be explored. |
| **What it prevents** | Dimension lock — obsessing over one aspect while ignoring others. |

#### Trend Layer Moves

**DIAGNOSE** — the search process is broken

| Trigger | Refinements oscillate (fix X breaks Y). Velocity is negative or oscillating. The search isn't just slow — it's going in circles. |
|---|---|
| **Directive** | Route back to sensemaking. The problem understanding is incomplete — two dimensions are in tension because the problem hasn't been fully clarified. Innovation can't fix this; only deeper understanding can. |
| **What it prevents** | Infinite oscillation — trying to satisfy contradictory requirements that are actually caused by incomplete understanding. |

**TERMINATE** — the search has converged

| Trigger | All convergence criteria are met: at least one clean SURVIVE, landscape stable for 2+ iterations, no promising unexplored regions, decreasing new information per iteration. |
|---|---|
| **Directive** | Stop the loop. Output the survivors ranked by fitness landscape position. |
| **What it prevents** | Over-searching — continuing to iterate when the search has already found what it's going to find. |

#### Memory Layer Move

**RECONSIDER** — a past verdict may be wrong

A general temporal operation that subsumes three specific actions:

| Sub-action | What it reconsiders | Direction |
|---|---|---|
| **RESURRECT** | A killed idea | Dead → maybe viable. New info contradicts the kill condition. |
| **INVALIDATE** | A surviving idea | Alive → maybe dead. New info undermines the survival condition. |
| **REVERT** | A refined idea | Current version → earlier version. New info shows refinement degraded it. |

All three are instances of one operation: **re-evaluate a past verdict because new information changes the conditions under which it was rendered.**

```
RECONSIDER(
  target:    which past verdict to re-evaluate,
  direction: RESURRECT | INVALIDATE | REVERT,
  trigger:   what new information contradicts the verdict's conditions,
  threshold: context-dependent relevance bar
)
```

**The threshold self-adjusts based on loop state:**

| Loop state | Threshold | Reasoning |
|---|---|---|
| Early (few iterations, sparse coverage) | Low | Few options — even moderate relevance is worth revisiting |
| Late (many iterations, dense coverage, survivors exist) | High | Viable alternatives exist — only reconsider if evidence directly negates the condition |
| No SURVIVE candidates exist | Minimum | Desperate — any possible unlock is worth investigating |
| Near convergence | Maximum | Don't destabilize a converging search unless evidence is overwhelming |

**How RECONSIDER works with critique:** Wayfinding detects the relevance and flags the verdict for re-evaluation. Critique performs the actual re-assessment — running adversarial testing on the reconsidered candidate under updated conditions. Wayfinding says "look at this again." Critique says "does it survive now?"

---

## Process Model

Wayfinding doesn't have sequential phases like the other disciplines. It operates as a **continuous awareness loop** that runs between iterations of the discipline pipeline, checking at defined intervals.

### When Wayfinding Runs

**Between iterations** (primary checkpoint): After a discipline produces output and the accumulator is updated, wayfinding reads the full state, integrates across all three layers, and produces directives for the next iteration.

### The Integration Cycle

At each checkpoint, wayfinding executes:

**1. Read** — consume the accumulator's current state across all three layers:
   - Present: coverage map, current candidates, landscape positions
   - Trend: velocity, acceleration, goal distance (computed from recent iteration deltas)
   - Memory: kill conditions, survival conditions, near-misses, dependency chains

**2. Integrate** — synthesize the three layers into unified awareness:
   - Where is the search? (present)
   - How is it moving? (trend)
   - Is anything from the past relevant to what's happening now? (memory)

**3. Ask the core question:**
   > "What is the one action that would change the landscape most?"

**4. Produce output** — one of the six moves, with parameters:
   - **Steering directive**: BROADEN / NARROW / SHIFT (with dimension, direction, depth budget)
   - **Process directive**: DIAGNOSE (route to sensemaking with specific focus) / TERMINATE
   - **Reconsideration signal**: RECONSIDER(target, direction) — triggers critique to re-evaluate

**5. Update** — log the wayfinding decision in the accumulator for future reference (wayfinding's own decisions are part of the search history).

---

## Coverage Strategy

Wayfinding's coverage is about ensuring the search process itself is thorough — not that every idea is evaluated (that's critique's coverage) but that the right *regions* of the solution space are explored.

### Per-iteration coverage

**Minimum:** At each checkpoint, read all three awareness layers. Don't produce a directive based on only one layer — a present-layer BROADEN might be wrong if the trend-layer shows the search is already converging.

**Full:** At each checkpoint, read all three layers, cross-reference (does the present-layer signal conflict with the trend-layer signal?), and resolve conflicts before producing a directive.

### Cross-iteration coverage

**Minimum:** The coverage map shows no large unexplored regions adjacent to viable regions.

**Full:** The coverage map shows no unexplored regions that are topologically likely to contain viable candidates. The convergence criteria are met. The memory layer shows no pending RECONSIDER flags.

### When to stop wayfinding itself

Wayfinding stops when TERMINATE is triggered. But wayfinding should also recognize when *it* is adding no value — when the SIC loop is running smoothly, all iterations are productive, and steering is unnecessary. In this case, wayfinding can reduce its checkpoint frequency (skip some iterations) to avoid overhead.

---

## Failure Modes

Wayfinding fails in predictable, structural ways:

### 1. Steering Too Early

Wayfinding redirects the search before the current direction has had time to produce results. Every BROADEN or SHIFT resets the search's momentum. If wayfinding redirects after every iteration, the search never goes deep enough on any direction.

**How to recognize:** High move frequency — a different directive every iteration. No direction is sustained for more than one pass. The feeling is "we keep changing course."

**How to prevent:** Depth budgets. Each directive includes a depth parameter — how many iterations to sustain the current direction before reassessing. Don't redirect until the depth budget is spent, unless a DIAGNOSE or RECONSIDER signal overrides.

### 2. Steering Too Late

Wayfinding doesn't redirect when it should. The search grinds on in an unproductive direction, wasting iterations. The accumulator shows declining velocity, but wayfinding doesn't act.

**How to recognize:** Many iterations with declining velocity and no SHIFT or BROADEN directive. The coverage map shows the same region being repeatedly explored. The feeling is "we've been here before."

**How to prevent:** Velocity trigger — if velocity has been negative for 2+ iterations, force a reassessment regardless of depth budget.

### 3. False RECONSIDER

Wayfinding flags a past verdict for reconsideration, but the new information doesn't actually contradict the kill condition — it's superficially similar but structurally different. Critique re-evaluates and reaches the same verdict. Wasted effort.

**How to recognize:** RECONSIDER flags that critique consistently dismisses. High reconsideration rate with low resurrection rate.

**How to prevent:** Tighten the relevance threshold. Require structural matching, not just surface similarity. If RECONSIDER's false-positive rate exceeds ~30%, the threshold is too low.

### 4. Missed RECONSIDER

Wayfinding doesn't flag a past verdict that should be reconsidered. New information clearly invalidates a kill condition, but the match isn't detected — either because the kill condition wasn't stored as a falsifiable predicate, or because the matching is too narrow.

**How to recognize:** Hard to detect during search (by definition, you don't reconsider what you don't flag). Detected retrospectively when a manual review finds that a killed idea should have been resurrected based on information that was available at the time.

**How to prevent:** Kill conditions must be stored as falsifiable predicates. Dependency tracking must flag verdicts when their source outputs change. Near-miss records should be checked first (they're most likely to flip).

### 5. Layer Conflict Paralysis

The three awareness layers produce conflicting signals. Present layer says BROADEN (too clustered). Trend layer says NARROW (velocity is positive, we're converging). Memory layer says RECONSIDER (a past kill might be relevant). Wayfinding can't resolve the conflict and produces no directive — or produces an incoherent one.

**How to recognize:** Contradictory signals in the same checkpoint. Wayfinding produces a directive that doesn't clearly follow from any layer's reading. The feeling is "the system doesn't know what to do."

**How to prevent:** Layer priority: Memory overrides Trend overrides Present. Rationale: a RECONSIDER signal (past verdict may be wrong) is higher priority than a trend signal (search is converging) because a wrong past verdict could invalidate the convergence. A trend signal (search is converging) is higher priority than a present signal (too clustered) because convergence means the clustering is productive.

### 6. Threshold Miscalibration

The relevance threshold for RECONSIDER is too high (missing genuine unlocks) or too low (flooding critique with false resurrections). The self-adjusting function is miscalibrated for the current problem.

**How to recognize:** Too high: the search terminates with no survivors, and post-mortem reveals that a killed idea would have survived under later conditions. Too low: critique spends most of its time re-evaluating killed ideas that are still dead.

**How to prevent:** Track the reconsideration-to-resurrection ratio. If resurrections are rare (< 10% of reconsiderations), the threshold is too low. If the search stalls with no survivors and many conditioned kills, the threshold might be too high.

### 7. Gate Blindness

Wayfinding steers within the reachable landscape without noticing that more productive regions exist behind gates (prerequisites). The search optimizes locally when the highest-impact action would be unlocking a gate to open new territory. This happens when reachability is not assessed — wayfinding reads position and heading but not the topology of what's accessible vs. blocked.

**How to recognize:** The search produces NARROW or SHIFT directives when the reachable landscape is nearly exhausted. Velocity is declining not because the search is converging, but because all reachable territory has been explored and the remaining territory is gated. Retrospectively: the correct move was to address a prerequisite, not to refine within the current space.

**How to prevent:** Read reachability at every checkpoint. Before producing a move, check: are there gated regions that would be more productive than the current reachable space? If yes, the directive must include the gate condition — "before doing X, unlock Y." Treat gated-but-promising regions with the same attention as unexplored-but-reachable regions.

---

## Summary

| Component | What it is | How many |
|-----------|-----------|----------|
| **Awareness layers** | Present (position, heading, reachability), Trend (velocity, acceleration, goal distance), Memory (kill conditions, survival conditions, near-misses, dependencies) | 3 layers, 7 components |
| **Moves** | BROADEN, NARROW, SHIFT (present), DIAGNOSE, TERMINATE (trend), RECONSIDER (memory) | 6, structured by layer |
| **RECONSIDER sub-actions** | RESURRECT (dead → viable?), INVALIDATE (alive → dead?), REVERT (refined → pre-refinement?) | 3 directions, one general operation |
| **Threshold** | Self-adjusting relevance bar for RECONSIDER — lower early, higher near convergence, minimum when desperate | 1, context-dependent |
| **Process** | Continuous awareness loop — read, integrate, ask, produce, update | 5 steps per checkpoint |
| **Coverage** | Per-iteration (all three layers read) + cross-iteration (coverage map complete, no pending reconsiderations) | 2 levels |
| **Failure modes** | Steering too early, steering too late, false RECONSIDER, missed RECONSIDER, layer conflict paralysis, threshold miscalibration, gate blindness | 7 identified |
| **Core question** | "Given where we are, where we've been, how fast we're moving, and whether anything we previously decided might no longer hold — what is the one action that would change the landscape most?" | 1, asked at every checkpoint |

This thinking discipline is domain-agnostic. It works for steering any iterative search process — software architecture exploration, research hypothesis testing, business strategy evaluation, or any loop that needs to know where it is, where it's heading, and whether to continue or redirect. It does not prescribe WHERE to search or WHICH disciplines to use — it provides the structural awareness for HOW to steer a search adaptively, with memory and belief revision.

