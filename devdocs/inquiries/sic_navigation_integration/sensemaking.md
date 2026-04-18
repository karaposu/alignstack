# Sensemaking: SIC + Navigation Integration

## User Input
devdocs/inquiries/sic_navigation_integration/_branch.md

---

## SV6 — Stabilized Model

**Navigation = MVL's iteration-complete, upgraded. No new commands. No new files. No new mechanisms.**

### The Complete Flow

```
1. /MVL "question" → creates inquiry
2. S → I → C (human runs, MVL routes between)
3. /MVL folder/ → ITERATION COMPLETE
   → If answered: TERMINATE
   → If not: produce NAVIGATION PLAN
     Auto-derive from C output:
       SURVIVE → DEEPEN/DEVELOP
       REFINE → REFINE
       KILL seed → PURSUE SEED
       Frontier → INVESTIGATE FRONTIER
       Telemetry flag → RE-RUN DEEPER
       Scope gap → WIDEN
     Apply branch limit (top 3)
     Detect dependencies
     Present to human: "Approve? [approve / modify / override]"
4. Human approves → MVL creates branch sub-folders
5. Human runs /MVL on each branch → each runs SIC
6. When branches complete → /MVL folder/
   → MERGE ready → runs as SIC on synthesis question
   → Or new navigation plan
```

### What Changes

Three edits to MVL command:
1. **Iteration-complete** — replace "narrow and iterate" with typed plan production
2. **Resume logic** — add branch status tracking from `_state.md`
3. **Plan execution** — create sub-folders with `_branch.md` when human approves plan

### Key Design Decisions

- **Navigation inside MVL** — not a separate command. MVL already handles iteration. Navigation is orchestration logic (deterministic type mapping), not cognition.
- **Plan in `_state.md`** — no new file. Plan section added to existing state file.
- **Branches as sub-folders** — each branch is its own SIC inquiry in a sub-folder.
- **Sequential execution** — parallel is Build 4-5 optimization. Sequential works now.
- **MERGE as SIC** — synthesis question runs full S→I→C. No new mechanism.
- **Branch limit** — top 3 by impact on goal. Prevents plan explosion.
- **Human approves** — system proposes auto-derived plan, human confirms/modifies/overrides.

### The Plan Format (in `_state.md`)

```markdown
## Navigation Plan (after iteration 1)
1. DEEPEN: "Go deeper on [X]" — PARALLEL with 2
2. INVESTIGATE FRONTIER: "[Y]" — PARALLEL with 1
3. MERGE: "Synthesize 1+2" — AFTER 1, 2

## Branch Status
- [ ] branch_1_deepen_x/ — ACTIVE
- [ ] branch_2_frontier_y/ — ACTIVE
- [ ] step_3_merge — WAITING (after 1, 2)
```

### How SV6 Differs from SV1

SV1: "Where does navigation fit?" SV6: "Inside MVL's existing iteration-complete. Three edits to one command. No new mechanism."

---

## Key Insights

- **I2**: Navigation is NOT a new command — it's MVL's iteration-complete getting smarter
- **I6**: Everything is MVL. No new command. The upgrade is to ONE section of ONE command.
- **I7**: Plan production is READING + FORMATTING (orchestration), not a cognitive operation
- **I8**: The plan gives the human STRUCTURED OPTIONS instead of a single suggestion
- **I9**: Same plan format for human and autonomous use — only WHO reads it changes
- **I10**: Start with manual branch management. Automate at Build 4+.

## Saturation Indicators
- **Perspectives**: 4+definitional. Saturated.
- **Ambiguity**: 3/3 HIGH.
- **SV delta**: Moderate — specification, not reframe.
- **Anchors**: C(4), I(10), SP(3), FP(3), MN(4).
