# Innovation: Preparation Step

## User Input
devdocs/inquiries/preparation_step/sensemaking.md

---

## Seed

Project briefing (`devdocs/briefing.md`) — persistent file, created once, maintained by R, consumed by MVL. Innovation question: what extends the briefing for autonomous loops, cross-inquiry intelligence, and system integration?

---

## Mechanism Application

### 1. Lens Shifting (Framer)

**1a. Generic — Document → Interface:** Briefing isn't passive document but active interface S queries throughout its run. "Does the briefing mention anything about X?" as a move S can make at any point.

**1b. Focused — Rolling summary → Strategic radar:** Add `## Approaching Signals` — weak signals showing up repeatedly across inquiries. Pre-frontier patterns R detects before they become explicit questions.

**1c. Controversial — Project-level → Human-level:** Cross-project briefing tracking insights across all projects. Scope explosion — killed.

### 2. Combination (Generator)

**2a. Generic — Briefing + adapter templates:** Briefing knows current phase → suggests adapter. `## Suggested Adapter: exploration` — MVL auto-attaches unless human overrides.

**2b. Focused — Briefing + scope check:** Scope check compares goal to BRIEFING'S strategic direction, not just question to goal. Catches narrow goals: "Goal says 'adapter pattern' but strategic direction says 'autonomous multi-headed loops.'" Fixes the "both question and goal too narrow" edge case.

**2c. Controversial — Briefing IS the memory system:** Memory cells go into the briefing. Recent Findings = memory cells. No separate memory — one file, one system.

### 3. Inversion (Framer)

**3a. Generic — Inquiry feeds briefing (not just briefing feeds inquiry):** Level 2: briefing GENERATES inquiries from its own Open Frontiers. Autonomous loop: briefing → pick frontier → SIC → update briefing → pick next.

**3b. Focused — Auto-create empty briefing on first inquiry:** Not optional creation — automatic. Zero cost empty file. Fills through use. Removes adoption barrier. One IF check in MVL.

**3c. Controversial — Multiple briefings per workstream:** One per theme (discipline specs, loop automation, agent architecture). Inquiries tagged by workstream. Cross-workstream insights propagated.

### 4. Constraint Manipulation (Framer)

**4a. Generic — 50-line cap:** Forces compression, prioritization, archival. Keeps briefing useful instead of bloated.

**4b. Focused — R must update (mandatory):** Without enforcement, briefing rots through neglect. R writes updates, not just proposes. Human reviews but R produces.

**4c. Controversial — Structured data (YAML):** Enables programmatic parsing. Breaks "everything is markdown" — killed.

### 5. Absence Recognition (Generator)

**5a. Generic — Missing: freshness signal:** Fresh/stale/expired based on inquiry count since last update. MVL warns on stale, refuses on expired.

**5b. Focused — Missing: contradiction detection:** New findings checked against existing entries. Contradictions flagged — signal that understanding evolved.

**5c. Controversial — Missing: impact tracking:** Track which findings were ACTED ON. Findings without action after 5+ inquiries = dead weight.

### 6. Domain Transfer (Generator)

**6a. Generic — From daily standup:** Briefing = persistent standup for cognitive state. Short (< 2 min read), current, answers: what did we learn? what's next? what's blocking?

**6b. Focused — From lab notebooks: Dead Ends section:** Record what was tried and DIDN'T work + why. Prevents re-investigation. `## Dead Ends` with failed approach + reason.

**6c. Controversial — From OS process tables:** Briefing as cognitive scheduler. Tracks inquiry states (active, waiting, complete, blocked). Directs work, not just informs.

### 7. Extrapolation (Generator)

**7a. Generic — Briefing as institutional memory:** After 50 inquiries, the briefing IS the project's knowledge base. Onboarding document accumulated through use.

**7b. Focused — Briefing as CONFIGURATOR:** Suggests adapters based on project state. Replaces CONFIGURE without question classification — uses state classification instead.

**7c. Controversial — Briefing IS the agent:** Briefing + MVL + /loop = the autonomous agent. Memory + planner + evaluator in one file. End-state vision — requires Builds 1-5.

---

## Assembly Check

**2b + 3b + 4a + 4b + 6b → Self-maintaining briefing specification:**

- Auto-creates on first inquiry (3b)
- Stays under 50 lines through compression/archival (4a)
- R updates after every SICR — mandatory (4b)
- Includes Dead Ends to prevent re-investigation (6b)
- Scope check compares goal to strategic direction (2b)
- Freshness signal warns when stale (5a)

Self-maintaining: creates itself, stays fresh, stays lean, prevents re-investigation, enriches scope checking.

---

## Verdicts

### SURVIVE

**2b. Briefing enriches scope check** — Fixes "both question and goal too narrow." Scope check becomes: question ⊆ goal ⊆ strategic direction. One more comparison in MVL.

**3b. Auto-create empty briefing** — Removes adoption barrier. First inquiry creates the file. Fills through use. Zero cost.

**6b. Dead Ends section** — From lab notebooks. Prevents re-investigating failed approaches. R adds when C kills candidates.

### REFINE

**4a + 4b + 5a. Cap + mandatory R + freshness** — Operational details. Correct but defer specifics until briefing is in use.

**7b. Briefing suggests adapters** — Sound but premature. Design target for after adapters are implemented.

### KILL (seeds)

**1c. Multi-project briefing** — Scope explosion. Seed: human-level memory_cells.md.

**4c. YAML briefing** — Breaks markdown principle. Not justified.

**7c. Briefing IS the agent** — End-state vision. Design target for Build 5.

---

## Mechanism Coverage (Telemetry)

* **Generators applied:** 4/4
* **Framers applied:** 3/3
* **Convergence:** YES — 3 mechanisms → "briefing enriches scope checking." 3 mechanisms → "briefing should self-maintain."
* **Survivors tested:** 6 (3 SURVIVE, 3 REFINE) / 3 killed
* **Assembly check:** YES — self-maintaining briefing specification
* **Failure modes observed:** None
* **Overall: PROCEED**
