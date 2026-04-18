# Critique: Question Framing Gap

## User Input
devdocs/inquiries/question_framing_gap/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Correctness** | CRITICAL | Would catch "adapter" is too narrow for goal that includes "automation + multi-heading" |
| **Minimality** | CRITICAL | Lightest intervention — no new files/components/disciplines beyond what's needed |
| **Automation path** | HIGH | Scope check derivable from file state, not human judgment |
| **Selectivity** | HIGH | Only fires when question scope < goal scope |
| **Coherence** | MEDIUM | Additive to existing `_branch.md` and MVL |

---

## Candidate Evaluations

### Candidate 1: Full Scope-Managed `_branch.md` (5a+4b+6a)

**Prosecution:** Quadruples `_branch.md` complexity (2→6 sections). Universal overhead for a selective problem. "Narrow goal" edge case means fix only works when human writes wider goal than question.

**Defense:** Defaults auto-fill everything. Human only reviews when flagged. Goals are naturally wider than questions (aspirational vs. tactical). The actual case had wide goal + narrow question.

**Collision:** Overhead addressed by defaults. But 6 sections is overkill for what's fundamentally a 1-line comparison.

**Verdict: REFINE** — Correct but not minimal. Strip to: Question, Goal, Scope Check (1 auto-filled line).

### Candidate 2: Machine-Maintained Strategic Context (2c+5b)

**Prosecution:** Solves a different problem (context enrichment, not scope checking). Premature — system hasn't accumulated enough inquiries for cross-inquiry patterns.

**Defense:** Catches cases where both question AND goal are too narrow. Strategic context from past inquiries surfaces concerns the human didn't think of.

**Collision:** Valid in theory but wrong timing. Scope check needed NOW, context enrichment needed LATER.

**Verdict: REFINE → DEFER** to Build 1.5+.

### Candidate 3: Depth-Produces-Width via S Prompt (1c)

**Prosecution:** Asking S "should the question be wider?" without a reference point (the goal) gives S no basis for "yes." S can't independently determine what wider means for this project.

**Defense:** Just one additional prompt line in S's strategic perspective. Incremental, not architectural.

**Collision:** The prompt needs a reference point to work. The question-to-goal comparison provides the reference. The prompt alone doesn't.

**Verdict: KILL** — Seed: the prompt IS useful as a complement to the scope check (S reads the scope check result and investigates flagged gaps), not as standalone.

---

## Phase 3.5 — Assembly

**Minimal assembly: Scope Check line + S references it**

MVL compares question to goal, auto-fills `## Scope Check` in `_branch.md`. S reads the result. Human decides whether to widen.

```markdown
# Branch: [name]
## Question
[the question]
## Goal
[what a good answer achieves]
## Scope Check
[auto-filled by MVL: "Question covers goal: YES" or
 "NO — goal includes X but question only addresses Y"]
```

One new line. Auto-filled. S reads it. Human overrides if needed.

**Assembly verdict: SURVIVE — no caveats on critical dimensions.**

---

## Phase 4 — Coverage + Convergence

| Candidate | Verdict |
|---|---|
| Full scope-managed `_branch.md` | REFINE → stripped to minimal |
| Strategic context | DEFER to Build 1.5+ |
| S prompt alone | KILL (seed: complement to scope check) |
| **Minimal Scope Check line** | **SURVIVE (clean)** |

**Signal: TERMINATE** — Clean survivor. One-line fix. Catches the exact gap.

---

## The Fix

**MVL change:** On NEW, after writing Question and Goal, compare scope. Auto-fill `## Scope Check`. If gap found, flag to human with proposed wider question.

**S change:** S reads `## Scope Check`. If flagged, S's strategic perspective investigates the flagged concerns.

**Catches:** "Adapter pattern" question vs "automation + multi-heading" goal → "NO — goal includes automation, multi-heading but question only addresses adapter pattern."

**Doesn't catch:** Both question AND goal too narrow. Future fix: machine-maintained strategic context (Build 1.5+).

---

## Convergence Telemetry

* **Dimensions evaluated:** 5/5, all critical covered: YES
* **Adversarial strength:** STRONG — prosecution forced 6-section → 1-line reduction; identified structural flaw in S-prompt-alone approach
* **Landscape stability:** CHANGED slightly — innovation's assembly refined DOWN toward minimality
* **Clean SURVIVE:** YES — minimal Scope Check line
* **Failure modes observed:** None
* **Overall: PROCEED**
