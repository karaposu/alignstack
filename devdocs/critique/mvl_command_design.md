# Critique: MVL Command Design

## Verdict: REFINE → then SURVIVE

### What was refined
The original proposal removed telemetry reading entirely. Prosecution caught this: telemetry reading between steps IS the quality gate. Kept it but simplified — "read telemetry, flag concerns" instead of the full threshold table.

### The MVL design (post-critique)

- Always S → I → C. No classification. No variable pipelines.
- Create inquiry folder + _branch.md + _state.md (same as inquiry)
- RESUME: check what's done, read telemetry (simplified), route to next step
- Iteration complete: "Is the question answered?" YES → terminate. NO → loop again focused on the gap.
- ~80 lines instead of 312

### What was kept from inquiry
- Folder structure (_branch.md, _state.md)
- State tracking and cross-session resume
- Telemetry reading (simplified)

### What was removed
- Problem classification (5 types → none)
- Variable pipeline selection → always S→I→C
- Wayfinding checkpoint → "is the question answered?"
- Full threshold table → "flag concerns"
