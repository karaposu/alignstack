# Sensemaking: Inquiry Finalization

## User Input
devdocs/inquiries/inquiry_finalization/_branch.md

---

## SV6 — Stabilized Model

**The finalization workflow: direct prompt → two docs → archive.**

### The Two Docs

**evolution.md** — the JOURNEY:
- What happened, how ideas evolved, with file references
- Key turns where understanding shifted
- What was killed and why
- Chronological narrative

**survivors.md** — the DESTINATION:
- The final answer
- Decisions made (with one-line reasoning)
- Current understanding (the pure version)
- Open questions (frontiers)
- Dead ends (with reasons and revisit conditions)

### The Workflow

```
1. Inquiry completes
2. Direct prompt: "Read all files in [folder]. Produce evolution.md and survivors.md."
3. Review the two docs
4. Move source files to docarchive/ sub-folder
5. Folder is lean: _branch.md + evolution.md + survivors.md
```

For complex cases: run `/sense-making folder/` first, then produce two docs from the synthesis.

### Why Direct Prompt, Not Sensemaking

Two docs are PACKAGING (summarization for consumption), not ANALYSIS (sensemaking for understanding). Different tools for different tasks. Direct prompt summarizes. Sensemaking analyzes. Use the right one.

### Command: After 3-5 Manual Uses

Start manual. Create `/finalize` when the format stabilizes through use.

### Connections

- survivors.md IS the topic briefing for future sessions
- evolution.md IS the search trajectory for that inquiry
- `docarchive/` preserves everything for revisiting — nothing lost, just organized

---

## Key Insights

- **I1**: Two docs serve different audiences — evolution (HOW, for revisiting) vs survivors (WHAT, for building on)
- **I7**: Production is a DIRECT REQUEST, not a discipline invocation
- **I9**: survivors.md IS the briefing. evolution.md IS the trajectory.
- **I10**: Synthesis (sensemaking) ≠ packaging (two-doc finalization). Different operations.

## Ambiguity Resolutions
1. Direct prompt vs customize sensemaking → Direct prompt primary, sensemaking optional upgrade. **HIGH**
2. What stays at top level → `_branch.md` + `evolution.md` + `survivors.md`. **HIGH**
3. Dead ends → In BOTH docs (narrative in evolution, reference in survivors). **HIGH**

## Saturation Indicators
- Perspectives: 4/4. Saturated.
- Ambiguity: 3/3 HIGH.
- SV delta: Moderate — packaging vs analysis distinction clarified.
