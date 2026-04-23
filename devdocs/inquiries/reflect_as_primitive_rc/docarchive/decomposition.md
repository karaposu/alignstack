# Decomposition: Primitive RC Architecture

## User Input
Should /reflect be extended to handle Primitive RC (structural validation of discipline outputs) by running after each discipline, rather than keeping Primitive RC as separate loop-runner infrastructure?

---

## Step 1 — Perceive Coupling Topology

The "Primitive RC as /reflect-integrated checkpoint" architecture has these elements:

1. **Structural requirements per discipline** — what each discipline must produce (sections, fields, formats)
2. **Checkpoint structural validation** — binary checks run inline during pipeline
3. **Structural check result format** — how violations are stored/displayed
4. **Checkpoint display extension** — showing structural results alongside telemetry
5. **/reflect spec extension** — reading structural check results as additional input
6. **/reflect output extension** — including structural patterns in quality observations
7. **MVL/MVL+ spec changes** — updating checkpoint logic in the loop runners

Coupling analysis:
- (1) and (2) are **strongly coupled** — the checker needs the requirements to check against
- (2) and (3) are **strongly coupled** — the checker produces results in a format
- (3) and (4) are **strongly coupled** — the display reads the format
- (3) and (5) are **moderately coupled** — /reflect reads the same format, but later and independently
- (5) and (6) are **strongly coupled** — reading structural results changes what /reflect can output
- (2) and (7) are **strongly coupled** — checkpoint validation lives inside MVL/MVL+ specs
- (1) and (5) are **weakly coupled** — /reflect doesn't need to know the requirements, just the results

## Step 2 — Detect Boundaries

Two major clusters with a clear boundary between them:

**Cluster A: Checkpoint structural validation (elements 1, 2, 3, 4, 7)**
All about the per-discipline, inline, binary checking. Tightly coupled internally — the requirements define what's checked, the checker produces results, the display shows them, the loop runner hosts it all.

**Cluster B: /reflect quality integration (elements 5, 6)**
About extending /reflect to read and reason about structural check results. Coupled internally — reading results changes output format. Weakly coupled to Cluster A — only through the result format (element 3).

**Boundary:** The structural check result format (element 3) is the interface between clusters. Cluster A produces it. Cluster B consumes it.

## Step 3 — Validate Boundaries (Bottom-Up)

Atoms:
- "Check if sensemaking has SV1-SV6" → belongs to Cluster A (a specific structural requirement + check)
- "Display '⚠ Missing: Ambiguity Collapse'" → belongs to Cluster A (checkpoint display)
- "/reflect reads structural_checks.json" → belongs to Cluster B
- "MVL+ checkpoint calls structural_validate()" → belongs to Cluster A

Top-down and bottom-up agree. The boundary at the result format is natural.

**Confidence: HIGH** on this boundary.

## Step 4 — Express as Question Tree

**Piece 1 (Cluster A): How should the checkpoint perform and display structural validation?**
- [ ] Structural requirements defined for each discipline (S, I, C minimum; E, D for MVL+)
- [ ] Checkpoint logic runs binary checks against requirements after each discipline saves
- [ ] Results displayed in checkpoint alongside telemetry
- [ ] Results saved in a format consumable by /reflect
- [ ] MVL/MVL+ specs updated with checkpoint validation logic

**Piece 2 (Cluster B): How should /reflect integrate structural check results into quality awareness?**
- [ ] /reflect reads structural check results from the inquiry folder
- [ ] /reflect includes structural patterns in its observations (e.g., "S keeps missing ambiguity collapse")
- [ ] /reflect output format extended with structural findings section
- [ ] /reflect spec updated

## Step 5 — Map Interfaces

```
Piece 1 (Checkpoint Validation) ──produces──→ structural check results ──consumed by──→ Piece 2 (/reflect Integration)
```

- **What flows:** Structural check results (per-discipline list of pass/fail checks with labels)
- **Direction:** One-way (Piece 1 → Piece 2)
- **Format:** To be defined. Likely a simple structured section in checkpoint output or a separate file in the inquiry folder that accumulates per-discipline results.

## Step 6 — Order by Dependency

**Piece 1 first.** /reflect can't read structural check results that don't exist yet. The checkpoint validation must be built and producing results before /reflect can integrate them.

**Piece 2 second.** Depends on Piece 1's output format being defined and results being produced.

These pieces are **NOT parallel** — Piece 2 depends on Piece 1.

```
Piece 1 (Checkpoint Validation) ──must precede──→ Piece 2 (/reflect Integration)
```

## Step 7 — Self-Evaluate

| Dimension | Check | Result |
|---|---|---|
| **Independence** | Can each piece be worked on alone? | **PASS** — Piece 1 can be built and tested without /reflect changes. Piece 2 requires Piece 1's result format to be defined but not fully built. |
| **Completeness** | Do pieces cover the whole? | **PASS** — Piece 1 covers structural checking (the Primitive RC mechanism). Piece 2 covers quality integration (the /reflect enhancement). Together they implement the full architecture. |
| **Reassembly** | Pieces + interfaces = whole? | **PASS** — Checkpoint produces structural data (Piece 1) + /reflect integrates it (Piece 2) = quality-aware pipeline with unified output. |
| **Tractability** | Is each piece doable in one focused pass? | **PASS** — Piece 1 is defining requirements + updating checkpoint logic. Piece 2 is updating /reflect's spec. |
| **Balance** | Is complexity proportional? | **PASS (marginal)** — Piece 1 is ~70% of the work (defining requirements for each discipline + checkpoint logic + display format). Piece 2 is ~30%. Acceptable imbalance — Piece 1 is the core work. |
