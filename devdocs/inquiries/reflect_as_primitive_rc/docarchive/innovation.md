# Innovation: Primitive RC Architecture Design

## User Input
devdocs/inquiries/reflect_as_primitive_rc/_branch.md

---

## Seed

The architecture for Primitive RC — sensemaking concluded: checkpoint does binary structural checks inline, /reflect integrates results post-loop. Innovation explores HOW to implement this, and whether non-obvious designs improve on the straightforward approach.

**Direction:** The sensemaking resolved that structural checking is infrastructure (checkpoint) and quality awareness ownership belongs to /reflect. We need novel approaches to implementation, interface design, and the emergent value of the combined architecture.

---

## Mechanism 1: Lens Shifting (Framer)

### 1a — Generic (Shift to: learning frame)
What if structural checks aren't primarily about catching errors, but about generating TRAINING DATA for the system's self-improvement? Every structural violation is a data point: "discipline X failed to produce section Y." Over time, this data reveals which disciplines are weak at which structural requirements. The checkpoint isn't a validator — it's a sensor that feeds the Baldwin cycle.

**Test:** Novel? Partially — reframes purpose but doesn't change mechanism. Fertile? Yes — connects Primitive RC directly to the self-improvement loop. Actionable? Yes — log violations in a structured format that accumulates across runs. **SURVIVE.**

### 1b — Focused (Shift to: spec quality frame)
What if structural violations aren't failures of the DISCIPLINE but failures of the SPEC? A sensemaking output missing ambiguity collapse might mean the spec doesn't emphasize it enough, or the spec's instructions are ambiguous. The checkpoint doesn't just flag "missing section" — it flags "possible spec gap." /reflect then examines: is this a discipline failure or a spec failure?

**Test:** Novel? Yes — shifts blame from execution to specification. Fertile? Very — this is the mechanism by which specs improve themselves. Actionable? Yes — /reflect's structural pattern analysis asks "is this a recurring discipline failure (execution) or a recurring spec gap (specification)?" **SURVIVE.**

### 1c — Controversial (Shift to: unnecessary frame)
What if structural checking is a crutch that prevents the real fix? If sensemaking keeps missing ambiguity collapse, the answer isn't to CHECK for it — the answer is to make the spec so clear that missing it is impossible. Structural checking is treating symptoms. The cure is better specs.

**Test:** Novel? Yes — challenges the entire premise. Scrutiny survival? Weak — better specs help but can't guarantee compliance. Even humans with clear instructions miss things. The spell-checker analogy holds: you need it even with good writers. **KILL — but extract seed: the spec quality feedback loop IS valuable, even though eliminating checks entirely isn't viable.**

---

## Mechanism 2: Combination (Generator)

### 2a — Generic (Structural checks + telemetry reading)
Combine structural validation with the already-identified telemetry reading improvement (from minimum_viable_loop.md). Both fire at the checkpoint. Both produce quality signals. Both follow flag-and-continue. Design them as ONE checkpoint enhancement, not two separate additions. The checkpoint becomes a "quality gate" that checks both structure (does the section exist?) and substance (does the telemetry meet thresholds?).

**Test:** Novel? Incremental but important — avoids building two separate checkpoint features when one unified feature serves both. Fertile? Yes — defines the checkpoint as a quality gate pattern. Actionable? Highly — it's the obvious implementation path. **SURVIVE.**

### 2b — Focused (Structural checks + discipline structural requirements as first-class spec sections)
Each discipline spec gets a formal `## Structural Requirements` section — a machine-readable list of what the output MUST contain. The checkpoint reads this section from the spec, checks the output against it, and produces results. Requirements are defined IN the spec, not in a separate reference file. When specs evolve, requirements evolve with them.

**Test:** Novel? Yes — makes structural requirements a first-class, co-located part of discipline specs rather than an external checklist. Fertile? Very — means spec edits automatically update what gets checked. Actionable? Yes — add a section to each discipline spec. **SURVIVE.**

### 2c — Controversial (Structural checks + /reflect's memory cells → feedback loop)
What if structural check results don't just feed /reflect as input, but /reflect's memory cells feed BACK to modify structural requirements? /reflect observes "S keeps missing ambiguity collapse" → proposes memory cell → this memory cell, when confirmed by the human, adds or strengthens a structural requirement in the sensemaking spec. The structural requirements EVOLVE based on /reflect's observations.

**Test:** Novel? Yes — creates a closed loop where quality awareness modifies quality checks. Fertile? Extremely — this IS the Baldwin cycle for Primitive RC. Actionable? Medium — requires the memory cell → spec modification pathway, which doesn't exist yet. **SURVIVE as Phase 2 feature.**

---

## Mechanism 3: Inversion (Framer)

### 3a — Generic (Invert: "The checkpoint checks discipline output")
→ "The discipline output checks ITSELF."

Level 1: Each discipline's output template includes self-validation. The discipline verifies its own output against structural requirements before completing.

Level 2: "The discipline spec's output template inherently prevents structural violations because the template IS the structural requirement." The template structure makes it hard to miss sections because the sections are pre-defined in the template.

**Test:** Novel? Yes at Level 2 — output templates as structural enforcement. Scrutiny survival? Partial — templates guide but can't guarantee. An LLM might still produce output that doesn't match. Pattern matching is still needed to verify. **REFINE — output templates as first line of defense, checkpoint verification as second.**

### 3b — Focused (Invert: "/reflect runs AFTER structural checks")
→ "/reflect runs BEFORE structural checks — it PREDICTS which violations will occur."

**Test:** Novel? Yes — flips temporal relationship. Scrutiny survival? Weak — comprehensive checking is cheap (pattern matching), so prediction-based narrowing saves almost nothing. **KILL — clever but solves a problem that doesn't exist.**

### 3c — Controversial (Invert: "Structural violations are bad")
→ "Structural violations are INFORMATION."

What if some violations signal that the discipline ADAPTED to context? Missing ambiguity collapse because the input had no ambiguity shouldn't be flagged the same way as missing it through carelessness.

Level 2: Structural checks produce violations WITH CONTEXT. The distinction between "missing because skipped" and "missing because intentionally adapted" is real.

**Test:** Novel? Yes at Level 2. **REFINE — this distinction falls out of the synthesis naturally: checkpoint flags all violations; /reflect reasons about which were intentional vs careless.**

---

## Mechanism 4: Constraint Manipulation (Framer)

### 4a — Generic (Add constraint: "structural checks must be expressible as grep/regex")
Every structural requirement must be expressible as a simple text pattern match. "Does ambiguity collapse section exist?" = grep for heading. "Is prosecution strong enough?" ≠ expressible as grep — that's quality, not structure. The constraint ENFORCES the boundary between Primitive RC (structural) and Predictive RC (quality).

**Test:** Novel? Incremental but clarifying — makes the structural/quality boundary operational. Actionable? Highly — defines the implementation constraint for structural requirements. **SURVIVE.**

### 4b — Focused (Remove constraint: "checkpoint runs inside MVL/MVL+ spec")
What if structural validation is a Claude Code hook instead? Hooks fire on Write events to inquiry folders, running structural validation automatically via file system events rather than pipeline position.

**Test:** Mixed — hooks fit spec-change checking perfectly but feel forced for discipline output checking (checkpoint is already in the flow). **REFINE — hooks for spec changes, checkpoint for discipline outputs (as already noted in previous sensemaking).**

### 4c — Controversial (Add constraint: "zero new mechanisms")
Do nothing new. Just extend /reflect's "Step Quality" dimension to include structural checking. /reflect does everything, but only post-loop.

**Test:** Weak — gives up immediate detection. Structural violations propagate through entire pipeline before being caught. **KILL — sacrifices too much for conceptual simplicity.**

---

## Mechanism 5: Absence Recognition (Generator)

### 5a — Generic (What's missing from the synthesis?)
The synthesis says "checkpoint produces structural data, /reflect reads it." Missing: HOW does /reflect access checkpoint results? Checkpoints currently display text to the user — they don't SAVE structured data anywhere. /reflect can't read what wasn't saved.

**The absence:** A checkpoint result log. Each checkpoint's structural check results need to be persisted to a file in the inquiry folder (e.g., `_structural_checks.md`).

**Test:** Not novel but CRITICAL — identifies a gap that would cause the synthesis to fail. **SURVIVE.**

### 5b — Focused (What's missing from discipline specs?)
No discipline spec currently defines structural requirements. There is no "minimum viable output" definition anywhere. Structural requirements are IMPLICIT, not explicit.

**The absence:** Explicit `## Structural Requirements` sections in each discipline spec. Without them, the checkpoint has nothing to check against.

**Test:** Not novel but essential — the prerequisite for everything. **SURVIVE.**

### 5c — Controversial (What SHOULDN'T exist that does?)
The previous sensemaking (primitive_rc_mechanism.md) concluded "/reflect is not involved." The current inquiry concludes "/reflect IS involved, as integrator." These contradict. The previous finding is stale.

**The absence:** A supersession relationship between this inquiry's finding and the previous sensemaking.

**Test:** Important housekeeping. **SURVIVE.**

---

## Mechanism 6: Domain Transfer (Generator)

### 6a — Generic (From software engineering: linting)
Linters check code structure (syntax, formatting) separately from code review (quality, design). Linter runs automatically on every save (fast, binary). Code review runs post-PR (slow, judgment, reads linter output). This mirrors checkpoint/reflect exactly.

Additional insight: like linters, structural checks should be **configurable** (enable/disable specific rules) and should have **severity levels** (error vs warning).

**Test:** Validates the architecture via a proven pattern. Adds configurable severity levels. **SURVIVE.**

### 6b — Focused (From manufacturing: inspection stations)
Inspection stations positioned BETWEEN production stages catch defects BEFORE they propagate. QA team reviews holistically afterward. Same split.

Additional insight: if sensemaking is structurally incomplete, innovation and critique shouldn't process it without at least a warning. Immediate detection prevents propagation of structural defects.

**Test:** Strengthens the "immediate detection" argument. **SURVIVE.**

### 6c — Controversial (From biology: immune system)
Innate immune system = immediate, non-specific, hardcoded defense (like structural checks). Adaptive immune system = delayed, specific, learned defense (like /reflect). They work together. The innate system doesn't try to be the adaptive system.

Additional insight: structural requirements should be HARDCODED (defined in specs) while /reflect's quality patterns are LEARNED (accumulated through memory cells). This further validates the two-mechanism split.

**Test:** Validates the architecture and adds the hardcoded vs learned distinction. **SURVIVE.**

---

## Mechanism 7: Extrapolation (Generator)

### 7a — Generic (After 50 pipeline runs)
Accumulated structural check data reveals patterns: sensemaking passes 90%, critique passes only 70% (frequently missing prosecution). /reflect reads patterns and proposes spec improvements. Human confirms. Spec updated. Critique's pass rate improves. THIS is the Baldwin cycle operating through Primitive RC.

**Test:** Shows compounding value over time. Validates accumulation design. **SURVIVE.**

### 7b — Focused (When structural checks are comprehensive)
Once all violations are caught consistently, /reflect's structural integration role phases out. /reflect's attention naturally shifts to process quality — the HARDER problems. The split architecture naturally evolves.

**Test:** Shows the endgame. Validates trajectory. **SURVIVE.**

### 7c — Controversial (At Level 3 autonomy)
The checkpoint auto-fixes violations. /reflect auto-proposes spec changes. Primitive RC becomes self-healing. Requires sufficient Baldwin cycle calibration data from Level 0-2.

**Test:** Future-state vision. **SURVIVE (deferred).**

---

## Testing Summary

| ID | Innovation | Verdict |
|---|---|---|
| 1a | Structural checks as training data | SURVIVE |
| 1b | Violations as spec quality signals | SURVIVE |
| 1c | Structural checking is a crutch | KILL |
| 2a | Unified checkpoint quality gate | SURVIVE |
| 2b | Structural requirements as first-class spec sections | SURVIVE |
| 2c | Memory cells → structural requirement feedback loop | SURVIVE (Phase 2) |
| 3a | Output templates as structural enforcement | REFINE |
| 3b | /reflect predicts violations | KILL |
| 3c | Contextual violations (intentional vs careless) | REFINE |
| 4a | Grep/regex constraint enforces boundary | SURVIVE |
| 4b | Hooks as alternative trigger | REFINE |
| 4c | Do nothing, extend /reflect Step Quality | KILL |
| 5a | Checkpoint result log (critical gap) | SURVIVE |
| 5b | Explicit structural requirement sections in specs | SURVIVE |
| 5c | Supersede previous sensemaking | SURVIVE |
| 6a | Linting analogy (configurable, severity levels) | SURVIVE |
| 6b | Manufacturing inspection stations | SURVIVE |
| 6c | Immune system analogy (hardcoded vs learned) | SURVIVE |
| 7a | 50-run accumulation enables Baldwin cycle | SURVIVE |
| 7b | Structural dimension phases out of /reflect | SURVIVE |
| 7c | Level 3 auto-fix | SURVIVE (deferred) |

---

## Assembly Check

The survivors assemble into a cohesive architecture:

### The Checkpoint Quality Gate
A unified enhancement to the MVL/MVL+ checkpoint that:
1. Reads structural requirements from discipline specs (2b) — requirements are co-located with specs
2. Runs grep/regex pattern checks against discipline output (4a) — binary, deterministic
3. Displays results alongside telemetry in the checkpoint (2a) — unified quality gate
4. Persists results to a checkpoint log in the inquiry folder (5a) — /reflect can read later
5. Has configurable severity levels: error vs warning (6a) — linting pattern
6. Treats violations as data points for the Baldwin cycle (1a) — learning, not just catching
7. Catches defects before they propagate to next discipline (6b) — inspection station pattern

### The /reflect Quality Integrator
An enhanced /reflect that:
1. Reads the checkpoint log alongside discipline outputs (existing synthesis)
2. Reasons about violation patterns across the run AND across runs (7a)
3. Distinguishes discipline failures from spec gaps (1b) — drives spec improvement
4. Proposes memory cells that feed back to strengthen structural requirements (2c, Phase 2)
5. Gradually shifts attention from structural to process quality as checks mature (7b)

### The Interface
Checkpoint result log format — per-discipline list of checks with pass/fail status, section names, severity levels. Saved to the inquiry folder so /reflect can read it post-loop.

### Emergent Value
The checkpoint and /reflect together form a feedback loop MORE valuable than either alone:
- Checkpoint catches immediate violations (innate/hardcoded)
- /reflect detects patterns and proposes spec improvements (adaptive/learned)
- Better specs reduce violations
- Each component amplifies the other
- This IS the Baldwin cycle at the infrastructure level

---

## Mechanism Coverage (Telemetry)

* Generators applied: 4 / 4 (Combination, Absence Recognition, Domain Transfer, Extrapolation)
* Framers applied: 3 / 3 (Lens Shifting, Constraint Manipulation, Inversion)
* Convergence: **YES** — 5+ mechanisms converge on the same core architecture
* Survivors tested: 21 / 21 total outputs (3 killed, 3 refined, 15 survived)
* Failure modes observed: none
* **Overall: PROCEED** — full 7/7 coverage, strong convergence, multiple tested survivors, no failure modes
