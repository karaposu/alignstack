# Critique: MVL+ Implementation

## User Input
devdocs/inquiries/mvl_plus_implementation/

## User Override
"We dont know if mvl+ will cause regression so i would like to keep original one. mvl+ should be separate."

Applied as hard constraint. Kills Innovation #1 (evolve `/mvl`) before critique begins.

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Regression protection** | CRITICAL | `/mvl` unchanged; no risk to existing inquiries. |
| **Buildability in one session** | CRITICAL | Layers 1-3 achievable without scope creep. |
| **Layer ordering** | CRITICAL | Layer 1 → Layer 2 → Layer 3 dependency respected. |
| **Training-data generation** | HIGH | Rich per-cycle data for Level 3+ orchestration learning. |
| **User clarity** | HIGH | Clear when to use `/mvl` vs `/mvl+`. |
| **System coherence** | HIGH | Fits `_state.md`, finding.md, relationships. |
| **Premature rigidity** | MEDIUM | Layer 4 deferred. |

---

## Candidate Verdicts

### 1. Evolve `/mvl` instead of creating `/mvl+`
**User override:** KILL. Regression protection.
**Verdict: KILL** — seed preserved: consolidation may happen LATER once `/mvl+` is proven stable. Not now.

### 2. `_state.md` flow-type field
**Prosecution:** If commands know their own flow, is the field needed?
**Defense:** Useful for verification (prevent wrong-command invocation) and future analytics.
**Verdict: SURVIVE** — low cost, useful signal.

### 3. Reconciliation as mini-sensemaking
**Prosecution:** Risks blurring discipline boundaries.
**Defense:** Pattern reuse ≠ discipline blurring. Ambiguity-collapse applied at a new target.
**Verdict: SURVIVE**

### 4. System-wide file-naming convention
**Prosecution:** Indirection for just 2-3 commands; YAGNI.
**Defense:** Future-proofs for new disciplines.
**Verdict: REFINE** — modify 2 commands directly now; extract to shared rule at 4th need.

### 5. Example showcase (Layer 0)
**Prosecution:** Adds a delay; gaps may be small.
**Defense:** Only if applied to a question we'd run anyway — zero extra cost.
**Verdict: SURVIVE (caveat)** — use next real inquiry, not contrived example.

### 6. State table in spec
**Prosecution:** Prose might work for small machines.
**Defense:** 7+ states with conditionals — table wins.
**Verdict: SURVIVE**

### 7. Classic flow as subset
**Status:** Killed with Innovation 1 (user override).
**Verdict: KILL** — classic stays parallel, not hierarchical.

### 8. After-10-runs checkpoint
**Verdict: SURVIVE** — principle, not magic number.

### 9. Scope discipline (Layers 1-3 only)
**Verdict: SURVIVE**

### 10. Per-discipline skip with justification
**Prosecution:** Erodes insurance. Human judgment unreliable at Level 0-2 — that's why we're collecting data.
**Defense:** Training-data value; justification logging adds friction.
**Verdict: KILL for Level 0-2.** Seed: revisit at Level 3+ when system has calibration data.

### 11. Dry-run mode
**Verdict: KILL (for now)** — YAGNI; add if state-machine debugging becomes painful.

### 12. Git terminology in docs
**Verdict: REFINE** — opportunistic use only.

### 13. Make-style targeted reruns
**Verdict: REFINE (frontier)** — premature.

### 14. Migration path
**Verdict: REFINE (frontier)** — premature.

---

## Assembly

User override reshapes the plan back toward sensemaking's two-commands structure, with valuable innovation refinements preserved.

**Verdict: SURVIVE** — coherent plan respecting regression-protection.

---

## The Answer

```
MVL+ IMPLEMENTATION PLAN

CONSTRAINT (user-enforced): /mvl untouched. /mvl+ separate. Regression protection.

LAYER 0 — Example showcase:
  Before codifying, run extended MVL manually on next real question:
  /explore → /decompose → /sense-making → /innovate → /td_critique

LAYER 1 — File naming:
  Modify /explore: save as exploration.md when input is inquiry _branch.md
  Modify /decompose: save as decomposition.md when input is inquiry _branch.md

LAYER 2 — Create /mvl+ (separate command):
  NEW: _state.md with E/D/S/I/C checkboxes + flow-type: extended field
  RESUME: state table (7+ states)
  TERMINATE: archive 5 files; finding.md prompt reads 6 sources
  /mvl classic UNCHANGED

LAYER 3 — /innovate spec update:
  Read E.md, D.md, S.md
  Reconciliation prelude (ambiguity-collapse pattern on contradictions)
  Optional recursion with inline per-pass sections

DEFERRED (own SIC loops or revisit later):
  Layer 4 items, per-discipline skip (Level 3+), dry-run, migration, 
  make-style reruns, system-wide convention extraction

PRINCIPLE: Test-in-practice (Layer 0) before codifying.
```

Killed: evolve `/mvl`, classic-as-subset, per-discipline skip (L0-2), dry-run.

---

## Convergence Telemetry

* **Dimensions:** 7/7, all critical: YES
* **Adversarial:** STRONG — user override + insurance-erosion kill of skip + other refinements
* **Stability:** CHANGED — constraint reshaped plan back to two-commands + refinements
* **Clean SURVIVE:** YES — the assembled plan
* **Failure modes:** None
* **Overall: PROCEED**
