# Innovation: Universal vs Configurable

## User Input
devdocs/inquiries/universal_vs_configurable/sensemaking.md

---

## Seed

Three layers: spec (universal) / project adapter (project-specific) / inquiry adapter (question-type). "Default adapter" was conflating layers 2+3. Nothing universal in the default. Innovation question: what designs emerge from the cleaner three-layer model?

---

## Key Innovations

### 1. Additive cascade (3b + 6a)
Inquiry adapter EXTENDS project adapter, doesn't override. "Apply BOTH." Like middleware stacking — each layer adds context. No CSS specificity confusion. Composition is trivial.

### 2. Fill-in-the-blanks template (4a)
Project adapter creatable in under 2 minutes:
```markdown
# Project Adapter
## S — Project Context
Project goal: ___
Current phase: [exploration / building / refining]
Briefing: devdocs/briefing.md [or: no briefing yet]
Branch format: [alignment-labeled / standard]

## I — Project Guidance
[blank = use spec defaults]

## C — Project Checks
[blank = use spec defaults]

## R — Project Reflection
[blank = use spec defaults]
```
Four blanks. Optional I/C/R sections. Under 2 minutes.

### 3. Three layers = three alignment scopes (2b)

| Content layer | Alignment scope | What it configures |
|---|---|---|
| Spec | Methodology alignment | HOW S/I/C work universally |
| Project adapter | L0-L2 project context | WHAT this project needs |
| Inquiry adapter | L3-L5 question focus | WHAT this question type needs |

### 4. Create for THIS project NOW (5a)
10+ inquiries without a project adapter. Every S re-discovers context from scratch. Immediate value for next session.

---

## Assembly

**Additive + template + alignment scopes + create NOW = Build 1:**
1. Write fill-in-the-blanks template grounded in alignment scope
2. Cascade is additive (both levels apply)
3. Create for this project immediately
4. One-line command edit reads BOTH files

---

## Verdicts

### SURVIVE
- **Additive cascade** — Extends, doesn't replace. Convergence: 3 mechanisms.
- **Fill-in-the-blanks template** — Under 2 minutes. Removes friction.
- **Three alignment scopes** — Deepens identity. Directs adapter authoring.
- **Create NOW** — Immediate value.

### REFINE
- **Multi-adapter composition** — Premature. Design target for multi-concern inquiries.
- **Auto-generate adapter** — Build 2+. Needs project context that the adapter itself provides.

### KILL
- **Merge adapter + briefing** — Different update frequencies → different files.
- **Merge CLAUDE.md + adapter** — Different consumers → different files.

---

## Mechanism Coverage (Telemetry)

* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — 3 → additive cascade. 2 → alignment scopes.
* **Survivors:** 4 SURVIVE + 2 REFINE / 2 killed
* **Assembly:** YES
* **Overall: PROCEED**
