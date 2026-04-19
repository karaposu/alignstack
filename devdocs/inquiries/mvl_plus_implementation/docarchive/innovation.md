# Innovation: MVL+ Implementation

## User Input
devdocs/inquiries/mvl_plus_implementation/sensemaking.md

---

## Seed

3-layer build plan with ~5 spec files. Innovation question: what sharpens the implementation, reveals what's missing, or offers alternative framings?

---

## Key Innovations

### 1. Evolve `/mvl`, don't create `/mvl+` (1b + 2c + 3a)

Sensemaking concluded "two commands coexist." Innovation challenges: the extended_mvl_architecture finding said "orchestration IS the MVL evolving, do not build separate orchestrator." Creating `/mvl+` splits the MVL. Evolving `/mvl` in-place (reading a `flow-type` field in `_state.md`) aligns with the philosophy: ONE command, evolving.

**Convergence: 3 mechanisms** (Lens Shifting + Inversion + Combination). Strong candidate — replaces sensemaking's two-command resolution.

### 2. `_state.md` flow-type field as authoritative state (2a)

Add `flow-type: classic | extended` to `_state.md`. Commands check this field. Progress checklist is the state source of truth (not just file existence). Resolves sensemaking's mechanical open item #1.

### 3. Reconciliation as mini-sensemaking (2b)

The reconciliation prelude in `/innovate` resolves ambiguity. That's exactly sensemaking's ambiguity-collapse. So reconciliation IS mini-sensemaking applied to contradictions across E/D/S. Proven structure at a new target.

### 4. System-wide file-naming convention (4c)

Instead of modifying `/explore` and `/decompose` separately, establish a SHARED rule: "when input is an inquiry `_branch.md`, save with the discipline's canonical name." Apply once; reference from all discipline specs.

### 5. Example showcase before codifying (5a + 1c)

Before editing specs, run ONE complete extended MVL MANUALLY on a real question. Invoke `/explore`, `/decompose`, `/sense-making`, `/innovate`, `/td_critique` in sequence. Observe gaps. Refine the plan based on actual experience. Test-in-practice before codifying.

### 6. State table in spec (7b)

RESUME logic is 7+ states for extended MVL. Prose becomes unreadable. Use a STATE TABLE. Input state columns (which files exist) × output action rows (what to run next).

### 7. Classic flow is a subset (4b merged with 1)

If `/mvl` is evolved (not split into /mvl+), classic becomes a SUBSET of the evolved command — same mechanism, fewer steps. Accessible via `flow-type: classic`. No deprecation needed; just a mode.

### 8. After-10-runs data feeds Layer 4 (7a)

Confirms the instrumental-rigidity principle. Extended MVL runs generate rich per-cycle data. After ~10 runs, Layer 4 items (recursion UX, telemetry-anomaly thresholds) have empirical grounding.

### 9. Per-discipline skip with required justification (5c) — REFINE

At Level 0-2, human can skip E or D for trivially-defined problems, but MUST log the reason. Every skip becomes Level 3+ training data for orchestration. Optional capability, not default.

---

## Assembly

```
REFINED IMPLEMENTATION PLAN (unifies commands, adds test-in-practice):

LAYER 0 — Example showcase (new; before codifying):
  Run ONE complete extended MVL manually on a real question.
  Invoke /explore, /decompose, /sense-making, /innovate, /td_critique in sequence.
  Observe gaps. Feed back into spec design.

LAYER 1 — System-wide file-naming convention:
  Shared rule: when input is an inquiry _branch.md,
  save output with discipline's canonical name.
  Applied once; referenced from /explore, /decompose, etc.

LAYER 2 — Evolve /mvl (no new command):
  Add flow-type field to _state.md (classic | extended; default: extended for new).
  RESUME logic: read flow-type, dispatch to state machine.
  Extended state machine as a STATE TABLE (not prose).
  Classic flow = subset (same mechanism, fewer steps).
  _state.md template adds Exploration, Decomposition checkboxes for extended.
  Archive list + finding.md prompt include E.md, D.md for extended.

LAYER 3 — /innovate spec:
  Read E.md, D.md, S.md (multi-input).
  Reconciliation prelude = mini-sensemaking on contradictions.
  Optional recursion with inline per-pass sections in innovation.md.

OPTIONAL CAPABILITIES (don't block layers 1-3):
  - Per-discipline skip with required justification
  - Dry-run mode
  - Git-terminology in docs
  - Make-style rerun detection

LAYER 4 — Deferred to own SIC loops:
  - Recursion trigger UX
  - Telemetry-anomaly thresholds
  - Self-improvement observation mechanism

PRINCIPLE: Test-in-practice BEFORE codifying. Layer 0 happens first.
```

---

## Verdicts

### SURVIVE
- **Evolve `/mvl` instead of creating `/mvl+`** — 3 mechanisms converge; aligns with end-goal philosophy
- **`_state.md` flow-type field** as authoritative state
- **Reconciliation as mini-sensemaking** — proven structure at new target
- **System-wide file-naming convention** — applies to all disciplines
- **Example showcase before codifying** — test-in-practice
- **State table in spec** — readable for 7+ states
- **Classic flow as subset** of evolved `/mvl`
- **After-10-runs data for Layer 4**
- **Scope discipline** (Layers 1-3, no creep)

### REFINE
- **Per-discipline skip with justification log** — optional, not default
- **Dry-run mode** — add when debugging pains arise
- **Git terminology** — optional docs aid
- **Make-style targeted reruns** — frontier
- **Migration path for existing inquiries** — frontier

### KILL
- **Aggregated single-file input to /innovate** — 3 files fine
- **Code-level orchestration** — out of scope
- **Jira-style ticketing** — overkill

---

## Mechanism Coverage
* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — evolve-not-split converges via 3 mechanisms; reconciliation-as-mini-sensemaking via structural pattern recognition.
* **Survivors:** 9 SURVIVE + 5 REFINE / 3 killed
* **Assembly:** YES — unified evolved-/mvl plan with Layer 0 showcase
* **Overall: PROCEED**
