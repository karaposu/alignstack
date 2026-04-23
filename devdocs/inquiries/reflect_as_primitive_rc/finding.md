---
status: active
supersedes: devdocs/sensemaking/primitive_rc_mechanism.md
---
# Finding: reflect_as_primitive_rc

## Changes from Prior
**What's preserved:** The previous sensemaking (`devdocs/sensemaking/primitive_rc_mechanism.md`) correctly identified that Primitive RC structural checks should be binary, deterministic, and inline — not LLM-based. That core insight stands.

**What's changed:** The previous sensemaking concluded "/reflect is not involved" in Primitive RC. This finding corrects that: /reflect IS involved — as the quality awareness integrator that reads structural check results and reasons about patterns. /reflect doesn't perform structural checks, but it owns the quality awareness that those checks feed into.

**What's new:** The two-mechanism architecture (checkpoint produces structural data, /reflect integrates it), the interface format between them, the connection to the Baldwin cycle at the infrastructure level, and the principle that ownership and execution are separate.

**Migration:** The previous sensemaking file should be treated as superseded by this finding. Its technical analysis of mechanism types remains correct; only its conclusion about /reflect's role needs updating.

## Question
Should /reflect (a discipline that examines process quality after completed SIC runs) be extended to handle Primitive RC (immediate, deterministic structural validation of discipline outputs), given the user's argument that /reflect could run after each discipline and check "what went well and what went bad"?

**Goal:** A clear architectural decision on whether /reflect owns structural checking or whether that responsibility belongs in the loop runner checkpoint, so the user can confidently assign Primitive RC to the right mechanism.

## Finding Summary

- **/reflect should own quality awareness but should NOT perform structural checks itself.** The user's instinct that /reflect is "the quality tool" is correct at the ownership level — but ownership and execution are separate. /reflect integrates quality signals; the checkpoint produces them.
- **Structural checks belong in the MVL/MVL+ checkpoint** — they fire per-discipline, are binary and deterministic, require no LLM reasoning, and cost zero extra invocations. This is infrastructure, not a discipline.
- **The checkpoint persists structural check results** to the inquiry folder. /reflect reads these results post-loop alongside discipline outputs, reasoning about patterns (e.g., "sensemaking keeps missing ambiguity collapse — possible spec gap").
- **The user experience is unified through /reflect's output.** The user invokes /reflect and sees both structural findings and process quality observations in one place. The two-mechanism split is invisible to them.
- **Each discipline spec gains a `## Structural Requirements` section** — a machine-readable list of what the output MUST contain. The checkpoint reads this section and checks the output against it. Requirements co-locate with specs so they evolve together.
- **The architecture enables the Baldwin cycle at the infrastructure level.** Checkpoint catches violations (immediate, hardcoded). /reflect detects patterns (delayed, learned). Patterns inform spec improvements. Better specs reduce violations. Each component amplifies the other.

## Finding

### 1. The User's Instinct Is Right — But About Ownership, Not Execution

The user argued that /reflect should be responsible for structural checking because it already examines "what went well and what went bad." This reflects a correct insight: /reflect should be the place where quality awareness converges. When the user runs /reflect, they should see a complete quality picture — structural correctness included.

But "owning quality awareness" is different from "performing every quality check." A team lead owns quality without personally running every test. /reflect owns quality awareness without personally performing binary pattern matching. It delegates structural checking to the checkpoint (which is better suited to the task), then reads and integrates the results.

### 2. Why /reflect Should Not Perform Structural Checks Directly

Three structural reasons, all grounded in /reflect's design:

**Operation type mismatch.** Structural checking is binary pattern matching ("does section X exist?"). /reflect is LLM-based reasoning ("was prosecution strong enough?"). Using LLM reasoning for a grep-equivalent task is like hiring a senior engineer to count lines of code. The mechanism doesn't match the operation.

**Temporal position loss.** /reflect is designed as a post-loop holistic observer. Its most valuable observations (cross-step leaks, answer-goal alignment) require seeing all discipline outputs together. Running /reflect per-discipline for structural checks would cut it to 3/5 dimensions — effectively creating a different tool wearing /reflect's name. Running it only post-loop means structural violations propagate unchecked through the entire pipeline.

**Category confusion.** /reflect's spec defines it as "second-order observation of a first-order cognitive process." Structural checking is first-order (validating output against requirements). Adding first-order operations to a second-order observer introduces identity fragmentation. The spec would need two modes doing fundamentally different things.

### 3. The Checkpoint Quality Gate

The checkpoint between disciplines in MVL/MVL+ (the loop runners that orchestrate the discipline pipeline) already fires between disciplines and displays telemetry. Extending it to include structural validation is natural:

1. **Read structural requirements** from the discipline spec's `## Structural Requirements` section
2. **Run pattern checks** against the discipline's saved output (grep/regex — binary, deterministic)
3. **Display results** alongside telemetry in the checkpoint display
4. **Persist results** to a checkpoint log file in the inquiry folder (so /reflect can read them later)
5. **Flag and continue** — violations produce warnings, not pipeline halts

The checkpoint quality gate also subsumes the previously-identified "telemetry reading" improvement (from `thinking_disciplines/minimum_viable_loop.md`). Both structural validation and telemetry threshold checking fire at the same point, produce the same type of output, and follow the same flag-and-continue pattern. They should be implemented as one unified checkpoint enhancement, not two separate features.

### 4. The /reflect Quality Integrator

/reflect gains one new input source: the checkpoint log from the inquiry folder. Post-loop, /reflect reads:
- Discipline outputs (existing)
- Human interventions (existing)
- The original question (existing)
- **Checkpoint structural check results (new)**

With this additional input, /reflect can:
- Include structural findings in its per-step observations ("S: missed ambiguity collapse section — flagged by checkpoint")
- Reason about patterns ("sensemaking has failed the ambiguity collapse check in 3 of the last 5 runs — this may indicate a spec gap rather than execution failure")
- Distinguish discipline failures (the discipline executed poorly) from spec gaps (the spec's instructions are unclear or insufficient)
- In Phase 2: propose memory cells that feed back to strengthen structural requirements in discipline specs

### 5. The Interface: Structural Check Result Format

The interface between the checkpoint and /reflect is the checkpoint result log — a file in the inquiry folder that accumulates per-discipline structural check results. Format:

```
## Structural Checks

### Sensemaking
- [PASS] SV1-SV6 progression present
- [PASS] Ambiguity collapse section present
- [WARN] Saturation indicators section missing

### Innovation
- [PASS] At least 1 generator applied
- [PASS] At least 1 framer applied
- [PASS] Assembly check present
```

This format is human-readable (visible in the inquiry folder) and machine-readable (/reflect can parse it). Severity levels follow the linting pattern: ERROR (critical structural failure), WARN (missing but non-critical), PASS.

### 6. Connection to the Baldwin Cycle

The two-mechanism architecture forms a feedback loop that IS the Baldwin cycle operating at the infrastructure level:

```
Checkpoint catches violations (immediate, hardcoded — "innate immune system")
    ↓
/reflect detects patterns across violations (delayed, learned — "adaptive immune system")
    ↓
Patterns inform spec improvements (human confirms → spec updated)
    ↓
Better specs → clearer instructions → fewer violations
    ↓
Checkpoint catches fewer violations → /reflect shifts attention to process quality
```

The structural requirements in discipline specs are the "genotype" — they encode what the system has learned about what must be present. The checkpoint is the selection pressure — it tests whether the genotype produced the right phenotype. /reflect is the mutation mechanism — it proposes changes to the genotype based on observed fitness. This is biological evolution applied to cognitive discipline specs.

## Next Actions

### MUST

- **What:** Add `## Structural Requirements` section to each discipline spec (sensemaking, innovation, critique minimum; exploration, decomposition for MVL+)
  **Who:** Human + AI, editing `commands/*.md`
  **Gate:** Before checkpoint validation can be implemented
  **Why:** Without explicit requirements, the checkpoint has nothing to check against. This is the prerequisite for everything.

- **What:** Add structural validation logic to MVL/MVL+ checkpoint step
  **Who:** Human + AI, editing `commands/MVL.md` and `commands/MVL+.md`
  **Gate:** After structural requirements are defined in discipline specs
  **Why:** This is the Primitive RC mechanism — the core value delivery of this finding.

- **What:** Define checkpoint result persistence format and add to MVL/MVL+ specs
  **Who:** Human + AI, editing `commands/MVL.md` and `commands/MVL+.md`
  **Gate:** Concurrent with checkpoint validation logic
  **Why:** Without persistence, /reflect can't read structural check results post-loop.

### COULD

- **What:** Extend /reflect spec to read checkpoint structural check results as additional input
  **Who:** Human + AI, editing `commands/reflect.md`
  **Gate:** After checkpoint validation is producing and persisting results
  **Why:** Completes the quality awareness integration — /reflect sees structural patterns alongside process quality.

- **What:** Add configurable severity levels (ERROR/WARN) to structural requirements
  **Who:** Human + AI, in structural requirement definitions
  **Gate:** When structural requirements are being defined
  **Why:** Not all structural requirements are equally critical. A missing prosecution section (ERROR) is worse than a missing telemetry summary (WARN).

### DEFERRED

- **What:** /reflect memory cells feeding back to modify structural requirements (Baldwin cycle closure)
  **Gate:** When /reflect has been run on 10+ inquiries with structural check results, and patterns are emerging
  **Why (if revived):** Closes the Baldwin cycle at the infrastructure level — structural requirements evolve based on observed violations.

- **What:** Claude Code hooks for spec-change checking (Primitive RC's second trigger type)
  **Gate:** When the in-pipeline checkpoint validation is stable and producing value
  **Why (if revived):** Catches accidental deletions when the human edits discipline specs.

## Reasoning

### Kills

**"/reflect does everything" (user's original proposal) — KILLED by operational fitness + immediacy.** The user proposed extending /reflect to handle structural checking directly, either by running it after each discipline or post-loop. This was killed because: (1) using LLM reasoning for binary pattern matching is a category error — it pays the full LLM cost for a grep-equivalent task; (2) if /reflect runs only post-loop, structural violations propagate unchecked through the entire pipeline; (3) if /reflect runs per-discipline, it loses 2 of its 5 examination dimensions (cross-step leaks and answer-goal alignment both require seeing the full loop), becoming a diminished tool wearing /reflect's name. The user's desire for conceptual simplicity was honored in the surviving architecture by making /reflect's output the unified quality surface.

**"Hybrid /reflect with two modes" — KILLED by coherence.** A variant where /reflect has a "structural mode" (binary, no LLM) and a "quality mode" (LLM reasoning). This was killed because it's the checkpoint-plus-reflect architecture dressed up as a single tool. The complexity isn't eliminated, just hidden in one spec. /reflect's identity fragments — is it a second-order process observer or a first-order structural checker? Both, depending on mode. This is worse than an explicit split because debugging is harder and the "simplicity" benefit is illusory.

**"Structural checking is unnecessary — just write better specs" — KILLED by scrutiny.** Innovation's lens shift proposed that if specs were clear enough, structural checking would be redundant. Killed because even humans with clear instructions miss things. The spell-checker analogy holds: you need it even with good writers. However, the seed extracted from this kill — that violations can signal spec quality gaps, not just discipline execution failures — was incorporated into the surviving architecture as a key /reflect capability.

**"/reflect predicts violations before they happen" — KILLED by non-problem.** Innovation's inversion proposed /reflect running BEFORE structural checks to predict which violations would occur. Killed because structural checks are cheap (pattern matching), so there's nothing to optimize. Prediction-based narrowing saves almost nothing while adding complexity.

### Survivals

**The synthesis architecture survived** because it satisfies all six evaluation dimensions without compromise: operational fitness (binary checks via pattern matching), immediacy (violations caught per-discipline), user experience unity (/reflect output is the unified quality surface), coherence (/reflect stays second-order, checkpoint stays lightweight), evolvability (accumulation enables Baldwin cycle), and completeness (discipline output checks covered, spec-change hooks deferred to Phase 2).

The architecture was independently validated by three domain transfer analogies that all map to the same structure: software linting (linter = checkpoint, code review = /reflect), manufacturing inspection stations (inline inspection = checkpoint, holistic QA = /reflect), and biological immune systems (innate = checkpoint/hardcoded, adaptive = /reflect/learned).

## Open Questions

### Monitoring
- After structural requirements are defined for 3+ disciplines and the checkpoint is running: does the checkpoint catch violations that would have propagated unchecked before? (Observable after 5 pipeline runs with structural validation active.)
- After /reflect has been extended to read structural check results: does /reflect produce novel observations that it couldn't have produced without structural data? (Observable after 3 /reflect runs with structural check input.)

### Blocked
- The exact structural requirements per discipline cannot be defined until someone reads each discipline spec and extracts the implicit requirements. This is a prerequisite for the MUST actions above.

### Refinement Triggers
- If checkpoint structural checks produce many false positives (flagging intentional adaptations as violations) after 10+ pipeline runs, the severity level system needs refinement — possibly adding an "ADAPTED" status alongside ERROR/WARN/PASS.
- If /reflect's structural pattern analysis produces no actionable spec improvement proposals after 15+ runs with structural data, the /reflect integration (COULD action) may not be worth the spec complexity — re-evaluate.
