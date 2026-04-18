# Critique: Adapter Build Implementation

## User Input
devdocs/inquiries/adapter_build_implementation/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Implementability** | CRITICAL | Each edit specific enough to write |
| **Forward compatibility** | CRITICAL | Same mechanism works for Builds 3-5 |
| **Simplicity** | HIGH | Minimal edits, no unnecessary complexity |
| **Doesn't break existing** | HIGH | Standalone commands still work |
| **Coherence** | MEDIUM | Consistent with alignment identity + session designs |

---

## Candidate Evaluations

### Alignment-field references (2a+1a)
**Prosecution:** Couples adapter to `_branch.md` format that doesn't exist yet. Dependency: both must ship together.
**Defense:** They SHOULD ship together. Two edits in the same command file.
**Verdict: SURVIVE (caveat)** — Ship with `_branch.md` format update.

### Cascading adapters (6b+7a+3b)
**Prosecution:** Four levels is over-engineered for zero existing adapters. Cascade creates "which is active?" confusion.
**Defense:** Implementation is TWO levels (inquiry → project fallback). One IF statement.
**Verdict: REFINE** → Two levels only: `_adapter.md` → `devdocs/adapter.md`.

### One-line command edit (4a)
**Prosecution:** "Apply as additional guidance" is vague.
**Defense:** Natural language read by LLM. "Check briefing" is unambiguous. LLM handles ambiguity better than formal specs.
**Verdict: SURVIVE (clean)** — All dimensions pass.

### R section (5c)
**Prosecution:** R command not finalized. Section does nothing today.
**Defense:** Design for four now, cheaper than retrofit. R section can be optional.
**Verdict: SURVIVE (caveat)** — Include but mark optional.

---

## Assembly

**No copy step. Project adapter IS the default. Per-inquiry override when needed.**

Simpler than sensemaking's design: MVL doesn't copy templates. `devdocs/adapter.md` always exists as project default. `_adapter.md` in inquiry folder only when overriding.

---

## What to Build

### Edit 1: Create `devdocs/adapter.md`
Project-level default adapter. Four sections (S, I, C, R). S references `_branch.md` alignment fields. C has the four traps. R marked optional.

### Edit 2: One line per discipline command
> "If `_adapter.md` exists in input folder, or `devdocs/adapter.md` as fallback, read your section and apply as additional guidance. If neither exists, proceed with defaults."

Added to: sense-making.md, innovate.md, td_critique.md, reflect.md

### Edit 3: Update MVL's `_branch.md` to alignment-labeled format
Ship with Edit 1 — they reference each other.

### Edit 4: Create specialized templates at `thinking_disciplines/adapters/`
Reference templates (wayfinding, comprehension, exploration, decomposition). NOT copied per inquiry — user copies when they want non-default.

---

## Convergence Telemetry

* **Dimensions:** 5/5, all critical: YES
* **Adversarial strength:** STRONG — forced cascade simplification, identified `_branch.md` dependency
* **Landscape stability:** CHANGED — simplified (no copy step)
* **Clean SURVIVE:** YES — one-line edit + assembly
* **Failure modes:** None
* **Overall: PROCEED**
