# Innovation: Adapter Build Implementation

## User Input
devdocs/inquiries/adapter_build_implementation/sensemaking.md

---

## Seed

Self-service injection: each command reads `_adapter.md` from inquiry folder, applies its section. MVL copies from templates. Three edits: templates, command steps, MVL copy. Innovation question: what improvements emerge from the alignment identity, `_branch.md` format, and session's discoveries?

---

## Key Innovations

### 1. Adapter bridges `_branch.md` alignment fields (2a + 1a)

S section directly references alignment fields:
```markdown
## S — L0-L2 Alignment Guidance
- L0: Read _branch.md's workspace status. If stale/absent, flag.
- L1: Use the Rephrased Question as primary input.
- L2: If Scope Check flagged a gap, investigate it during sensemaking.
- L5-pre: Check Prior Coherence entries, investigate flagged conflicts.
```

Not "check scope" but "read L2: Scope Check, if NO, investigate the gap." Precise, connected.

### 2. CSS-style cascading adapters (6b + 7a + 3b)

Four levels, each overrides the previous:
```
Discipline spec defaults (built-in)
  ↓ overridden by
Project adapter (devdocs/adapter.md — project-wide)
  ↓ overridden by
Inquiry adapter (_adapter.md — per-inquiry)
  ↓ overridden by
Inline (specific instructions in _branch.md L3)
```

MVL doesn't copy templates every time. Project adapter IS the default. Per-inquiry `_adapter.md` only when different configuration needed. Eliminates copy step for common case.

### 3. One-line command edit (4a)

Each discipline command gets ONE sentence added:
> "If `_adapter.md` exists in the input folder (or `devdocs/adapter.md` as project fallback), read the section for this discipline and apply as additional guidance."

LLM handles the rest — finds the header, reads the content, follows the instructions.

### 4. Four sections, not three (5c)

SICR = four disciplines. Adapter should have four sections:
- `## S — L0-L2 Alignment Guidance`
- `## I — L3-L4 Alignment Guidance`
- `## C — L5-L6 Alignment Traps`
- `## R — Reflection Guidance`

R section makes reflection targeted per question type.

---

## Assembly

**Four-section adapter + cascading + alignment-field references + one-line edits:**

Simpler than sensemaking's design (no copy step for common case). More connected to alignment (S references `_branch.md` fields). More complete (R section). More flexible (cascading). Minimal command edits (one line each).

---

## Verdicts

### SURVIVE
- **Adapter bridges alignment fields** — Precise, connected to alignment system
- **Cascading adapters with project default** — Eliminates copy step, flexible override
- **One-line command edit** — Minimal disruption
- **R section in adapter** — Completes SICR configurability

### REFINE
- **Telemetry thresholds** — Include section header with "calibrate after ~10 runs" note

### KILL
- **Adapter replaces default behavior** — Breaks "always full S→I→C." Adapter adds, doesn't replace.

---

## Mechanism Coverage (Telemetry)

* **Generators applied:** 4/4
* **Framers applied:** 3/3
* **Convergence:** YES — 3 → cascading with project default. 2 → alignment-field references. 2 → one-line edits.
* **Survivors tested:** 4 SURVIVE + 1 REFINE / 1 killed
* **Assembly check:** YES
* **Failure modes observed:** None
* **Overall: PROCEED**
