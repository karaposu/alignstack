# Critique: Universal vs Configurable

## User Input
devdocs/inquiries/universal_vs_configurable/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Boundary clarity** | CRITICAL | Every content piece assignable to exactly one layer |
| **Correctness of assignment** | CRITICAL | Each piece in the RIGHT layer per boundary rule |
| **Simplicity** | HIGH | Three layers simpler than two |
| **Implementability** | HIGH | No new mechanisms needed |
| **Doesn't invalidate prior work** | MEDIUM | One-line edits, cascade, self-service still work |

---

## Candidate Verdicts

### Additive cascade (3b+6a)
**Prosecution:** No conflict resolution. If adapters contradict, LLM resolves silently.
**Defense:** Project (L0-L2) and inquiry (L3-L5) address different concerns. Conflicts indicate content errors, not model errors.
**Verdict: SURVIVE (caveat)** — No conflict detection yet. Manageable now, design debt for later.

### Fill-in-the-blanks template (4a)
**Prosecution:** Blanks-only template provides information but no instructions.
**Defense:** Actual template has blanks (top, customized) + fixed instructions (below, actionable). Both needed.
**Verdict: SURVIVE** — Template has blanks + instructions. Under 2 minutes.

### Three alignment scopes (2b)
**Prosecution:** Mapping not perfectly clean — inquiry adapter touches L1-L2 too. "Format conventions" don't map to a layer.
**Defense:** Primary emphasis, not exclusive territory. Additive cascade handles the overlap.
**Verdict: SURVIVE (caveat)** — Present as heuristic, not strict partition.

### Create NOW (5a)
**Prosecution:** No command reads it yet — file with no consumer.
**Defense:** Valuable as human-readable context doc. Creates content for when mechanism ships.
**Verdict: SURVIVE** — Immediate value as context reference.

---

## Assembly

Three-layer model + additive cascade + template with instructions + create now = refined Build 1.

**Refinements from this inquiry:**
- "Default adapter" → "project adapter"
- Four traps → wayfinding template (not project)
- Additive cascade (both levels apply)
- Three alignment scopes as heuristic, not partition
- Template has blanks AND instructions
- Create for this project immediately

---

## The Boundary Rule

"Would every run everywhere be worse without this?"
- YES → spec
- NO, all inquiries in this project → project adapter
- NO, this question type → inquiry adapter

## Content Assignment

| Content | Layer |
|---|---|
| Failure modes, assembly check | Spec (already there) |
| "Read briefing," alignment-field refs | Project adapter |
| Four wayfinding traps, "generate beyond visible" | Wayfinding adapter template |
| Depth hierarchy | Comprehension adapter template |
| Frontier tracking | Exploration adapter template |

## Project Adapter Template

```markdown
# Project Adapter
## S — Project Context
Project goal: [fill in]
Current phase: [exploration / building / refining]
Briefing: [path / not yet created]
Branch format: [alignment-labeled / standard]

Read devdocs/briefing.md if it exists.
Read _branch.md alignment fields if present.
Check question scope against strategic direction.

## I — Project Guidance
[blank = spec defaults]

## C — Project Checks
[blank = spec defaults]

## R — Project Reflection
Check whether alignment from _branch.md held through the run.
```

## Cascade (additive)
Spec + project adapter + inquiry adapter = combined guidance. All ADD. None replace.

---

## Convergence Telemetry

* **Dimensions:** 5/5, all critical: YES
* **Adversarial:** STRONG — forced conflict-gap, blanks-vs-instructions, and heuristic-vs-partition refinements
* **Stability:** STABLE — all confirmed with refinements
* **Clean SURVIVE:** YES — template and create-NOW
* **Failure modes:** None
* **Overall: PROCEED**
