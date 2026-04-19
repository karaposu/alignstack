---
status: active
---
# Finding: MVL+ Implementation

## Question
What are the concrete implementation problems for MVL+, given that sequential execution of E, D, S in the first phase is accepted as non-problem?

Goal: A scoped, prioritized list of problems with per-problem design questions — which are mechanical edits, which need design, which need their own SIC loops.

## Finding

**MVL+ is built as a separate command from `/mvl`, not by evolving `/mvl` in-place.** The user's constraint — "we don't know if mvl+ will cause regression, so keep the original one; mvl+ should be separate" — takes priority over the philosophical argument that "orchestration IS the MVL evolving." Regression protection wins at Level 0-2. Consolidation (if desired) can happen later once `/mvl+` is proven stable.

The implementation is a 4-layer build executing in a specific order, with Layer 4 items deferred to their own SIC loops.

### Layer 0 — Example Showcase (before codifying)

Before writing any specs, run ONE complete extended MVL manually on the next real inquiry. Invoke `/explore`, `/decompose`, `/sense-making`, `/innovate`, `/td_critique` in sequence. This test-in-practice step surfaces integration-point gaps that spec-writing alone cannot anticipate: where the human struggles with the 5-step sequence, whether the reconciliation prelude actually helps, what a real `finding.md` produced from 6 source files looks like.

The caveat: use the NEXT REAL inquiry, not a contrived showcase. Zero extra cost — we'd run this question through MVL anyway. Using it as a showcase adds learning without adding work.

### Layer 1 — File Naming Convention

Modify `/explore` and `/decompose` commands directly:

- **`/explore`**: When input is a file path pointing to an inquiry folder's `_branch.md`, save output as `exploration.md` in that folder. Otherwise, save with AI-chosen filename under `devdocs/exploration/` as currently specified.
- **`/decompose`**: Same rule — save as `decomposition.md` when input is an inquiry folder's `_branch.md`.

This mirrors `/sense-making`'s existing behavior. Two small spec edits. The shared convention is noted inline but NOT yet extracted to a separate document — YAGNI for 2 commands. Extract to a shared rule when a 4th discipline needs the same pattern.

### Layer 2 — Create `/mvl+` Command (Separate from `/mvl`)

`/mvl+` is a new command file. `/mvl` stays UNCHANGED.

**`/mvl+` NEW branch behavior** — creates inquiry folder with extended `_state.md` template:

```markdown
# State: [name]
## Pipeline
E || D || S → I → C (extended)
## Flow-type
extended
## Progress
- [ ] Exploration
- [ ] Decomposition
- [ ] Sensemaking
- [ ] Innovation
- [ ] Critique
## Iteration
1
## Status
ACTIVE
## Next Command
/explore devdocs/inquiries/[name]/_branch.md
(Note: /explore, /decompose, /sense-making can run in any order for the first phase)
## History
- [date]: Created as extended MVL inquiry.
```

The `flow-type: extended` field serves two purposes: verification (if `/mvl+` is invoked on a classic inquiry it refuses), and future analytics (count classic vs extended across inquiries).

**`/mvl+` RESUME behavior** — state detection via a STATE TABLE (not prose):

| E exists | D exists | S exists | I exists | C exists | Next action |
|---|---|---|---|---|---|
| No | No | No | — | — | Run any of /explore, /decompose, /sense-making |
| Partial (any subset of E/D/S missing) | | | — | — | Run the missing ones |
| Yes | Yes | Yes | No | — | Run /innovate |
| Yes | Yes | Yes | Yes | No | Run /td_critique |
| Yes | Yes | Yes | Yes | Yes | ITERATION COMPLETE (write finding.md) |

**`/mvl+` TERMINATE (ITERATION COMPLETE with YES answer)** — similar to `/mvl`'s TERMINATE but reads more sources:

- finding.md production prompt reads 6 files: `_branch.md`, `exploration.md`, `decomposition.md`, `sensemaking.md`, `innovation.md`, `critique.md`
- Archive list includes all 5 discipline outputs: `exploration.md`, `decomposition.md`, `sensemaking.md`, `innovation.md`, `critique.md` → `docarchive/`
- Update `_state.md`: Status → COMPLETE, append to History
- Post-completion pointer (CONTINUES FROM / RELATED from `_state.md`) — unchanged from `/mvl` classic

**Classic `/mvl` is UNTOUCHED.** Both commands coexist. Users choose.

### Layer 3 — `/innovate` Spec Update

The `/innovate` command's spec gets modified to support extended-MVL invocations:

**Multi-input reading**: When input is a file path to an inquiry folder with `flow-type: extended`, read all three of `exploration.md`, `decomposition.md`, `sensemaking.md`. Otherwise, read `sensemaking.md` only (classic behavior preserved).

**Reconciliation prelude**: First step of innovate when handling extended input is a mini-sensemaking pattern applied to the three inputs. Identify contradictions across E/D/S (e.g., E's territory claim vs D's coupling topology vs S's anchor set). Apply ambiguity-collapse logic: for each contradiction, either resolve using a strong anchor OR explicitly name it as OPEN for Critique to evaluate. Output: a "Reconciliation" section at the top of `innovation.md` listing contradictions and their resolutions (or open status).

**Optional recursion**: If critique's kill rate exceeds a threshold (placeholder: 70%), `/innovate` can recurse with critique's killed candidates as seeds. Each pass completes internally before the next starts. Stop criteria: max 3 passes OR new-novel rate < 20% (placeholders). Hard limit of 3 is non-negotiable.

**Per-pass output**: Recursion produces inline sections within `innovation.md`, not separate files. Each pass labeled (Pass 1, Pass 2, Pass 3). Telemetry reported per-pass AND aggregate.

### Layer 4 — Deferred (Own SIC Loops)

These items are named but NOT built in this session:

- **Recursion trigger UX** — who pushes the button? Human sees high kill rate and re-invokes `/innovate`? Or `/innovate` spec auto-recurses internally? Or MVL orchestrator detects and instructs? Each path has UX implications that need their own SIC.
- **Telemetry-anomaly thresholds** — which telemetry signals count as anomaly (thin SV delta, low mechanism coverage, high kill rate)? What thresholds? Empirical question requiring data.
- **Self-improvement observation mechanism** — linked to telemetry anomalies, but the trigger conditions need the telemetry-anomaly definition first.

### What's NOT a Problem

- **Multi-head parallelism** — sequential E, D, S is accepted. True parallel is Level 3+ frontier.
- **Runtime components** — everything is prompt-level spec editing.
- **Backward compatibility** — `/mvl` classic untouched; new inquiries default to `/mvl+`.
- **VOID capability** — Level 3+ frontier.
- **Mistake-based shape classification** — Level 3+; unnecessary when all disciplines always run.

### Ordering and Build Path

1. **Layer 0 (showcase)** — pick next real inquiry, run extended manually
2. **Layer 1 (file naming)** — 2 small spec edits, blocks everything else
3. **Layer 2 (`/mvl+` command)** — new command file with state table
4. **Layer 3 (`/innovate` update)** — multi-input + reconciliation + optional recursion
5. **Layer 4 items** — defer to own SIC loops when ready

Layers 1-3 are achievable in one session after Layer 0's manual run. Layer 4 items each warrant their own inquiry.

## Reasoning

**User override on Innovation #1 (evolve `/mvl`):** Innovation proposed evolving `/mvl` in-place rather than creating `/mvl+`, arguing that the extended_mvl_architecture finding's "orchestration IS the MVL evolving" implies unification, not splitting. Critique accepted this as philosophically strong. But the user overrode with a pragmatic constraint: "we don't know if mvl+ will cause regression." Regression protection is a higher-priority concern than philosophical consistency at this stage. The user's reasoning is valid — an evolved `/mvl` that introduces bugs affects ALL inquiries, including existing completed ones that might be resumed. A separate `/mvl+` isolates risk. Classic remains a known-good fallback. Once `/mvl+` is proven stable through 10+ runs, consolidation can happen (as a Baldwin cycle). The philosophical argument doesn't disappear — it DEFERS.

**Two commands coexist for now.** The user's constraint resolves sensemaking's original ambiguity in favor of the two-command resolution with a specific rationale (regression protection). `/mvl+` is the new command; `/mvl` stays unchanged. This is the clean path.

**`_state.md` flow-type field survives even with two commands.** Critique considered whether the field is needed (since commands know their own flow). It survives because: (a) it allows `/mvl+` to verify it's not being invoked on a classic inquiry, (b) it enables future cross-inquiry analytics (count of classic vs extended runs), (c) low cost to add. The field is useful verification even when commands are separate.

**Reconciliation as mini-sensemaking survives as pattern reuse.** Critique's concern — that this blurs discipline boundaries — was resolved: reconciliation isn't invoking `/sense-making` as a discipline; it's applying the ambiguity-collapse PATTERN at a new target (contradictions across E/D/S). No discipline recursion risk. Pattern reuse is legitimate.

**System-wide file-naming convention refined to direct edits.** Innovation proposed a shared rule. Critique pushed back: YAGNI for 2 commands. Compromise: modify `/explore` and `/decompose` directly now. Note the pattern as an inline comment. Extract to shared convention when a 4th discipline needs it. Avoids premature abstraction.

**Example showcase (Layer 0) survives with caveat.** Innovation proposed test-in-practice before codifying. Critique worried about delays if gaps trigger re-runs. Caveat resolves this: only use a real question we'd run anyway. Zero extra cost, high learning yield. The next inquiry becomes the showcase.

**State table survives for readability.** RESUME logic with 7+ states is table territory. Prose would require readers to mentally reconstruct the table. Write it once; save everyone the effort.

**Classic flow as subset killed (with Innovation #1).** User override makes classic PARALLEL to extended, not hierarchical. They're two separate mechanisms now.

**Per-discipline skip with justification killed for Level 0-2.** Critique's insurance-erosion argument: at Level 0-2, human judgment about "is this problem well-scoped enough to skip E/D?" is UNRELIABLE — that's why we're collecting data to train Level 3+. Relying on the same unreliable judgment to decide when skipping is safe defeats the insurance purpose. The training-data argument (every skip is a Level 3+ signal) doesn't outweigh the corruption of the insurance at Level 0-2. Seed: revisit at Level 3+ when the system has calibration data.

**Dry-run mode killed for now (YAGNI).** Adds a flag for a debugging need that hasn't materialized. Revisit if state-machine debugging becomes painful in practice.

**Git terminology refined to optional documentation aid.** Use where it helps; don't force.

**Make-style reruns and migration path refined to frontier.** Both useful in specific scenarios that don't exist yet. Named; not built.

**Scope discipline (Layers 1-3 only) survives.** Essential to prevent Layer 4 creep. Layer 4 items each deserve their own SIC loops precisely because they're open design questions with multiple viable paths.

**The after-10-runs checkpoint is a principle, not a magic number.** The instrumental-rigidity logic from extended_mvl_architecture: collect data, then refine based on empirical signal. 10 is a placeholder.

## Open Questions

- **Reconciliation output section format in `innovation.md`** — what's the exact template? How does it distinguish "resolved" from "open" contradictions? Minor spec detail, resolve during implementation.
- **State table exact columns and rows** — the table above is a first draft. Refine during `/mvl+` spec writing.
- **Flow-type field placement in `_state.md`** — top-level section or inline? Minor design detail.
- **When does `/mvl+` read `_state.md`'s flow-type** — at every invocation or just RESUME? Probably RESUME only (NEW always creates extended).
- **Layer 0 showcase: which question?** — the next real inquiry by chronological order. Literally the next `/MVL "..."` that gets invoked. Don't delay to find a "good" showcase question.
- **Recursion UX (Layer 4)** — own SIC loop. Options: human pushes button; `/innovate` auto-recurses internally; MVL orchestrator detects and instructs.
- **Telemetry-anomaly definition (Layer 4)** — own SIC loop. Requires empirical data from Layers 1-3 first.
- **Self-improvement observation mechanism (Layer 4)** — own SIC loop. Depends on telemetry-anomaly definition.
- **When to extract file-naming convention to shared rule** — when the 4th discipline needs it. Not scheduled; waiting for the trigger.
- **When to consolidate `/mvl+` and `/mvl`** — after 10+ successful extended runs with no regression. Baldwin cycle candidate. Don't plan; let empirical signal trigger.
- **Per-discipline skip revisit (Level 3+)** — when the system has pattern data, skip-with-justification becomes a Level 3+ capability. Own SIC loop then.
- **Mistake-based shape classification (Level 3+)** — deferred from discipline_architecture and extended_mvl_architecture. When orchestration starts making selection decisions, this becomes the mechanism.
