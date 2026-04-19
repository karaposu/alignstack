---
status: active
---
# Finding: Extended MVL Architecture

## Question
Should the MVL loop be extended beyond pure SIC — with Exploration and Decomposition running as parallel multi-head siblings of Sensemaking in the first phase, with intra-loop chaining of same discipline permitted, and with orchestration reframed as the enhanced MVL itself rather than a separate capability?

Goal: A revised architectural decision addressing the counter-arguments to discipline_architecture/finding.md — parity of E/D with S, multi-head parallel first phase, intra-loop same-discipline chaining, orchestration-as-MVL, and a better analogy than Unix-for-thinking.

## Finding

**The extended MVL is the right architecture at Level 0-2.** All five counter-arguments to the prior finding hold. E and D graduate from Situational to Core. The first phase becomes parallel multi-head (E || D || S). Intra-I recursion is valid (distinct from cross-discipline interleaving). Orchestration IS the enhanced MVL evolving, not a separate capability. The scientific method replaces Unix-for-thinking as the governing analogy. The overarching principle is **instrumental rigidity** — these decisions are not claimed optimal; they are chosen to reach self-evaluation faster, after which the system re-architects from empirical data.

### The Extended MVL Structure (Level 0-2)

**Phase 1 — Multi-head observation (ensemble-inspired):**

```
E → exploration map
D → decomposition tree
S → sensemaking anchors
```

All three always run. Thin outputs are explicit CONFIRMATIONS, not noise. When E produces "territory = question, frontier stable, no unknown signals," that's CONFIRMATION the question is well-scoped. When D produces "no natural boundaries," that's CONFIRMATION of single-scope. These confirmations flow into Innovation as meaningful signals.

**Phase 2 — Reconciliation + Synthesis:**

Innovation first IDENTIFIES and NAMES contradictions across E/D/S (not dissolve them). "E claims territory X. D claims structure Y. They differ on Z. Both proceed as candidates for critique to evaluate." Then I synthesizes across reconciled input and generates candidates.

**Optional intra-I recursion** for hard problems:
- Trigger: critique-kill-rate exceeds 70% (placeholder threshold)
- Stop: max 3 passes OR new-novel candidate rate drops below 20% (placeholder)
- Hard limit of 3 passes is non-negotiable
- Telemetry reported per-pass AND aggregate

Recursion is same-discipline, not interleaving. Pass 1 completes, then pass 2 starts treating pass 1's output as seeds. Cross-discipline interleaving within a cycle (e.g., S interrupted by I mid-SV-progression) is still prohibited.

**Phase 3 — Evaluation:** C evaluates candidates, unchanged from classic SIC.

**Phase 4 — Boundary:** R reflects on the run with **self-improvement observations linked to telemetry anomalies** (mandatory only when telemetry flags something unusual; optional otherwise). N maps next directions.

### Two Commands

- `/mvl` (classic) = S → I → C. Use for simple well-defined problems when speed matters.
- `/mvl-extended` (default for new inquiries) = the full flow above in one invocation.

The classic is technically a minimal subset of extended (just skip E and D). Low maintenance burden; clear default.

### The Governing Analogy

The extended MVL follows the **scientific method's cognitive pattern** — observation and decomposition and hypothesis formation in parallel, then experimentation, then evaluation, then iteration with reflection. This replaces both "Unix for thinking" (which misfits because disciplines aren't mechanical tools) and "cognitive faculties of a mind" (which overclaims philosophically). The scientific method is a proven cognitive pattern for hard problems — the extended MVL is implementing it as a structured pipeline.

This is a COGNITIVE PATTERN claim, not a philosophical claim. We're not saying the system does science. We're saying it follows the same cognitive pattern that science follows.

### Orchestration IS the Enhanced MVL

This is the most important reframe from the prior finding. Orchestration is not a separate capability alongside the MVL. Orchestration IS what the MVL becomes as it matures. The MVL at Level 0-2 has minimal orchestration (human drives everything). The MVL at Level 4+ has substantial orchestration (system picks disciplines, sequences, manages threads). It's the SAME LOOP at different evolutionary points.

This has a concrete build implication: **do not build a separate orchestrator component**. Evolve the MVL. Every enhancement to the loop (adding R+N was one; extending to multi-head is another; supporting recursion is another; eventually true parallel; eventually autonomous discipline selection) IS orchestration capability growing.

### The Revised Palette

| Tier | Disciplines | Status |
|---|---|---|
| **Core (always-run, first phase parallel)** | Exploration, Decomposition, Sensemaking | Multi-head |
| **Core (sequential after multi-head)** | Innovation, Critique | I optionally recurses |
| **Boundary (between cycles)** | Reflection, Navigation | Unchanged |
| **Situational (entry-condition-gated)** | Comprehension | Requires observable opaque artifact |

E and D graduate from Situational to Core. Comprehension stays Situational because its entry condition (specific observable opaque artifact) doesn't apply to most problems.

### Instrumental Rigidity — The Underlying Principle

These decisions are NOT claimed to be the theoretically optimal architecture. They are chosen because they:

1. Are roughly correct (high expected value per decision)
2. Preserve future flexibility (don't block Level 3+ evolution)
3. Generate rich training data (every run produces E, D, S, I, C data — 5× more structured signal than SIC alone)
4. Reach self-evaluation capability faster (richer cycles → faster Baldwin learning)

Once the system reaches self-evaluation, it can re-architect these decisions based on empirical data (after 50+ runs, data-driven palette refinement). The rigidity NOW is instrumental to flexibility LATER. This is the tinder-fire principle — start with something good-enough, let evolution refine.

### Frontier Components (Level 3+, not built)

The architecture is SHAPED to support these without building them now:

- **True parallel E||D||S** with streaming input to I (real parallelism, not sequential-but-order-independent)
- **VOID capability** — the system can decline to run the MVL when a problem is too trivial, too ambiguous, or already answered elsewhere
- **Mistake-based shape classification** — when the system selects disciplines (Level 3+), detecting thin/mismatched outputs retroactively reveals problem shape. At Level 0-2 this is unnecessary because all disciplines always run; at Level 3+ it becomes essential for intelligent selection.
- **Three-separate-SIC-cycles mode** — for the hardest problems, run three complete SIC cycles in parallel with different primary framings, then compare. Triangulation for extreme uncertainty.
- **Emergent CONTRAST discipline** — if patterns across E/D/S streams reveal a new cognitive operation, it may crystallize into a new discipline. Wait for actual patterns; don't design for speculation.

### Data Collection for Level 3+ Preparation

- Usage telemetry per discipline (invocation counts, non-trivial rate)
- Recursion triggers and outcomes
- Observation-to-telemetry links (when anomaly triggers observation, what did we observe?)
- Cross-run patterns (revisit palette composition after 50+ runs)

This data accumulates into the training signal that Level 3+ orchestration capability will learn from. We're not building orchestration; we're collecting its training data.

## Reasoning

**The parity argument is structurally strong, via the insurance reframe.** The prior finding's "cost argument" for killing ESIC was: running E on every problem wastes compute. The user's counter: we include I in SIC always even though we don't know ahead of time whether I will produce unique value. By symmetry, E and D should also be always-run.

Critique refined this: strict parity doesn't quite hold because the expected-value profiles differ (I has high EV across nearly all problems; E and D have high EV only in specific situations). But the underlying insight still holds via a different frame: **we can't tell ahead of time whether a problem has hidden unknowns or complexity**. Running E and D always catches MIS-CATEGORIZED problems. Thin outputs on well-suited problems are CONFIRMATION signals, not waste. The right frame is INSURANCE, not parity.

**Multi-head parallel produces richer input to I.** The first phase changes from "run S alone" to "run E and D and S." Innovation receives three structurally different views (territorial map, coupling topology, anchor-based understanding) of the same input. Even when some views are thin, their thinness is informative. I's job becomes synthesizing across three information streams instead of processing one — this is an ensemble pattern.

**Intra-I recursion was wrongly killed in the prior finding.** The prohibition on "interleaving disciplines within a cycle" was correct for cross-discipline interleaving (e.g., S interrupted by I mid-SV-progression, which breaks S's internal process). But same-discipline recursion is different — each pass completes before the next starts, and pass N's output becomes pass N+1's seed. The prior finding's rule was too broad.

Critique refined: recursion needs stop criteria (max 3 passes, new-novel rate threshold) to prevent runaway. Telemetry must be reported per-pass AND aggregate for clarity.

**The scientific method is a better analogy than Unix or cognitive faculties.** Unix tools are mechanical objects used by an agent — disciplines aren't. Cognitive faculties of a mind overclaims philosophically — we're building software, not a mind (even if aiming at consciousness as emergent). The scientific method is a proven cognitive pattern for hard problems, widely understood, and matches the extended MVL's structure: observation/decomposition/hypothesis → experiment → evaluate → iterate.

Critique caveat: don't claim this IS science (that invites philosophical contestation). Claim it follows the scientific method's cognitive pattern.

**Orchestration IS the enhanced MVL — a category-error prevention.** If we think "the MVL plus orchestration," we might build a separate orchestrator component that duplicates or fights the MVL's evolution. If we think "the MVL evolves into orchestration," we focus on MVL improvements as the path forward. This is not just semantic — it affects what we build (or don't build). Don't build a separate orchestrator.

**Explicit reconciliation in I addresses a real gap.** Three streams may contradict. Before the prior design had no explicit handling — I just synthesized. Critique's refinement: reconciliation EXPLICITLY NAMES contradictions rather than dissolving them. "E claims X, D claims Y, they differ on Z. Both candidates proceed to C." This preserves productive tension while preventing confused synthesis.

**Self-improvement observations linked to telemetry anomalies** resolves the overhead-vs-signal tradeoff. Mandatory-always creates dilution (trivial observations); optional-always creates underuse. Linking to telemetry signals strikes the balance: when something unusual happens (thin output, anomalous kill rate), observation is required; otherwise optional.

**Backward compatibility via two commands** preserves classic SIC for simple problems while defaulting to extended for new inquiries. The classic is a minimal subset; low maintenance burden.

**Data-driven palette refinement defers empirical decisions.** Making palette decisions before we have data is premature rigidity (the exact failure the user warned against). "Collect data, revisit after 50+ runs" is the honest response. 50 is a checkpoint, not a magic number.

**Mistake-based shape classification is preserved as frontier.** The user liked this idea from the prior inquiry. In the extended MVL at Level 0-2, always-run makes it unnecessary (no selection happens). But at Level 3+, when the system can choose to skip disciplines, this becomes the mechanism for safe selection. Preserved, deferred.

**What the prior finding got wrong:**
- Treated E, D as Situational when they should be Core (under insurance framing)
- Prohibited all intra-cycle sequencing, killing valid same-discipline recursion
- Framed orchestration as separate from MVL, inviting unnecessary component design
- Chose Unix-for-thinking analogy, which misfits

**What the prior finding got right (and is preserved):**
- The three-tier structure (Core + Boundary + Situational) — membership changed but structure kept
- Disciplines chain based on problem shape — still true, just different chain for extended
- Orchestration is a capability, not a discipline — reframe refines this to "orchestration IS the MVL at its maturity"
- Mistake-based shape classification — preserved as frontier
- Baldwin cycles on the palette — preserved
- Usage telemetry — preserved

**What the user's counter-arguments achieved:**
- Forced examination of the cost-argument inconsistency (parity concern)
- Promoted multi-head from "parallel execution at Level 3+" frontier to "always-run at Level 0-2" core
- Recovered intra-I recursion from premature prohibition
- Clarified that orchestration IS the loop evolving (category-error prevention)
- Replaced the governing analogy with a better one

## Open Questions

- **Implementation of `/mvl-extended` wrapper** — concrete command definition. The spec needs updating to describe the multi-head flow, the reconciliation prelude in I, the optional recursion trigger, and the telemetry-linked observation requirements. This is the immediate buildable next step after this finding.
- **Empirical calibration of recursion thresholds** — the 70% kill-rate trigger and the 20% new-novel stop criterion are placeholders. Calibration requires running extended MVL on enough problems to observe patterns. Revisit after 20-50 extended runs.
- **Reconciliation step — separate output or inline in I?** — Should the reconciliation produce its own artifact (a `reconciliation.md` or section) or be inline in innovation.md's early structure? Design detail for first implementation.
- **Level 3+ trigger conditions** — when does the system graduate from Level 2 to Level 3? What's the empirical signal? Baldwin-cycle hit rate > 70% was proposed in autonomous_consciousness_goal. Validate against extended MVL's accumulated data.
- **Integration with finding.md structure** — the extended MVL produces E.md, D.md, S.md, I.md, C.md per run. When TERMINATE writes finding.md, does it pull from all five or prioritize based on contribution? Needs prompt update.
- **Mistake-based classification mechanism** — deferred to Level 3+, but the SIGNAL aggregation needs design now. What's the across-run aggregator for thin-output patterns? This is a concrete build task for Level 2-3 transition.
- **Three-separate-SIC-cycles mode** — frontier for hardest problems. When would it trigger? How are the three cycles seeded differently? Left for future design.
- **VOID capability design** — frontier. What's the decision procedure the system uses to decline MVL? Human provides this intuition now; how does it become explicit?
- **Emergent CONTRAST discipline** — watch for cross-stream comparison patterns emerging from extended MVL usage. If a distinct "contrast" cognitive operation becomes visible after many runs, formalize it.
- **Effect on existing inquiries** — in-progress inquiries using classic SIC can finish classic. New inquiries default to extended. Completed inquiries (like system_end_goal, autonomous_consciousness_goal) stay as they are. No retroactive migration.
