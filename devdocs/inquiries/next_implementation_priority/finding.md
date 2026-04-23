---
status: active
---
# Finding: Next Implementation Priority

## Question

Given the current state of the vibe-driven-development system — with auto-chaining and Skill invocation recently implemented in the MVL/MVL+ loop runners (the command specs that orchestrate the cognitive discipline pipeline), a fully specified but unbuilt `/intuit` discipline (the L3 real-time hunch layer in the three-layer cognitive architecture), and the autonomous cognitive consciousness endgoal defined in `enes/desc.md` — what is the highest-priority next thing to build, is `/intuit` valuable to build now or are there more critical gaps, and what else is missing for the endgoal?

**Goal:** A prioritized implementation roadmap: what to build next (and why it's highest priority), whether `/intuit` Phase A should be that next thing or something else should come first, and a gap analysis against the endgoal showing what's built, what's specified-but-unbuilt, and what's not yet even specified.

## Finding Summary

- **Build `/intuit` Phase A next.** It is the single item on the critical path for the autonomous cognitive consciousness endgoal. Without it, the Baldwin cycle (the system's self-improvement mechanism — L3 predictions calibrated against L2 retrospective outcomes) cannot close, and every downstream capability (L2 calibration, graduated autonomy Level 1+, Baldwin seed detection) is blocked.
- **`/intuit` is valuable NOW, not just strategically.** At current corpus size (~35 findings), convergent matching will surface relevant prior work for structurally similar questions. When no match exists, the `INSUFFICIENT_INTUITION` output is itself useful signal — it tells the user the question is genuinely novel relative to the corpus. Both outcomes have operational value at Level 0.
- **The implementation must be phased WITHIN Phase A** to manage complexity. The core operation (forward transform → scan → projection) plus decline conditions and structured abstractions ship first (~100-150 line command spec). Quality machinery (invocation trace, multi-sample consensus, vocabulary hints) ships as a fast follow-up. The 312-line design spec (`enes/intuit.md`) cannot be faithfully translated into a single command spec of equal length — the LLM cannot reliably execute specs that long.
- **Three additional items ship alongside or immediately after `/intuit`:** (1) Human hunch recording — one optional prompt in the MVL/MVL+ inquiry creation flow that begins L2 data accumulation at near-zero cost. (2) Telemetry reading in MVL/MVL+ — adding a quality-check step between disciplines, which was the outstanding "Fix 1" from the minimum viable loop design. (3) Baldwin cycle log — recording which findings led to which spec changes and why, making the endgoal's primary measured objective (self-improvement rate) observable.
- **The full gap against the endgoal is 12 items across 4 tiers,** ordered by dependency: Tier 1 (/intuit Phase A + minor additions), Tier 1.5 (telemetry reading), Tier 2 (retrospective calibration + L2 via /reflect extension + Baldwin log), Tier 3 (/intuit Phase B + L1 regression re-design), Tier 4 (/intuit Phases C/D + graduated autonomy measurement + Baldwin seed detection). Research frontiers beyond the roadmap: value persistence across self-modification, parallel MVL coordination, Level 3 intuition-space generation.

## Finding

### 1. Why /intuit Phase A Is the Critical-Path Next Step

The autonomous cognitive consciousness endgoal (`enes/desc.md`) defines a three-layer cognitive architecture:
- **L1 (structural, deterministic):** Format checks, contradiction detection, missing-section alerts. Catches structural regressions immediately.
- **L3 (real-time hunch, probabilistic):** Pattern recognition against prior work via the `/intuit` discipline. Produces predictions about whether an approach will succeed or fail, based on structural similarity to prior findings.
- **L2 (retrospective, empirical):** Calibrates L3 predictions against actual outcomes over time. Produces the ground-truth signal that drives spec refinement (Baldwin cycles).

The dependency chain is: **L3 must exist before L2 has anything to calibrate. L2 must exist before Baldwin cycles can close. Baldwin cycles must close before the graduated autonomy model can advance beyond Level 0.**

`/intuit` Phase A IS L3. Nothing else in the system provides real-time corpus-based hunch generation. Without it, the entire chain from L3 onward is blocked. Every other improvement — auto-chaining (done), telemetry reading, L1 regression detection — is operationally valuable but off this critical path.

The auto-chain improvements (recently completed: MVL and MVL+ now execute disciplines continuously with Skill invocation and informational checkpoints) changed HOW disciplines run, not WHAT disciplines exist. The gap `/intuit` fills is unchanged by auto-chaining.

### 2. Why /intuit Has Operational Value at Current Scale

Prosecution challenged whether `/intuit` at ~35 findings would produce enough convergent matches to be useful. The defense established two forms of value:

**Match hits:** The corpus of ~35 findings contains many structurally related inquiries. For example, `thinking_space_dynamics` and `intuition_as_discipline` share structural patterns (both address cognitive architecture partitioning). `/intuit` running on a new cognitive-architecture question should surface these as relevant prior work. At N=35, matches won't occur on every question, but they will occur on questions in the corpus's structural neighborhoods.

**INSUFFICIENT_INTUITION as signal:** When `/intuit` finds no corpus matches above threshold, it returns `INSUFFICIENT_INTUITION` with a reason (no matches, contradictory seeds, or projection failure). This tells the user: "this question is genuinely novel relative to our corpus." This is useful — it distinguishes "I should look for prior work" from "there is no prior work to find." Every other discipline produces output regardless of novelty; `/intuit` is the only one that signals novelty itself.

### 3. Phased Implementation Within Phase A

The `/intuit` design spec (`enes/intuit.md`, 312 lines) specifies more than Phase A needs at first ship. Critique identified that a command spec of that length would exceed the LLM's reliable spec-following capacity. The implementation phases within Phase A:

**Phase A.1 — Core operation (ship first):**
- Forward transform: source text → structured relational abstraction in `predicate(typed_arg, typed_arg)` form
- Scan: convergent mode — find corpus findings whose abstractions match the source's
- Projection: SME-style Alignment + Projection — transfer structural consequences back to source context
- Decline conditions: 4 named conditions → `INSUFFICIENT_INTUITION` (empty abstraction, no corpus matches, contradictory seeds, projection failure)
- Output: flat ranked seed list with reliability scores, `source_type` ∈ {CORPUS_MATCH, INSUFFICIENT_INTUITION}
- Target: ~100-150 line command spec

**Phase A.2 — Quality machinery (fast follow-up):**
- Multi-sample consensus (3 samples for abstraction stability)
- Vocabulary-hint mechanism (show prior abstractions to encourage predicate reuse)
- Evidence-linked invocation trace (per-entry format with primitive attribution)
- Quality gate on trivial abstraction outputs

This phasing preserves the design spec's load-bearing properties (structured abstractions and decline conditions) while deferring complexity that can be layered after the core works.

### 4. What Else Ships Alongside (Tier 1 Additions)

Three near-zero-cost additions produce outsized value when combined with `/intuit` Phase A:

**Human hunch recording:** Add one optional line to the MVL/MVL+ NEW flow: "Any initial hunches about this question? (optional — recorded for calibration)." When the user records a hunch (e.g., "I think this will be similar to the regression_detection inquiry"), it's logged in `_branch.md`. This begins L2 data accumulation before `/intuit` produces machine hunches — the human's hunches are the Level 0 bootstrap version of L3. Even at 30% compliance (the user doesn't always bother), the accumulated data produces calibration seeds.

**Telemetry reading:** Add a telemetry-check step to MVL/MVL+ between disciplines — the loop runner reads the previous discipline's telemetry section and flags thin outputs (e.g., "anchor diversity is low — consider checking additional perspectives"). This was identified as "Fix 1" in the `minimum_viable_loop` design document and closes a long-standing operational gap. It's a small spec edit to files already recently modified.

**Baldwin cycle log:** Start `devdocs/baldwin_cycles.md` as an append-only log. Each time a finding leads to a spec change, record: finding path → spec changed → what changed → **why** (what the finding revealed that caused the change). The "why" column is critical — it's the quality signal that distinguishes a real improvement from a mechanical change. Without it, the log is just cycle counting (vanity metrics). With it, the log makes the endgoal's primary measured objective (self-improvement rate = Baldwin cycles × quality per cycle) observable for the first time.

### 5. The Full Gap Analysis Against the Endgoal

| Tier | Item | Status | Dependency | Priority rationale |
|---|---|---|---|---|
| **1** | `/intuit` Phase A (L3 hunch layer) | Specified, not built | None — buildable now | Critical path: unblocks L2 → Baldwin → Autonomy |
| **1** | Human hunch recording in MVL/MVL+ | Not specified | None | Near-zero cost; begins L2 data accumulation |
| **1.5** | Telemetry reading in MVL/MVL+ | Gap identified in minimum_viable_loop | None (independent of /intuit) | Highest operational value; one spec edit |
| **2** | Retrospective calibration | Not specified | Requires /intuit to exist | Run /intuit on 5-10 completed inquiries with known relationships; validates implementation |
| **2** | `/reflect` extension for prediction review | Not specified | Requires predictions to exist (from /intuit or human hunches) | L2 calibration gets a command-level home |
| **2** | Baldwin cycle log (with "why" column) | Not started | None (but meaningful only after finding-driven spec changes) | Makes self-improvement rate observable |
| **3** | `/intuit` Phase B (divergent mode, embedded) | Specified, gated on Phase A calibration N≥15 | Requires Phase A calibration baseline | Adds cross-domain structural analogy — the signature capability |
| **3** | L1 regression re-design | Superseded finding, components need re-architecture | None, but needs design work | Structural regression checks for spec edits |
| **3** | Signal accumulation convention | Conceptual only | Requires /intuit (corpus_limit_seeds) and /navigate (frontier questions) | Substrate for future self-proposal capability |
| **4** | `/intuit` Phase C (adversarial mode) | Specified, gated on failure-annotated corpus | Requires corpus with failure annotations | Failure-pattern detection |
| **4** | `/intuit` Phase D (scale, Baldwin seeds) | Specified, gated on calibration N≥30 | Requires mature calibration | Embedding pre-filter, persistent working memory, Baldwin seed generation |
| **4** | Graduated autonomy measurement | Conceptual only | Requires Baldwin cycles running | Self-improvement hit rate tracking |

**Research frontiers (beyond the roadmap):**
- Value persistence across self-modification (Level 4+) — open question from `enes/desc.md`
- Parallel MVL coordination — future capability from the endgoal
- Level 3 intuition-space generation — current capability horizon per the intuition ladder
- Modulator operationalization (Mood, Arousal) — deferred primitives

### 6. What the Auto-Chain Improvements Changed

The recently completed auto-chain work (MVL and MVL+ now execute disciplines continuously with Skill tool invocation) didn't change WHAT to build next — it changed the CONTEXT in which the next thing is built:

- **Inquiry velocity increased ~3-5x.** The user runs a full S→I→C or E→S→D→I→C loop with one command instead of 5-10. This means the corpus grows faster, which means `/intuit`'s operational value arrives sooner.
- **The bottleneck shifted.** Before auto-chain, the bottleneck was EXECUTION (manually typing commands). After auto-chain, the bottleneck is DIRECTION (choosing what to investigate). `/intuit` and `/navigate` are both direction-assistance tools — `/intuit` surfaces relevant prior work, `/navigate` enumerates possible next directions. Building `/intuit` now addresses the new bottleneck.
- **This inquiry is the first auto-chain test.** The S→I→C loop for this inquiry ran via auto-chain execution. The auto-chain design is working as specified.

## Next Actions

### MUST

- **What:** Build `/intuit` Phase A.1 command spec (`commands/intuit.md`) — core operation (transform → scan → project) + decline conditions + structured abstractions + flat ranked output
- **Who:** Human (writes and tests the command spec)
- **Gate:** Before the next 3 inquiries — /intuit's value grows with each inquiry it misses
- **Why:** Unblocks the entire L3→L2→Baldwin→Autonomy dependency chain. Every inquiry run without /intuit is a missed calibration opportunity.

- **What:** Add human hunch recording to MVL/MVL+ NEW flow — one optional prompt: "Any initial hunches about this question?"
- **Who:** Human (small edit to `commands/MVL.md` and `commands/MVL+.md`)
- **Gate:** Same session as /intuit Phase A.1 construction (the specs are already being referenced)
- **Why:** Begins L2 data accumulation at near-zero cost. Human hunches are the Level 0 L3.

### COULD

- **What:** Add telemetry reading to MVL/MVL+ between disciplines
- **Who:** Human (spec edit to `commands/MVL.md` and `commands/MVL+.md`)
- **Gate:** Within 1 week of /intuit Phase A.1 shipping
- **Why:** Closes the minimum_viable_loop "Fix 1" gap. High operational value on every inquiry.

- **What:** Start Baldwin cycle log (`devdocs/baldwin_cycles.md`) with "why" column
- **Who:** Human (create file, record first entry when /intuit Phase A causes a spec change)
- **Gate:** After /intuit Phase A.1's first finding-driven change
- **Why:** Makes self-improvement rate observable for the first time

- **What:** Run retrospective calibration — invoke /intuit on 5-10 completed inquiry _branch.md files with known structural relationships
- **Who:** Human (runs /intuit, evaluates matches)
- **Gate:** After /intuit Phase A.1 passes basic functional testing (produces coherent output on 2-3 test runs)
- **Why:** Validates implementation quality and begins calibration data accumulation

### DEFERRED

- **What:** Build /intuit Phase A.2 (multi-sample consensus, vocabulary hints, invocation trace)
- **Gate:** After Phase A.1 has run on 5+ inquiries and core operation is stable
- **Why (if revived):** Quality machinery that improves output reliability and enables per-primitive calibration

- **What:** Extend /reflect to include prediction-review dimension (L2)
- **Gate:** After 10+ recorded predictions exist (from /intuit + human hunches combined)
- **Why (if revived):** L2 calibration gets a command-level home, closing the calibration loop

- **What:** Re-design L1 regression detection for the three-layer architecture
- **Gate:** After /intuit Phase B ships (Phase B's embedded mode may change how L1/L3 interact)
- **Why (if revived):** Structural regression checks on spec edits prevent accidental degradation

## Reasoning

### Killed: Distribute /intuit across disciplines (Innovation 3a)
Proposed embedding corpus-matching behavior inside each Core discipline instead of building /intuit as a standalone. Killed on taxonomy violation — `/intuit` is Cross-cutting (already admitted with audit) precisely because it's a separate discipline with distinct primitive profile, invoked at multiple points. Distribution creates maintenance burden (5+ specs to edit for every /intuit change) and loses the invocation trace (no unified prediction record).

### Killed: /intuit + telemetry as unified quality layer (Innovation 2c)
Proposed combining structural telemetry checking and corpus-based quality signals into one mechanism per discipline boundary. Killed on coupling risk — combines two unbuilt capabilities into a single dependency. Failure of either breaks both. Build independently, combine later.

### Killed: Abandon endgoal as priority framework (Innovation 3b, refined)
Proposed optimizing purely for operational improvements, deferring /intuit until corpus size justifies it. Killed on coherence — the endgoal is the design principle that gives the system architectural direction. Without it, improvements become ad hoc. However, the operational concern was real: refined to dual justification (build /intuit for BOTH strategic AND operational reasons).

### Killed: Full 312-line faithful translation of enes/intuit.md (Critique prosecution)
The design spec is too long for a single command spec. Refined to phased implementation: A.1 (core) then A.2 (quality machinery).

### Killed: Baldwin cycle log as tally (Critique prosecution)
Counting cycles without recording WHY is vanity metrics. Refined: log must include finding path, spec changed, what changed, and why.

### Survived: /intuit Phase A as next build
Survived adversarial testing on all six evaluation dimensions. Critical-path item with no displacement candidate. Operational value at current corpus size (both matches and INSUFFICIENT signal). Buildable now with no hidden prerequisites.

### Survived: Human hunch recording
Survived cost-proportionality argument. Near-zero implementation cost; even partial adoption (30% compliance) produces calibration seeds. Behavioral decay risk is real but proportional to the negligible investment.

### Survived: Telemetry reading at Tier 1.5
Survived as highest operational value improvement. Correctly ranked below /intuit (systemic capability addition > local execution improvement) but above all Tier 2 items (independence + simplicity + frequency of value).

### Survived: 4-tier roadmap structure
Survived as the answer to "what else is missing." Prosecution's "wish list" objection was countered: the user asked for a gap analysis, and a gap analysis IS a structured list. Refined to rank Tier 1 items explicitly and promote telemetry reading to Tier 1.5.

## Open Questions

### Monitoring
- After 5 /intuit Phase A.1 runs: does the core operation (transform → scan → project) produce coherent structured abstractions? What's the match hit rate at N=35 corpus? If hit rate is below 20%, the structured abstraction quality or the similarity threshold may need adjustment.
- After 10+ inquiries with human hunch recording: what's the compliance rate? If below 15%, the optional prompt isn't producing data and should be reconsidered (make it more prominent, or drop it).

### Blocked
- L2 calibration via /reflect extension: blocked until 10+ predictions exist (from /intuit + human hunches combined). Estimated: 4-8 weeks at current inquiry velocity.
- /intuit Phase B: blocked until Phase A calibration N≥15. Estimated: 6-12 weeks.

### Research Frontiers
- Value persistence across deep self-modification (Level 4+): the mechanism by which bootstrap-encoded human values persist as the system modifies its own specs is unproven.
- Level 3 intuition-space generation: creating custom Z-spaces per problem rather than brute-force corpus matching — capability horizon beyond /intuit Phase D.

### Refinement Triggers
- If /intuit Phase A.1 command spec exceeds 150 lines and LLM execution quality degrades, further split into A.1a (transform + scan) and A.1b (projection + decline conditions).
- If retrospective calibration (running /intuit on known-relationship inquiries) shows consistent structural-vs-surface confusion, the structured relational abstraction mechanism needs redesign before Phase A.2.
- If auto-chain inquiry velocity exceeds 5 inquiries/week, the corpus growth rate makes /intuit Phase B's divergent mode valuable sooner — consider accelerating the N≥15 gate.
