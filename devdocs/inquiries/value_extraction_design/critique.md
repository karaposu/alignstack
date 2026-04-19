# Critique: Value Extraction Design

## User Input
devdocs/inquiries/value_extraction_design/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Cold-read clarity** | CRITICAL | Name and structure immediately understood on first contact. |
| **Self-containment** | CRITICAL | Readable without any other file. |
| **Prompt-readiness** | CRITICAL | Usable as direct input for future AI sessions. Non-compact. |
| **Automation viability** | HIGH | TERMINATE can produce all sections from SIC output. |
| **Cross-folder expressiveness** | HIGH | Relationships and invalidation natively expressible. |
| **Elegance** | HIGH | Minimum new mechanism. Works with existing structure. |
| **Scale viability** | MEDIUM | Works at 50+ inquiries. |

---

## Candidate Verdicts

### `finding.md` vs `value.md` (naming)
**Prosecution:** "Finding" is academic. The user thinks in terms of value extraction. "Value" aligns with the user's mental model.
**Defense:** "Finding" has one reading (what was found). "Value" has three (monetary, data, extracted worth). Cold-read test: `finding.md` is unambiguous. `value.md` needs context.
**`finding.md` Verdict: SURVIVE** — cold-read clarity wins on a CRITICAL dimension.
**`value.md` Verdict: KILL** — ambiguous on first contact. Seed: the CONCEPT is value extraction, but the FILENAME should describe the content (a finding), not the process (value extraction).

### Four-section structure (Question, Finding, Reasoning, Open Questions)
**Prosecution:** User asked for three things (request, solution, why chosen). Fourth section (Open Questions) isn't part of the argument.
**Defense:** Open Questions adds forward links at zero cost. User's three-part request maps to first three sections. Fourth adds system value.
**Verdict: SURVIVE** — all four sections serve the goal.

### Status header
**Prosecution:** Three states unclear. "Challenged" has no operational meaning. Status will rot at scale — who updates old findings?
**Defense:** Reactive updates, not proactive scanning. Drop "challenged." Two states: active | superseded. Mirror of `_state.md` SUPERSEDED BY relationship.
**Verdict: SURVIVE (caveat)** — two states only. Maintenance is best-effort.

### Cross-folder relationships in `_state.md`
**Prosecution:** RELATED is too vague. 19 existing folders have no relationships — inconsistent.
**Defense:** Forward-only adoption. RELATED is intentionally soft. SUPERSEDED BY is the critical innovation.
**Verdict: SURVIVE** — three types, forward adoption, solves the user's invalidation problem.

### No evolution section
**Prosecution:** Raw SIC output isn't a digestible journey narrative. Prior inquiry said evolution is independently valuable.
**Defense:** Reasoning section captures essential journey (alternatives + kills). Full details in docarchive/. Evolution section would push toward archival, muddying the argumentative purpose.
**Verdict: SURVIVE** — Reasoning is sufficient. Four sections stays clean.

---

## Assembly

The five survivors create a complete inquiry lifecycle:

```
_branch.md  →  SIC loop  →  finding.md  →  docarchive/
   (ask)        (think)       (answer)       (preserve)
```

Handles: complete (finding.md exists), in-progress (_state.md ACTIVE), abandoned (_state.md ACTIVE with stale dates).

**Verdict: SURVIVE** — lifecycle is complete and self-explanatory.

---

## The Answer

```
finding.md — structural pair to _branch.md. Branch asks, finding answers.

Structure:
  ---
  status: active | superseded
  ---
  # Finding: [Inquiry Name]
  ## Question     — from _branch.md
  ## Finding      — the answer, non-compact, self-contained
  ## Reasoning    — why this, not alternatives. What was killed.
  ## Open Questions — frontier seeds

Cross-folder: _state.md gains ## Relationships section
  - SUPERSEDED BY: folder_name (reason)
  - CONTINUES FROM: folder_name (context)
  - RELATED: folder_name (connection)

Folder lifecycle:
  Start:  _branch.md + _state.md
  During: + sensemaking.md + innovation.md + critique.md
  After:  _branch.md + _state.md + finding.md + docarchive/
```

Killed: `value.md` (ambiguous), "challenged" status (unclear), evolution section (Reasoning suffices).

---

## Convergence Telemetry

* **Dimensions:** 7/7, all critical: YES
* **Adversarial:** STRONG — naming forced cold-read comparison, status forced simplification, evolution tested Reasoning sufficiency
* **Stability:** STABLE — confirmed innovation's shape, refined details
* **Clean SURVIVE:** YES — the full assembly
* **Failure modes:** None
* **Overall: PROCEED**
