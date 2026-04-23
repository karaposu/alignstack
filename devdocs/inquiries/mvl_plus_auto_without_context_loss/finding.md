---
status: active
---
# Finding: MVL+ Auto-Chain Without Context Loss

## Question

Can `/MVL+` (the extended cognitive loop that runs five thinking disciplines — Exploration, Sensemaking, Decomposition, Innovation, Critique — sequentially on a question) be run end-to-end without the user manually typing each discipline command between steps, while preserving the context richness that same-session manual runs provide and keeping each discipline at full specification depth? No subagents.

**Goal:** A concrete approach the user can adopt or reject on informed grounds, understanding what "preserving context" operationally requires and what it costs.

## Finding Summary

- **The question contains a false coupling.** Context preservation and auto-chaining are independent variables — same-session execution inherently preserves all context (including the richest form, "warm reasoning" from having generated prior outputs) regardless of whether disciplines are invoked via manual slash commands or auto-executed. The concern that auto-chaining might sacrifice context is structurally unfounded.
- **The surviving design is a single behavioral change to the MVL+ command spec:** rewrite it from a "router" (tells the user what to type next) to an "executor" (runs disciplines continuously with informational checkpoints between each). No new commands, no new infrastructure, no new concepts.
- **Checkpoints are informational displays, not pause gates.** Between each discipline, the executor displays a 2-3 line telemetry summary — then immediately continues to the next discipline without waiting for user input. The user can always interrupt mid-response if they want to redirect.
- **Telemetry-based quality display replaces mandatory manual command entry** as the quality mechanism between disciplines. This is structurally superior to the current design: checkpoints surface specific quality signals (perspective saturation, mechanism coverage, landscape stability) while manual command typing surfaces none.
- **One caveat:** the checkpoint content is load-bearing for LLM attention re-orientation. It must explicitly name the completed discipline, key metrics, and the next discipline — this re-focuses the model's attention when prior output is long. Trivializing the checkpoint (e.g., just "Continuing...") would lose this re-orientation benefit.
- **Cost:** Potentially zero intermediate user inputs. Discipline outputs are saved to files via tool calls (Write tool), which do not count against the response output token limit. The conversation-visible output per discipline is only the checkpoint telemetry (~200-500 tokens). A full E→S→D→I→C iteration produces ~1,000-2,500 tokens of conversation text — well within response limits. The model can run all five disciplines in a single response.

## Finding

### 1. The False Coupling: Why Context Preservation Is Not At Risk

The original question assumed tension between auto-chaining and context preservation — that skipping manual steps might sacrifice the reasoning richness that carries between disciplines. Investigation revealed three distinct layers of "context":

**Layer A — Conversational context (LLM working memory).** Everything in the current conversation: user messages, tool results, prior outputs, system instructions. This is automatically preserved when disciplines run in the same session. The invocation method (slash command vs. auto-execution) does not affect it.

**Layer B — File context (persistent artifacts).** The saved discipline outputs (`exploration.md`, `sensemaking.md`, etc.). These are always written to the inquiry folder regardless of invocation method. Both manual and auto-chain produce identical files.

**Layer C — Warm reasoning (emergent inference).** When the LLM runs Sensemaking immediately after generating Exploration output, it has implicit access to reasoning paths, tensions, and hunches that didn't make it into the saved exploration file. This is richer than cold-reading the same file in a new session. This layer exists only in same-session execution.

**The critical finding:** Layer C — the richest and most valuable form of context — is automatically preserved by any same-session execution, whether manual or auto-chained. It is a property of session continuity, not invocation method. The false coupling is: the user assumed auto-chaining might break Layer C, but Layer C depends on "same session," not on "manual command entry." Auto-chaining within the same session preserves all three layers identically to manual execution.

### 2. Why Output Limits Are Not A Constraint

An earlier version of this finding assumed that the response output token limit would force the model to stop mid-iteration, requiring user input to continue. This was wrong.

**Discipline outputs go to files, not to the conversation stream.** Each discipline saves its full output (3,000-10,000 tokens) via the Write tool to the inquiry folder (`exploration.md`, `sensemaking.md`, etc.). Tool calls and their content do not count against the response output token limit. The response limit applies only to conversation-visible text — what the user sees streaming in the terminal.

The conversation-visible output per discipline is minimal:
- Checkpoint telemetry display: ~50-100 tokens (2-3 lines)
- Skill tool invocation: not counted (tool call)
- Write tool for saving: not counted (tool call)
- Brief transition text: ~50-100 tokens

Total conversation-visible output for a full E→S→D→I→C iteration: **~1,000-2,500 tokens**. This is far below any response output limit.

**Practical implication:** The model can run all five disciplines in a single response. The user types `/MVL+` with a question, and receives back one response containing: five discipline executions (saved to files), five checkpoint displays (in the conversation), and the iteration-complete assessment — potentially including the finding. Zero intermediate user inputs required.

### 3. The Design: MVL+ as Executor With Checkpoint Preambles

The design changes one thing: MVL+'s behavior at discipline boundaries. Currently, after each discipline completes, MVL+ prints "Next, run: `/sense-making devdocs/inquiries/X/_branch.md`" and stops. The user must type that exact command.

**The change:** After each discipline completes, MVL+ displays an informational checkpoint and immediately continues to the next discipline — no pause, no waiting for user input.

**The checkpoint-as-display pattern:** Between disciplines, the output includes:

```
── Checkpoint ──────────────────────────────────
Exploration complete.
  Cycles: 6 | Probed: 4 | Confirmed regions: 3 | Frontier: stable
Proceeding to Sensemaking...
────────────────────────────────────────────────
```

Then immediately runs the full Sensemaking process (SV1-SV6, all perspectives, all ambiguity collapse — no compression). No pause between — the checkpoint is a display within the continuous output stream.

**User steering:** The user can interrupt the response at any time if they want to redirect ("wait — focus on security" or "that exploration was thin, re-run it"). If the user doesn't interrupt, the model runs all five disciplines to completion in a single response — discipline outputs go to files (not conversation text), so response output limits are not a constraint.

### 4. Why This Is Superior to Manual Mode

The current manual mode has an unexamined assumption: that requiring the user to type a command between disciplines serves as a quality review point. Investigation found this is not reliable — many users type the next command immediately without reviewing the output. The command entry is mechanical friction, not cognitive engagement.

The checkpoint design replaces this with **structured telemetry** — specific quality metrics extracted from the discipline's actual output and presented in 2-3 lines. This gives the human a meaningful signal to act on ("anchor diversity is low" is actionable information; typing `/sense-making path/to/file` is not).

Each discipline already defines its own telemetry in its specification:
- **Exploration:** frontier stability, discovery rate, confidence distribution
- **Sensemaking:** perspective saturation, SV delta, ambiguity resolution ratio, anchor diversity
- **Decomposition:** independence, completeness, reassembly (self-evaluation dimensions)
- **Innovation:** generator/framer coverage, convergence signal, survivors tested
- **Critique:** dimension coverage, adversarial strength, clean SURVIVE existence, landscape stability

The checkpoint extracts and normalizes these into a consistent 2-3 line summary. No new metrics are invented — the disciplines already produce the data.

### 5. The Load-Bearing Caveat: Checkpoint Content as Re-Orientation

The adversarial critique identified one genuine concern: in long conversations (after 4 disciplines have produced 15-30K tokens of output), the LLM's attention to precise spec-following may weaken — not from token limits, but from the well-known pattern of instruction-following fidelity decreasing when instructions are distant from the generation point.

However, critique also established that this risk is **equally present in manual mode** (the conversation history contains the same accumulated output regardless of invocation method). And the checkpoint-as-preamble pattern provides a mitigation that manual mode lacks: the explicit re-orientation ("Sensemaking complete. Now running Decomposition...") forces the LLM to re-focus on the current discipline at the start of each response.

This means the checkpoint content is **load-bearing** — it serves a dual purpose:
1. Informing the human (telemetry summary)
2. Re-orienting the LLM (discipline name + what's next)

Trivializing the checkpoint to just "Continuing..." would lose the re-orientation benefit. The checkpoint must name: what completed, key telemetry, what's next.

### 6. Implementation: What Changes In The MVL+ Spec

The change is to the `/MVL+` command specification (`commands/MVL+.md`), not to any discipline spec. Disciplines are unchanged — they run their full processes identically.

**Changes to MVL+ NEW flow:**
- After creating the inquiry folder and `_branch.md`/`_state.md`, instead of printing "Next, run: /explore..." and stopping → present the initial setup, then immediately begin Exploration and continue through all five disciplines to completion (or iteration-complete assessment)

**Changes to MVL+ RESUME flow:**
- After reading `_state.md` and determining the next discipline, instead of printing "Next, run: /X..." → execute the discipline directly and continue through all remaining disciplines to completion

**Changes to `_state.md` format:**
- "Next Command" field changes from `/sense-making devdocs/inquiries/X/_branch.md` (a user instruction) to `Sensemaking` (a directive the LLM interprets and executes)
- This also enables cross-session resume: a cold session reads `_state.md`, sees "Next: Sensemaking", and executes it — no user command-path knowledge needed

**Changes to spec loading (refined by `devdocs/inquiries/skill_invocation_in_auto_chain/finding.md`):**
- Before each discipline: invoke the Skill tool (`Skill(skill: "<discipline>", args: "<path>")`) to load the spec with system-directive authority
- If Skill fails: fall back to Read tool on the command file
- If Read fails: HALT and tell the user to load manually
- Never execute from memory alone — this is the "pantomime" risk the skill invocation finding identified

**What does NOT change:**
- Discipline specifications (all unchanged)
- File saving (same inquiry folder structure)
- Output format (identical to manual runs)
- Output depth (full spec process for every discipline)
- Iteration-complete logic (finding writing, re-loop decision)
- Classic `/MVL` (unchanged — flow-type field distinguishes)
- Standalone discipline use (`/sense-making` on its own still works as before)

### 7. What It Costs

| Cost | Magnitude | Notes |
|---|---|---|
| User input per iteration | Zero (potentially) | Discipline outputs go to files via Write tool, not conversation text. All 5 disciplines fit in one response. User can interrupt anytime to redirect. |
| MVL+ spec rewrite | ~1 hour of editing | Behavioral change to NEW and RESUME sections |
| `_state.md` format change | Trivial | "Next Command" field wording |
| New inquiries using old MVL+ | None | Old inquiries resume normally; new inquiries get auto-chain |
| Risk of depth degradation | Same as manual mode | Mitigated by checkpoint re-orientation (which manual mode lacks) |

## Next Actions

### MUST

- **What:** Rewrite the MVL+ command spec (`commands/MVL+.md`) NEW and RESUME sections to execute disciplines continuously with informational checkpoint displays (no pauses) instead of printing "Next, run: ..."
- **Who:** Human (edits the command file)
- **Gate:** Before the next inquiry that would use MVL+
- **Why:** This is the entire implementation — the spec change IS the feature

- **What:** Include Skill tool invocation at each discipline boundary with Read-fallback chain (per `skill_invocation_in_auto_chain` finding)
- **Who:** Part of the MVL+ spec rewrite
- **Gate:** Same as above
- **Why:** Without Skill invocation, the AI may pantomime disciplines from memory rather than executing the full loaded spec

- **What:** Define the normalized checkpoint telemetry template (2-3 lines per discipline)
- **Who:** Can be done inline during the MVL+ rewrite, referencing each discipline's existing telemetry section
- **Gate:** Same as above — part of the spec rewrite
- **Why:** Checkpoints without telemetry are just "Continuing..." which loses the re-orientation benefit and the quality-display function

### COULD

- **What:** Add threshold logging to checkpoints (log telemetry values alongside thresholds for future calibration)
- **Who:** Add to MVL+ spec as an optional section
- **Gate:** After 5+ inquiries using the new auto-chain — enough data to start seeing patterns
- **Why:** Enables progressive threshold calibration; low cost, high future value

### DEFERRED

- **What:** Cross-session auto-chain (scheduled agent reads `_state.md` and resumes autonomously)
- **Gate:** When same-session auto-chain has been used for 10+ inquiries AND telemetry thresholds are calibrated from real usage
- **Why (if revived):** Enables inquiry execution without the human present — next step on the graduated autonomy path

## Reasoning

### Killed: Bundled Execution (2-3 disciplines per response)
Prosecution found a structural depth threat: output-length pressure within a single response forces abbreviation of later disciplines, with no mid-response re-orientation point. The assembly achieves similar friction reduction (pressing Enter is trivial) without this risk. Killed on depth preservation.

### Killed: Session Mode (no slash commands ever)
Prosecution found ambiguous intent detection: without an explicit `/MVL+` invocation, the LLM cannot reliably distinguish "start an inquiry" from "answer a quick question." The slash command costs 5 characters and provides unambiguous intent. Killed on feasibility and coherence.

### Killed: /loop-based driving
Innovation tested combining MVL+ with the `/loop` skill. `/loop` is designed for recurring same-task execution, not sequential different-task pipelines. Each discipline is a different operation. Forcing the pipeline into `/loop`'s model adds complexity without benefit. Killed on coherence.

### Killed: Hook-based chaining
Exploration found that Claude Code hooks run shell commands, not slash commands. Hooks cannot invoke `/sense-making`. Dead on architecture.

### Killed: Zero-input automation (revised understanding)
Originally killed on "turn-based model is absolute." Revised: the model does need user input between responses, but checkpoints don't need to be response boundaries. Multiple disciplines can run within a single response with checkpoints as informational displays. User input is needed only at natural response breaks (output limit reached), not at every discipline boundary. The original "5 inputs per iteration" was an overcounting — the actual minimum is 1-2 per iteration.

### Survived: The Assembly (executor with checkpoint-as-preamble)
Defense against the strongest prosecution (attention degradation): the attention load is identical in manual mode (same conversation history), and the preamble provides re-orientation that manual mode lacks. Passes all six evaluation dimensions. One non-critical caveat: checkpoint content must not be trivialized (it serves the load-bearing re-orientation function).

## Open Questions

### Monitoring
- After 5 inquiries with auto-chain: does discipline output depth measurably differ from manual-run baselines? Compare frontier question depth, SV delta, mechanism coverage across invocation modes.

### Refinement Triggers
- If checkpoint telemetry consistently fails to catch quality issues that the human notices during auto-chain runs (observable: human frequently overrides at checkpoints with "re-run" directives), the telemetry template needs refinement — add the missing signal.
- If output-per-response limits increase to 100K+ tokens, the bundled execution approach should be revisited (currently killed on depth preservation within response limits).
