# Structural Sensemaking: What Mechanism Should Implement the Primitive Regression Checker?

## User Input
The Primitive Regression Checker (Layer 1 — immediate, deterministic structural checks) catches things that are broken: format violations, missing sections, removed safeguards, internal contradictions, deleted failure modes. Currently not built. The human does this informally. Question: what mechanism should check this? Is /reflect the right tool?

---

## SV1 — Baseline Understanding

Initial read: /reflect might seem like the right fit because it "looks backward at what happened." But /reflect runs AFTER a completed SIC loop, examining process quality. The Primitive RC needs to fire IMMEDIATELY — the moment output is produced or a spec is changed. These feel like different temporal positions.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

**C1 — Primitive RC is immediate.** It fires at T0 — the moment something is produced. Not after a cycle completes, not between iterations. DURING execution.

**C2 — Primitive RC is deterministic.** Binary pass/fail. No judgment, no hunch, no probability. Either the section exists or it doesn't. Either the failure mode was removed or it wasn't.

**C3 — Primitive RC checks structure, not quality.** It doesn't assess whether sensemaking was THOROUGH. It checks whether sensemaking HAS the required sections (ambiguity collapse, SV progression, etc.).

### Key Insights

**K1 — /reflect is the wrong temporal position.** /reflect is a Boundary discipline — it runs BETWEEN cycles, after C completes. Its description: "Examine a completed SIC run's process." It operates on completed work, not on in-progress output. Primitive RC needs to fire during the pipeline, not after.

**K2 — /reflect examines process quality, not structural correctness.** /reflect asks "was prosecution strong enough?" and "did S miss a perspective?" — these are QUALITY judgments (Predictive RC territory). Primitive RC asks "does the output HAVE a prosecution section?" — a structural check. Different signal types.

**K3 — The loop runner already has a discipline boundary.** MVL/MVL+ runs disciplines sequentially with checkpoints between them. The checkpoint is the NATURAL location for structural checks — it already fires between each discipline. Adding structural validation to the checkpoint is an extension, not a new mechanism.

**K4 — Telemetry reading IS a form of Primitive RC.** The "telemetry reading" improvement from the next_implementation_priority inquiry (checking if discipline output has telemetry fields, if they meet thresholds) is exactly a Primitive RC check. It's structural: "does the telemetry section exist?" and "does anchor diversity > 0?"

**K5 — Spec-change checking has a different trigger.** When a discipline SPEC is edited (like the recent MVL/MVL+ rewrites), the check isn't at a pipeline boundary — it's at a git commit or file-save event. This is a different trigger than the discipline-output check.

### Structural Points

**S1 — Two distinct triggers for Primitive RC:**
- **Discipline output:** fires when a discipline produces output during a pipeline run → natural home is the loop runner checkpoint
- **Spec change:** fires when a discipline spec is edited → natural home is a pre-commit check or a Claude Code hook

**S2 — /reflect operates at a different abstraction level.** /reflect is second-order (process observation). Primitive RC is first-order (structural verification). They're different operations at different levels.

### Foundational Principles

**F1 — Each mechanism should fire at its natural trigger point.** Don't run a between-cycles tool for a during-cycle check.

**F2 — Deterministic checks should be automated, not discipline-driven.** A discipline involves LLM reasoning. Primitive RC is binary pattern-matching — it doesn't need LLM reasoning, it needs checklist verification.

### Meaning-Nodes

**M1 — Primitive RC is not a discipline. It's infrastructure.**

---

## SV2 — Anchor-Informed Understanding

/reflect is structurally the wrong mechanism — it fires at the wrong time (after cycle, not during), examines the wrong thing (process quality, not structural correctness), and operates at the wrong level (second-order observation, not first-order verification). Primitive RC is infrastructure that lives in the loop runner and in commit-time checks, not in a discipline.

---

## Phase 2 — Perspective Checking

### Technical/Logical

Two implementation paths match the two triggers:

**For discipline output checks:** Extend the MVL/MVL+ checkpoint step. Currently checkpoints display telemetry. Add: before displaying telemetry, validate structural requirements. Each discipline has known structural requirements (sensemaking must have SV1-SV6, ambiguity collapse, etc.; innovation must have generator+framer coverage; critique must have prosecution+defense+verdict). The loop runner checks these and flags violations before proceeding.

**For spec-change checks:** Claude Code hooks. Hooks run shell commands in response to events (like tool calls). A hook on Write events to `commands/*.md` could run a structural diff check. But hooks run shell commands, not slash commands — so the check would need to be a script, not a discipline.

New anchor: **The mechanism is split across two locations — loop runner for output, hooks/scripts for spec changes.**

### Human/User

The user currently eyeballs both. For output checks during a pipeline run, interrupting to say "this sensemaking has no ambiguity collapse" is costly — the user has to read the full output. Automating this in the loop runner would catch it automatically.

For spec changes, the user is the one making the edit. They already know what they changed. A post-edit structural check catches what they DIDN'T notice — accidental deletions, format breaks.

New anchor: **Both checks serve the same purpose: catching what the human didn't notice. But during-pipeline checks are higher value because the human CAN'T read full discipline output in real-time during auto-chain.**

### Definitional/Consistency

Does this conflict with the discipline taxonomy? Check: the taxonomy has 4 categories (Core, Cross-cutting, Boundary, Situational). Primitive RC doesn't fit any:
- Not Core (not a pipeline-sequential cognitive operation)
- Not Cross-cutting (not a cognitive discipline invokable at multiple points)
- Not Boundary (not between-cycle observation or direction)
- Not Situational (not a specialized cognitive tool)

This confirms: **Primitive RC is infrastructure, not a discipline.** It belongs in the loop runner and in project-level automation, not in the discipline taxonomy.

### Risk/Failure

Risk: if the loop runner checks structure and finds a violation, what happens? Options:
- **HALT** — stop the pipeline, ask the user to fix it. Too disruptive for auto-chain.
- **FLAG and continue** — display a warning in the checkpoint, continue to next discipline. The user can interrupt if the flag is serious.
- **Auto-retry** — re-run the discipline with a "you missed the ambiguity collapse section" instruction. Ambitious but feasible.

New anchor: **FLAG and continue is the right default. Matches the checkpoint-as-informational-display pattern already established in auto-chain.**

---

## SV3 — Multi-Perspective Understanding

Major reframing: this isn't a "which discipline?" question at all. Primitive RC is infrastructure that lives in two places:
1. The loop runner checkpoint (for discipline output during pipeline runs)
2. Project-level automation like hooks or scripts (for spec changes)

/reflect is definitively the wrong tool — wrong time, wrong abstraction level, wrong signal type.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity: Is Primitive RC a discipline or infrastructure?

**Resolution:** Infrastructure. It's deterministic binary checking — no LLM reasoning needed. It belongs in the loop runner and in automation, not in the discipline taxonomy.

**What is now fixed:** Primitive RC lives in MVL/MVL+ (for output checks) and in hooks/scripts (for spec changes). Not in /reflect. Not as a new discipline.

**What is no longer allowed:** Treating Primitive RC as a discipline. Proposing a `/check` or `/validate` discipline.

**What now depends on this choice:** The implementation path — edit MVL/MVL+ to add structural validation at checkpoints, and optionally add hooks for spec-change checks.

**What changed:** The question shifted from "which discipline?" to "which infrastructure component?"

### Ambiguity: What should happen when a violation is found?

**Resolution:** FLAG and continue. Display the violation in the checkpoint telemetry. The user can interrupt to fix it. The pipeline doesn't halt automatically.

**What is now fixed:** Violations produce warnings, not stops.

**What is no longer allowed:** Auto-halting the pipeline on structural violations. Also: silently ignoring violations.

**What now depends on this choice:** The checkpoint display format — it needs to show structural violations alongside telemetry metrics.

**What changed:** The checkpoint display gains a new responsibility — not just telemetry summary but also structural validation results.

---

## SV4 — Clarified Understanding

Primitive RC is loop-runner infrastructure, not a discipline. It extends the existing checkpoint mechanism in MVL/MVL+. For spec-change checks, it's project-level automation (hooks or scripts). /reflect is the wrong tool entirely — different time, different purpose, different signal type.

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed:
- Primitive RC is infrastructure, not a discipline
- Output checks live in MVL/MVL+ checkpoints
- Spec-change checks live in hooks/scripts
- Violations are flagged, not halted on
- /reflect is not involved

### Eliminated:
- /reflect as the Primitive RC mechanism
- A new `/validate` or `/check` discipline
- Auto-halting on violations
- Auto-retry on violations (too ambitious for first build)

### Remaining viable path:
Extend MVL/MVL+ checkpoint step to include structural validation:
1. After each discipline saves output, before displaying checkpoint telemetry
2. Check the saved file against known structural requirements for that discipline
3. If violations found: include them in the checkpoint display as warnings
4. Continue to next discipline regardless

Each discipline's structural requirements would be a short checklist — not the full spec, just the required sections and fields. These could be defined inline in MVL/MVL+ or in a reference file.

---

## SV5 — Constrained Understanding

The solution is narrow and concrete: add structural validation to the existing MVL/MVL+ checkpoint step. No new commands, no new disciplines, no new infrastructure. Just an extension of the checkpoint that already fires between disciplines.

For spec changes: optionally add Claude Code hooks that run basic structural checks when files in `commands/` are written. Lower priority than the in-pipeline checks.

---

## SV6 — Stabilized Model

**Not /reflect.** /reflect is a Boundary discipline that examines completed SIC runs for process quality — it's second-order, after-the-fact, and judgment-based. Primitive RC is first-order, immediate, and deterministic. They're fundamentally different operations.

**Primitive RC is loop-runner infrastructure.** It belongs in the MVL/MVL+ checkpoint step — the same place where telemetry reading was already identified as needed. In fact, telemetry reading and structural validation are both aspects of the same checkpoint enhancement:
- **Structural validation:** "Does this output have the required sections?" (Primitive RC)
- **Telemetry reading:** "Do the metrics in those sections meet thresholds?" (Partially Primitive RC, partially Predictive RC)

Both fire at the same point (between disciplines), both produce the same type of output (checkpoint warnings), and both follow the same pattern (flag and continue).

**For spec changes:** Optionally, Claude Code hooks on Write events to `commands/*.md` or `enes/*.md` that run basic structural diff checks. These catch accidental deletions when the human edits specs.

**How SV6 differs from SV1:** SV1 suspected /reflect was wrong but wasn't sure why. SV6 explains precisely: wrong temporal position (after-cycle vs during-cycle), wrong signal type (process quality vs structural correctness), wrong abstraction level (second-order vs first-order). And SV6 identifies the correct mechanism: loop-runner checkpoint extension, which also subsumes the telemetry reading improvement.

### Saturation Indicators

- **Perspective saturation:** 4 perspectives checked, all converged on the same answer (infrastructure, not discipline). No new types of anchors emerging.
- **Ambiguity resolution ratio:** 2/2 ambiguities resolved. None dropped.
- **SV delta:** Significant — from "is /reflect the right tool?" to "/reflect is definitively wrong; it's loop-runner infrastructure."
- **Anchor diversity:** Constraints (3), insights (5), structural (2), principles (2), meaning-nodes (1) — diverse types across 4 perspectives.
