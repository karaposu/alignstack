name: MVL+
description: Run the Extended Cognitive Loop (Exploration → Sensemaking → Decomposition → Innovation → Critique) on any question. Always the full pipeline. If the question isn't answered, loop again.

# /MVL+ — The Extended Cognitive Loop

Run Exploration → Sensemaking → Decomposition → Innovation → Critique on any question. Always the full pipeline. No classification. No variable pipelines. Each step feeds the next. If the question isn't answered after C, loop again with a refined focus.

This is the extended form of the cognitive loop. `/mvl` (classic) runs only S → I → C. `/mvl+` adds Exploration (map territory) and Decomposition (partition complexity) to the first phase. Use `/mvl+` as the default for new inquiries; use `/mvl` classic for simple well-defined problems when speed matters.

## Additional Input/Instructions

$ARGUMENTS

---

## Instructions

### If NEW (input is a question or description):

1. Read the question fully. Restate it clearly in one sentence.

2. Create the inquiry folder: `devdocs/inquiries/<slugified_name>/`

3. Write `_branch.md`:
   ```markdown
   # Branch: [name]
   ## Question
   [the question, stated clearly in one sentence]
   ## Goal
   [what would a good answer look like? what would the user be able to DO with the answer?]
   ## Scope Check
   [compare the question's scope to the goal's requirements. Does the question, if answered perfectly, cover everything the goal asks for? If YES: "Question covers goal." If NO: "Question covers goal: NO — goal includes [X, Y] but question only addresses [Z]. Consider widening to: [proposed wider question]."]
   ```
   If the scope check flags a gap, present the proposed wider question to the user before proceeding. The user decides whether to widen or keep the original scope.

4. Write `_state.md`:
   ```markdown
   # State: [name]
   ## Flow-type
   extended
   ## Pipeline
   E → S → D → I → C (always)
   ## Progress
   - [ ] Exploration
   - [ ] Sensemaking
   - [ ] Decomposition
   - [ ] Innovation
   - [ ] Critique
   ## Iteration
   1
   ## Status
   ACTIVE
   ## Next Command
   /explore devdocs/inquiries/[name]/_branch.md
   ## Relationships
   [Add if applicable. Omit section if standalone.
   - CONTINUES FROM: folder_name (context)
   - SUPERSEDED BY: folder_name (reason)
   - RELATED: folder_name (connection)]
   ## History
   - [date]: Created. Question: [one-line summary]
   ```

5. Present:
   ```
   Extended loop created: devdocs/inquiries/[name]/
   Pipeline: E → S → D → I → C
   Question: [restated clearly]
   Goal: [what a good answer looks like]

   Next, run:
   /explore devdocs/inquiries/[name]/_branch.md
   ```

**Done. Wait for user to run the exploration command.**

---

### If RESUME (input is a folder path):

1. Read `_state.md` and `_branch.md` from the folder.

2. Verify `flow-type: extended` in `_state.md`. If the field is `classic` or absent, this inquiry belongs to `/mvl`, not `/mvl+` — flag to the user and stop.

3. Check what exists and determine the next step. The flow is strictly sequential: E → S → D → I → C.

   **a. No `exploration.md`** → Exploration hasn't run yet.
   ```
   Next, run:
   /explore devdocs/inquiries/[name]/_branch.md
   ```

   **b. `exploration.md` exists, no `sensemaking.md`** → Exploration is done.
   Read the exploration output. Check the telemetry section (Saturation Indicators). If anything looks thin or concerning — flag it to the user with a specific note. Otherwise:
   ```
   Exploration complete.
   Next, run:
   /sense-making devdocs/inquiries/[name]/_branch.md
   ```

   **c. `exploration.md` + `sensemaking.md` exist, no `decomposition.md`** → Sensemaking is done.
   Read the sensemaking output. Check telemetry. Flag concerns. Otherwise:
   ```
   Sensemaking complete.
   Next, run:
   /decompose devdocs/inquiries/[name]/_branch.md
   ```

   **d. `exploration.md` + `sensemaking.md` + `decomposition.md` exist, no `innovation.md`** → Decomposition is done.
   Read the decomposition output. Check telemetry. Flag concerns. Otherwise:
   ```
   Decomposition complete.
   Next, run:
   /innovate devdocs/inquiries/[name]/
   ```
   (Note: `/innovate` reads all three first-phase outputs — exploration.md, sensemaking.md, decomposition.md — when invoked on an extended inquiry folder.)

   **e. `innovation.md` exists, no `critique.md`** → Innovation is done.
   Read the innovation output. Check the telemetry section (Mechanism Coverage). If coverage looks thin — flag it. Otherwise:
   ```
   Innovation complete.
   Next, run:
   /td-critique devdocs/inquiries/[name]/
   ```

   **f. All five exist** → Iteration complete. Go to ITERATION COMPLETE below.

4. Update `_state.md`: check off completed steps, set next command.

**Done. Wait for user to run the next discipline command.**

---

### If ITERATION COMPLETE (all five files exist):

Read the critique output. Answer three questions:

**1. What survived?**
List the surviving ideas/approaches from critique's verdicts. What was killed? What was refined?

**2. Is the original question answered?**
Re-read `_branch.md`'s question and goal. Does a clear survivor exist that addresses the question and meets the goal? Be honest — a partial answer is not a full answer.

- **YES — the question is answered:**

  Write `finding.md` in the inquiry folder. Read all six files (`_branch.md`, `exploration.md`, `sensemaking.md`, `decomposition.md`, `innovation.md`, `critique.md`) and produce the finding as a single argumentative document.

  Write for a reader who has NOT seen the loop output — someone who just joined the project and needs to understand: what was the question, what's the answer, why this answer over the alternatives, and what's still open. Do not compress. Explain fully even if finding is long. The test: can someone read ONLY `finding.md` and understand the complete decision?

  Use this structure:

  ```markdown
  ---
  status: active
  ---
  # Finding: [inquiry name]

  ## Question
  [From _branch.md — the question and goal]

  ## Finding
  [The answer. Base on critique's "The Answer" or assembly
   verdict. Enrich with innovation's Assembly design,
   sensemaking's SV6 understanding, exploration's territorial
   map, and decomposition's coupling structure. Must be
   complete, self-contained, non-compact.]

  ## Reasoning
  [Why this finding over alternatives. Include:
   - Every KILL from critique with prosecution reasoning
   - Every KILL from innovation with rejection reasoning
   - Every SURVIVE with why it held
   - Contradictions reconciled across exploration/sensemaking/
     decomposition (and how they were resolved)
   Significant kills: full explanation of what was proposed
   and why it was rejected. Trivial kills: brief mention.
   Show the full field of what was considered.]

  ## Open Questions
  [Collect frontier questions from all five loop output files
   where relevant. Include REFINE candidates from innovation
   (deferred, not killed). Deduplicate.]
  ```

  After writing, verify coverage:
  - Every critique KILL is in Reasoning
  - Every critique SURVIVE is reflected in Finding
  - Open Questions draws from all five files where relevant

  For multi-iteration inquiries: Finding reflects the FINAL iteration's answer. Prior iterations' lessons go in Reasoning as context.

  Then:
  - Archive: move `exploration.md`, `sensemaking.md`, `decomposition.md`, `innovation.md`, `critique.md` to `docarchive/` subfolder
  - Update `_state.md`: Status → COMPLETE, append to History
  - Print in conversation: brief summary (the question + one-sentence answer + file path). Not the full finding.
  - Check `_state.md` for `## Relationships` and print post-completion pointers:
    - If CONTINUES FROM exists: `"This finding is ready for [parent_name] ([context]). Finding: [one-sentence answer]. Resume: /MVL+ devdocs/inquiries/[parent_name]/"` (use `/MVL` if parent's flow-type is classic)
    - If RELATED exists: `"Related: [name] ([context]) — this finding may affect it."`
    - If no relationships: nothing additional.

- **NO — the question is not fully answered:**
  ```
  ## Iteration [N] Complete — Not yet answered

  ### What we learned
  [What this iteration revealed — what survived, what was killed, what gaps remain]

  ### The gap
  [What specific aspect of the question remains unanswered?
   What did critique reveal is missing?]

  ### Next iteration focus
  [Restate the question with a NARROWER focus based on the gap.
   This becomes the seed for the next E → S → D → I → C pass.]
  ```

  Update `_state.md`:
  - Increment iteration
  - Reset progress checkboxes (all 5)
  - Set next command: `/explore devdocs/inquiries/[name]/_branch.md` (with the refined focus noted in history)
  - Append to History: what happened this iteration, what the gap is, what the next focus is

  ```
  Iteration [N] complete. Question not fully answered.
  Gap: [what's missing]
  
  Next iteration will focus on: [refined question]
  Run: /explore devdocs/inquiries/[name]/_branch.md
  ```

  If this iteration produced multiple survivors, frontier questions, or branching possibilities, suggest:
  ```
  Multiple directions emerged. For a full possibility map, run:
  /navigate devdocs/inquiries/[name]/
  ```

**3. Does the answer advance the goal?**
If the question IS answered but the answer doesn't advance the goal stated in `_branch.md` — note this. The answer might be technically correct but practically useless. Flag it for the user.

**4. Observation (optional)**
```
Any observation about this run? (optional — skip if nothing comes to mind)
```
If the user provides one, append to `devdocs/improvement_observations.md`:
```
## [date] | [problem from _branch.md] | [iteration count]
[the user's observation]
```
If the user skips, move on. No gate. No requirement. Observations accumulate over time. When patterns emerge across multiple observations, the user can run `/MVL+ "review improvement observations and propose spec changes"` — the loop on the system's own feedback.

---

## Cross-Session Resume

```
/MVL+ devdocs/inquiries/[name]/
  → Reads _state.md (verifies flow-type: extended)
  → Sees where you left off
  → Tells you what to run next
```

`_state.md` has everything needed to resume. Any session, any AI.

---

## Rules

1. **Always E → S → D → I → C.** Every question gets the full loop. No shortcuts. No variable pipelines. Strict sequence in the first phase (Exploration, then Sensemaking, then Decomposition) before Innovation and Critique.
2. **Each step saves to the inquiry folder.** Point discipline commands at files in the folder — output saves alongside with the discipline's canonical name (`exploration.md`, `sensemaking.md`, `decomposition.md`, `innovation.md`, `critique.md`).
3. **`_state.md` is the source of truth.** Progress, iteration count, history, next command, flow-type.
4. **If the question isn't answered, loop again.** Each iteration narrows the focus based on what the previous iteration revealed.
5. **The human reviews between every step.** The human can redirect, re-run, or override at any point. The loop suggests — the human decides.
6. **Failures are data.** If the loop produces a bad answer, the WHERE and WHY of the failure is valuable — it reveals what needs to improve in the discipline configurations (the specs).
7. **Classic `/mvl` is UNCHANGED.** This command (`/mvl+`) is separate and coexists with classic. Existing classic inquiries resume with `/mvl`, not `/mvl+`. The `flow-type` field in `_state.md` distinguishes them.
