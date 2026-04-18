# Innovation: Question Framing Gap

## User Input
devdocs/inquiries/question_framing_gap/sensemaking.md

---

## Seed

SIC has a width blind spot. Questions scope the ceiling. Iteration deepens, never widens. The proposed fix is two additive changes (adapter context loading + S scope checking). Innovation question: are there more novel or powerful approaches, especially for autonomous loops that must widen their own questions?

---

## Mechanism Application

### 1. Lens Shifting (Framer)

**1a. Generic — Gap as feature:** Narrow scoping is correct for tactical questions. Width is only needed for strategic ones. The adapter determines whether widening happens. Strategic adapters widen; tactical adapters stay narrow.

**1b. Focused — Question checks itself:** `_branch.md` gets a scope-check section. Writer lists adjacent concerns and reasons scope is sufficient. S reads and evaluates. Scope check moves from reactive (in S) to proactive (in the question format).

**1c. Controversial — Depth produces width:** S's strategic perspective DID find the generalization (7a in adapter-pattern run). It just didn't flag it as a scope signal. If S recognizes system-wide implications as scope expansion signals, depth automatically produces width. No separate mechanism needed.

### 2. Combination (Generator)

**2a. Generic — Scope check + adapter inheritance:** Parent question IS the strategic context for child branches. No external files needed — the inquiry tree provides scoping context.

**2b. Focused — Scope check + Reflect (R):** R checks scope quality after the loop. If narrow answer missed the bigger picture, R proposes widened question as frontier item for next inquiry.

**2c. Controversial — Machine-maintained where_we_left.md:** MVL updates this file after every inquiry with key findings and open implications. Every new inquiry's S reads it automatically. System builds its own strategic context through use.

### 3. Inversion (Framer)

**3a. Generic — Question as OUTPUT, not input:** Human provides GOAL. S reads goal + strategic context and PROPOSES the question. Human approves. Level 2: question EVOLVES during the loop — each iteration can shift/widen/reframe the question, not just narrow it.

**3b. Focused — Default context always loaded:** A `_project_context.md` is ALWAYS read by every SIC run. Adapter adds additional context on top. Eliminates "forgot to load strategic context."

**3c. Controversial — Wide is the default:** Every question starts with full strategic context and scope check. Must PROVE the question is narrow enough to skip widening. Safe default (wide), optimization is narrowing.

### 4. Constraint Manipulation (Framer)

**4a. Generic — "Scope check < 30 seconds":** Forces lightweight: read context (5s), compare to 3 goals (15s), output verdict (10s). A glance, not analysis.

**4b. Focused — Dual question format:** `_branch.md` has `## Question (as asked)` and `## Question (as scoped)`. Human writes first, system writes second (wider if needed). Delta between them IS the scope expansion — visible and auditable.

**4c. Controversial — Goal is the scope definer:** The adapter-pattern inquiry's GOAL already included automation + multi-heading. The QUESTION didn't. The gap between question and goal IS the scope expansion signal. No external context needed — just compare the two fields in `_branch.md`.

### 5. Absence Recognition (Generator)

**5a. Generic — Missing: question-to-goal alignment check:** `_branch.md` has Question AND Goal. Nothing checks if the question, answered perfectly, achieves the goal. THIS IS THE EXACT GAP. "Adapter pattern" question doesn't cover "automation + multi-heading" goal. The check needs only `_branch.md` itself.

**5b. Focused — Missing: open-implications registry:** After each SIC run, system-level implications aren't captured. Missing persistent accumulation of cross-inquiry implications that new inquiries read and check against.

**5c. Controversial — Missing: scope as a first-class dimension:** The system has metrics for depth (telemetry, perspectives, SV delta). Scope has NOTHING — no metric, no coverage, no progression. Scope is invisible.

### 6. Domain Transfer (Generator)

**6a. Generic — From requirements engineering:** Scope section with In/Out/Adjacent. "Adjacent" list is the expansion signal. If empty, S fills from context. If non-empty, S evaluates each: "should this be in scope given the goal?"

**6b. Focused — From journalism (5W1H):** Apply Who/What/When/Where/Why/How to the question. Each W may reveal adjacent concerns the question missed.

**6c. Controversial — From immune systems (antigen presentation):** System continuously samples strategic environment and "presents" relevant context to each new inquiry. Background process maintaining `_strategic_briefing.md`.

### 7. Extrapolation (Generator)

**7a. Generic — Goal becomes primary input:** If question-goal alignment works, the goal is authoritative. Over time: Human provides goals → system generates questions → SIC each → merge → check goal achievement.

**7b. Focused — Implications accumulate into strategic awareness:** After 50 inquiries with implications registry, the system has rich cross-inquiry context. Scope check becomes increasingly intelligent.

**7c. Controversial — Scope becomes a discipline:** If scope needs metrics, coverage, progression, failure modes — it's the definition of a thinking discipline. The 8th discipline: Scope Management.

---

## Assembly Check

**5a + 4b + 6a assemble into a scope-managed `_branch.md`:**

```markdown
# Branch: [name]

## Question (as asked)
[the human's original question]

## Goal
[what a good answer achieves]

## Scope
In scope: [what this question covers]
Out of scope: [what it deliberately excludes]
Adjacent: [related concerns — check if any should be in scope]

## Question (as scoped)
[widened if scope check found gaps, or same as original]

## Scope Check
Does the question's scope cover the goal's requirements? [YES/NO]
If NO: [what's missing and why]
```

Scope becomes VISIBLE, AUDITABLE, MANAGED — within `_branch.md` (existing file), using question-to-goal comparison (existing fields). The delta between "as asked" and "as scoped" IS the scope expansion. No new mechanism.

---

## Verdicts

### SURVIVE

**5a + 4b + 6a ASSEMBLY: Scope-managed `_branch.md`** — Catches the exact gap. Format change to existing file + one check in MVL. Immediately buildable. The question-to-goal comparison IS the scope check — no strategic context files even needed for the basic version.

**2c + 5b. Machine-maintained strategic context** — Build 1.5+ material. MVL writes implications after each inquiry, building context automatically. Feeds scope check with richer context over time.

### REFINE

**1c. Depth produces width** — Insight is real but "S recognizes its own findings as scope signals" is vague. Refine: the scope check reads S's frontier questions and checks if any imply wider scope.

### KILL (seeds extracted)

**3a. Goal as input, question as output** — Too radical for current state. Seed: at Level 4 autonomy, system generates own questions from goals.

**7c. Scope as separate discipline** — Overkill. Scope-managed `_branch.md` handles it within existing structures.

---

## Mechanism Coverage (Telemetry)

* **Generators applied:** 4/4
* **Framers applied:** 3/3
* **Convergence:** YES — 4 mechanisms → "scope managed through question-to-goal comparison in `_branch.md`" (5a, 4b, 4c, 6a). 2 mechanisms → "system builds strategic context over time" (2c, 5b, 7b).
* **Survivors tested:** 4 (2 SURVIVE incl. assembly, 1 REFINE) / 2 killed
* **Assembly check:** YES — assembly is the primary survivor
* **Failure modes observed:** None
* **Overall: PROCEED**
