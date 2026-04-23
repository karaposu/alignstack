# Exploration: Where Should Primitive RC Live?

## User Input
Should /reflect be extended to handle Primitive RC (structural validation of discipline outputs) by running after each discipline, rather than keeping Primitive RC as separate loop-runner infrastructure?

User's argument: "i feel like reflect should be responsible of this.. after MVL, we can run reflect and reflect should look what went well what went bad... but reflect can be responsible for both no? the problem is that it is after the loop? but reflect can run after each discipline too, it is flexible no?"

---

**Mode:** Possibility exploration (design options for where structural checking belongs)
**Entry:** Signal-first (user hypothesis: /reflect should own structural checking)

---

## Cycle 1 — Broad Scan of the Design Space

Five candidate regions where Primitive RC could live:

**Region 1: /reflect owns structural checking (user's proposal)**
- /reflect already reads all discipline outputs
- /reflect already examines "step quality" dimension
- Extending to include "structural correctness" seems natural from user's mental model
- BUT: /reflect is a full discipline invocation (LLM reasoning via Skill tool)
- For binary structural checks ("does section X exist?"), this is overkill
- Running /reflect after each discipline = 3-5 extra discipline invocations per pipeline

**Region 2: Loop runner checkpoint (previous sensemaking's conclusion)**
- Already fires between disciplines in MVL/MVL+
- Currently displays telemetry metrics
- Could add structural validation alongside telemetry
- No extra LLM call — text scanning, pattern matching
- Cheap, immediate, deterministic

**Region 3: Hybrid — lightweight /reflect mode**
- /reflect gains a "structural check mode" that's deterministic (no LLM reasoning)
- OR: /reflect gains a pre-step (structural) before LLM reasoning (process quality)
- Avoids "expensive" objection but adds complexity to /reflect's spec

**Region 4: New command (/validate or /check)**
- Dedicated structural checking command
- But previous sensemaking concluded "Primitive RC is infrastructure, not a discipline"
- Adding a command makes it discipline-adjacent — contradicts finding

**Region 5: Discipline self-checks**
- Each discipline validates its own output before saving
- Distributes checking logic across all discipline specs
- Problem: discipline that produced output is worst judge of structural completeness

### Signals Detected

1. **TENSION** — User thinks /reflect can handle binary checks. But binary checks don't need LLM reasoning — they need pattern matching.
2. **DENSITY** — The core design tradeoff is concentrated in Region 1 vs Region 2.
3. **ABSENCE** — No one has considered what happens to /reflect's EXISTING purpose if structural checking is added. Does it dilute or enhance?
4. **RELEVANCE** — User's mental model ("reflect checks quality") vs spec's model ("reflect observes process") is the crux of the disagreement.

---

## Cycle 2 — Probe: Can /reflect Actually Run Per-Discipline?

The user's argument: "/reflect can run after each discipline too, it is flexible, no?"

Checking /reflect's 5 examination dimensions against per-discipline execution:

| Dimension | Works per-discipline? | Reason |
|---|---|---|
| Human Interventions | YES | Can see redirections within one step |
| Cross-Step Leaks | NO | Requires seeing multiple steps to detect backward information flow |
| Step Quality | YES | Can assess one step's substance |
| Surprises | YES | Can detect unexpected findings in one step |
| Answer-Goal Alignment | NO | Requires the final answer (from C) to compare against the goal |

**Finding:** 3 of 5 dimensions work per-discipline. 2 of 5 require the full loop to be complete. Running /reflect per-discipline means either:
- A reduced /reflect (only 3 dimensions) — effectively a different tool wearing /reflect's name
- /reflect twice: per-discipline (reduced) AND post-loop (full) — even more invocations

**This weakens the "it's flexible" argument.** /reflect was designed as a holistic loop observer. Making it per-discipline cuts 40% of its capabilities.

---

## Cycle 3 — Probe: Cost of /reflect Per-Discipline

In MVL+ (5 disciplines):
- /reflect per-discipline: 5 extra LLM calls + 1 full /reflect at end = 6 extra invocations
- Each is a full discipline execution (read context, reason, produce structured output)

vs. structural checks in checkpoint:
- 0 extra LLM calls
- Checks are inline pattern matching in the checkpoint display logic
- No Skill tool invocation needed

**The cost difference is significant for auto-chain.** The system aims for minimal human intervention during pipeline execution. Adding 5-6 extra discipline invocations substantially increases execution time and token cost.

**Counter-signal:** The user may not care about cost. They care about conceptual clarity. "One tool for quality checking" is simpler to reason about than "two mechanisms."

---

## Cycle 4 — Jump Scan: What If It's Neither/Nor?

**New possibility discovered (Region 6):** What if checkpoint runs structural checks, and /reflect reads the results?

Design:
1. Checkpoint runs structural checks (cheap, inline, deterministic) per-discipline
2. Results are included in the checkpoint display
3. When /reflect runs post-loop, it reads structural check results as ADDITIONAL input
4. /reflect reasons about PATTERNS in structural violations ("S has been missing ambiguity collapse in 3 of the last 5 runs — this suggests the sensemaking spec needs updating")

**This gives /reflect structural awareness without making /reflect DO the structural checking.** Structural checks are infrastructure (fast, deterministic, inline). /reflect is a discipline (reasoning, patterns, learning). They inform each other.

The learning loop closes:
```
Structural violations detected at T0 (per-discipline checkpoint)
    ↓
/reflect reasons about patterns at T_end (post-loop)
    ↓
Patterns inform spec improvements
    ↓
Better specs → fewer structural violations
```

---

## Convergence Assessment

- **Frontier stability:** Major regions mapped (6 options). No new structural categories emerging.
- **Declining discovery rate:** Jump scan produced one interesting synthesis (Region 6) but no further regions beyond it.
- **Bounded gaps:** Remaining unknowns are between explored regions, not beyond them.

**Convergence: reached.**

---

## Structural Map

### Territory Overview

| Region | Resolution | Confidence |
|---|---|---|
| 1. /reflect owns structural checking | Probed | Confirmed — viable but costly, partially breaks /reflect's design (loses 2/5 dimensions per-discipline) |
| 2. Loop runner checkpoint | Probed | Confirmed — viable, cheap, matches Primitive RC requirements exactly |
| 3. Hybrid /reflect mode | Scanned | Scanned — viable but introduces modal complexity into /reflect's spec |
| 4. New /validate command | Scanned | Confirmed — contradicts "Primitive RC is infrastructure" finding |
| 5. Discipline self-checks | Scanned | Scanned — distributes logic poorly, violates separation of concerns |
| 6. Checkpoint checks + /reflect reads results | Probed | Confirmed — synthesizes user's intent with operational efficiency |

### Inventory

**What exists:**
- /reflect command spec — designed as post-loop process quality observer with 5 dimensions
- MVL/MVL+ checkpoint — fires between disciplines, currently displays telemetry, no structural checks
- Quality awareness architecture (enes/evolving_quality_assetment_component.md) — defines Primitive RC as immediate, deterministic, binary
- Previous sensemaking (devdocs/sensemaking/primitive_rc_mechanism.md) — concluded Primitive RC is infrastructure, not /reflect

**What doesn't exist:**
- Any per-discipline structural checking mechanism
- Structural requirement definitions per discipline
- Connection between structural checks and /reflect's input

### Signal Log

| Signal | Probed? | Result |
|---|---|---|
| TENSION: LLM reasoning vs binary checking | Probed | These are fundamentally different operations — pattern matching vs reasoning |
| DENSITY: Region 1 vs 2 | Probed | Core tradeoff: conceptual simplicity vs operational efficiency |
| ABSENCE: Impact on /reflect's existing purpose | Probed | Adding structural checking dilutes /reflect's clean "process quality" identity |
| RELEVANCE: User mental model vs spec model | Probed | User's model is right at the conceptual level, wrong at implementation level |
| NEW: Synthesis option (Region 6) | Probed | /reflect can be INFORMED by structural checks without PERFORMING them |

### Confidence Map

- **Confirmed:** /reflect's current design cannot fully run per-discipline (2/5 dimensions require full loop)
- **Confirmed:** Structural checking is binary pattern matching, not LLM reasoning
- **Confirmed:** A synthesis exists where both mechanisms collaborate
- **Scanned:** The exact format of structural check results for /reflect consumption
- **Unknown:** How much /reflect's spec needs to change to consume structural check results
- **Confirmed absent:** No existing per-discipline structural check mechanism in the system

### Gaps and Recommendations

1. What structural requirements should each discipline have? (Needs per-discipline exploration)
2. How would checkpoint structural check results be formatted for /reflect to read?
3. How much does /reflect's spec change to consume structural check results?
