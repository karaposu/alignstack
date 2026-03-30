# New Commands Needed

Commands to fill gaps in the agent toolkit. Each command should work both as a human-invoked slash command and as an agent-invoked tool.

---

## /key-questions

**Agent:** Task

**Purpose:** Before diving into work, surface the questions that actually matter for understanding the task. Not a generic interview — questions should be informed by the codebase context, the task description, and what's ambiguous or underspecified.

**How it works:**
1. Read the task input (desc.md, raw text, or elaborate output)
2. Read relevant codebase context
3. Identify what's unclear, ambiguous, or has multiple valid interpretations
4. Generate a ranked list of questions — most critical first
5. For each question, explain why it matters (what changes depending on the answer)

**Output:** A structured list of questions with impact annotations. Optionally saved to devdocs alongside the task.

**Why it's needed:** Task Agent needs to detect gaps in intent, depth, and scope before work begins. Without this, the agent proceeds on assumptions and discovers misalignment later. Key questions make unknowns explicit upfront.

---

## /decompose

**Agent:** Task

**Purpose:** Break a complex task into independent, manageable subtasks. Each subtask gets its own scope, can be worked on independently, and has clear boundaries.

**How it works:**
1. Read the task definition (desc.md or input)
2. Read relevant codebase to understand module boundaries and dependencies
3. Identify natural decomposition points — where can the work be split without tight coupling?
4. For each subtask, define: what it covers, what it depends on, what it produces, and its estimated complexity
5. Identify ordering constraints — which subtasks must happen before others

**Output:** A decomposition document listing all subtasks with dependencies and ordering. Each subtask should be small enough to be a single `/task-plan` input. Saved to devdocs alongside the parent task.

**Why it's needed:** Task Agent can't handle "Build GTA 7" as a single task. It needs to recognize depth and break it into pieces that Action-Set Agent can actually plan and implement. Without decomposition, the system either refuses large tasks or produces shallow plans that miss critical details.

---

## /imagine-feasible

**Agent:** Action-Space

**Purpose:** Explore approaches beyond known patterns. When the conventional action space is insufficient or the problem requires innovation, this command generates novel but feasible approaches by combining existing concepts in new ways.

**How it works:**
1. Read the task and understand what's been tried or what conventional approaches exist
2. Identify why existing approaches are insufficient (if they are)
3. Generate alternative approaches by:
   - Combining patterns from different domains
   - Relaxing constraints to see what becomes possible
   - Inverting assumptions (what if we did the opposite?)
   - Borrowing from analogous problems in other fields
4. For each approach, evaluate: feasibility, risk, novelty, and what it unlocks
5. Be honest about uncertainty — novel approaches have unknown risks

**Output:** A structured exploration of 3-5 alternative approaches, each with feasibility assessment. Not a decision — a menu of options for the human or Action-Set Agent to choose from. Saved to devdocs.

**Why it's needed:** Action-Space Agent's most important capability is recognizing when "nothing here works." But recognition without alternatives is a dead end. This command generates the alternatives. It's the creative complement to `/sense-making`'s analytical approach.

---

## /implement

**Agent:** Action-Set

**Purpose:** Execute an implementation plan — write the actual code. Takes a `step_by_step_plan.md` and turns it into working code, following the plan step by step.

**How it works:**
1. Read the confirmed `step_by_step_plan.md`
2. Read all relevant codebase files referenced in the plan
3. Execute each step in order:
   - Write/modify the specified files
   - Follow existing codebase conventions
   - After each step, verify the step's acceptance criteria if possible
4. Log what was done at each step — which files were touched, what changed, any deviations from the plan
5. If a step fails or encounters something unexpected, pause and report rather than forcing through

**Output:** The implemented code changes plus an implementation log documenting what was done at each step, any deviations from the plan, and any issues encountered. Log saved to devdocs alongside the plan.

**Why it's needed:** Without this, the system can plan but not build. Action-Set Agent needs an execution capability. The implementation log provides the audit trail that Coherence Agent and Outcome Agent consume to verify the work.

---

## /implement-partial

**Agent:** Action-Set

**Purpose:** Implement a subset of a plan to reduce complexity before tackling the full task. Instead of executing an entire step-by-step plan at once, pick specific subtasks or foundational pieces, implement them, and let the codebase absorb those changes. The remaining task becomes smaller, more focused, and more controllable.

**How it works:**
1. Read the `step_by_step_plan.md` (or decomposed subtask list)
2. Identify which pieces are:
   - Independent and self-contained (can land without the rest)
   - Foundational (other steps depend on them)
   - Low-risk (unlikely to need revision when the rest is built)
3. Present the candidates to the user (or Task Agent in autonomous mode) and confirm which to implement now
4. Implement only the selected pieces, following the same process as `/implement`
5. After implementation, update the plan — mark completed steps, note any changes to remaining steps caused by what was just built
6. Run `/verify` on the partial implementation to confirm nothing broke

**Output:** The implemented code changes, an updated plan with completed steps marked, and a brief summary of how the remaining work has changed (simpler? same? new considerations?). All saved to devdocs alongside the plan.

**Why it's needed:** Large tasks are risky when implemented all at once. Partial implementation is how experienced developers naturally manage complexity — land the data models first, then the API, then the UI. Each partial implementation:
- Shrinks the remaining problem
- Gives the Coherence Agent real code to check against (not just a plan)
- Creates checkpoints the team can review before continuing
- Reduces blast radius if something goes wrong — only the partial change needs reverting, not the whole feature

This is the difference between "deploy a 2000-line PR" and "deploy five 400-line PRs that each stand alone." The second approach gives more control at every step.

---

## /verify

**Agent:** Coherence, Outcome

**Purpose:** After changes are made, verify that the system still works and that nothing was broken. Runs probes, tests, and checks to confirm system integrity.

**How it works:**
1. Identify what changed (from git diff or implementation log)
2. Determine what could be affected by those changes (dependencies, imports, consumers)
3. Run existing tests if they exist
4. Run targeted probes on affected areas — not full test suites, focused checks on what matters
5. Check for: import errors, type mismatches, broken integrations, missing dependencies, runtime errors
6. Compare system state before and after changes

**Output:** A verification report listing what was checked, what passed, what failed, and what couldn't be checked. Saved to devdocs. Failures are flagged with severity and affected areas.

**Why it's needed:** Coherence Agent needs to *detect* breaks, not just predict them. `/critic` analyzes plans statically. `/verify` checks reality after implementation. This closes the loop — plan → implement → verify → correct.

---

## /compare-intent

**Agent:** Outcome

**Purpose:** Compare what was actually built against the original task description. Not "does the code work" but "does it do what was asked for." Catches the case where implementation is correct but doesn't match intent.

**How it works:**
1. Read the original `desc.md` (or task input)
2. Read the implementation — the actual code changes, the implementation log
3. For each item in the success criteria (from desc.md), evaluate: is it met, partially met, or not met?
4. Identify anything that was built but not requested (scope creep)
5. Identify anything that was requested but not built (gaps)
6. Produce an alignment score: what percentage of the original intent is fulfilled?

**Output:** An intent comparison report with per-criterion assessment, gaps, extras, and overall alignment score. Saved to devdocs alongside the task.

**Why it's needed:** Outcome Agent needs to answer "did we build what was asked?" not just "does the code run?" A feature can pass all tests and still be the wrong feature. This command catches that.

---

## /probe

**Agent:** Workspace, Coherence, Outcome

**Purpose:** Create and run small throwaway scripts that inspect actual runtime behavior — data flow, function outputs, state transitions, API responses, database queries. Probes are not tests. Tests verify correctness. Probes build understanding. They answer "what does this actually do?" not "does this do what it should?"

**How it works:**
1. Read the target area — a module, an endpoint, a data pipeline, a function chain
2. Identify what's unclear about its runtime behavior:
   - What data actually flows through it?
   - What shape/type do intermediate values have?
   - What happens at the boundaries (entry, exit, error)?
   - What side effects occur?
   - What order do things execute in?
3. Generate small, focused probe scripts that:
   - Call the real code with representative inputs
   - Log intermediate values, types, and state at key points
   - Trace the actual execution path
   - Capture timing, resource usage, and error behavior
4. Run the probes and document the findings
5. Probes are disposable — they exist to produce observations, not to be maintained

**Output:** A probe report documenting what was observed: actual data shapes, execution paths, timing, unexpected behaviors, and discrepancies between assumed and actual behavior. Saved to devdocs. Probe scripts can be kept temporarily or discarded after findings are documented.

**Why it's needed:** Three agents need runtime truth, not static analysis:
- **Workspace Agent** uses probes to understand what the code *actually does* vs what it appears to do from reading it
- **Coherence Agent** uses probes after changes to check if data flows still work as expected
- **Outcome Agent** uses probes to verify that built features behave correctly end-to-end

Static analysis (reading code) can be misleading — dynamic imports, runtime configuration, data-dependent branching, and framework magic all hide behavior. Probes reveal what actually happens when the code runs. This is the difference between reading a map and walking the terrain.

---

## /ask-help

**Agent:** Any

**Purpose:** Escalate to human with structured context. When an agent encounters something it can't resolve autonomously — ambiguity too large, risk too high, decision beyond its confidence — it pauses and asks for human input in a structured way.

**How it works:**
1. Describe what the agent was trying to do
2. Describe what went wrong or what's unclear
3. Present the options it sees (if any)
4. State what it needs from the human to proceed
5. Provide relevant file paths and context so the human can quickly understand the situation

**Output:** A structured help request printed in the conversation. Not saved to devdocs (it's a real-time interaction). The format is consistent so humans learn to read it quickly:

```
## Help Needed

**Agent:** [which agent]
**Layer:** [which alignment layer]
**Context:** [what was happening]
**Problem:** [what went wrong or what's unclear]
**Options I see:** [if any]
**What I need:** [specific question or decision needed]
**Relevant files:** [paths]
```

**Why it's needed:** Hybrid mode requires graceful escalation. Without a structured escalation format, agents either continue blindly (dangerous) or dump unstructured context on the human (useless). This command makes the handoff clean and fast.
