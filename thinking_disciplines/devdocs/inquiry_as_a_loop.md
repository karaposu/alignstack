# Inquiry — A Primitive Loop Runner (First Draft)

This document explains what `/inquiry` does as a loop runner for the thinking disciplines. This is a first draft — a primitive, functional loop that gets the job done but should be improved in many ways.

---

## What Inquiry Does

Inquiry is the operational loop manager. It is **not** a thinking discipline — it's the plumbing that connects the disciplines together into an iterative process.

Its job has three parts:

### 1. CONFIGURE — Design the pipeline

When you give inquiry a new question, it:
- Classifies the problem type (ambiguous, complex, broken, novel, clear)
- Selects which disciplines to chain (e.g. S -> I -> C, or S -> Decompose -> [per branch: S->I->C])
- Creates an inquiry folder with `_branch.md` (the question) and `_state.md` (the tracking state)
- Tells you which command to run first

### 2. Track Progress — Manage the pipeline

When you resume inquiry on an existing folder, it:
- Reads `_state.md` to see where you are
- Checks which discipline outputs exist (sensemaking.md? innovation.md? critique.md?)
- Figures out the next step in the pipeline
- Tells you which command to run next

### 3. Run Wayfinding — Steer between iterations

When all pipeline steps for an iteration are complete, inquiry:
- Reads the discipline outputs from that iteration
- Runs a wayfinding checkpoint (reads 3 layers, produces a steering move)
- Updates `_state.md` with the new iteration, the move, and the next command
- Tells you what to do next based on the move (BROADEN, NARROW, SHIFT, DIAGNOSE, TERMINATE, RECONSIDER)

Plus SYNTHESIZE after TERMINATE — compiles the scattered outputs into a coherent deliverable.

---

## The Loop Pattern

The human drives the loop. Inquiry just tells them what to do next.

```
/inquiry "question"          --> CONFIGURE, create folder
/sense-making _branch.md     --> produces sensemaking.md
/inquiry folder/             --> sees sensemaking done, says "run /innovate"
/innovate sensemaking.md     --> produces innovation.md
/inquiry folder/             --> sees innovation done, says "run /td-critique"
/td-critique folder/         --> produces critique.md
/inquiry folder/             --> ALL DONE --> wayfinding checkpoint
                                 --> move: NARROW on X
                                 --> "run /sense-making on X"
                                 ... repeat ...
/inquiry folder/             --> wayfinding: TERMINATE
                                 --> SYNTHESIZE
```

The pattern is: **discipline -> inquiry -> discipline -> inquiry -> ... -> wayfinding -> discipline -> ...**

Each discipline runs at full depth via its own command. Inquiry just manages state and calls wayfinding between iterations.

---

## What Inquiry Is NOT

- **Not a thinking discipline.** It doesn't transform understanding, produce ideas, or evaluate anything. It's operational plumbing.
- **Not wayfinding.** Wayfinding is the search intelligence (where should we steer?). Inquiry is the loop runner (manage state, track progress, tell user what to type).
- **Not the AI.** Inquiry doesn't think. It reads state files, checks what exists, and follows rules. The thinking happens in the discipline commands.

---

## Why This Is Primitive (Known Limitations)

This loop runner works but has significant room for improvement:

### 1. Fully human-driven

The human must run each discipline command manually and come back to `/inquiry` between each step. There's no automation — every transition requires the human to type the next command. A more mature version could auto-chain disciplines within an iteration, only pausing at wayfinding checkpoints.

### 2. File-based state tracking

Progress is tracked by checking whether `sensemaking.md`, `innovation.md`, `critique.md` exist in the folder. This is fragile — renamed files, partial outputs, or multiple iterations' files can confuse the tracker. A more robust version would use structured state in `_state.md` rather than file existence checks.

### 3. Wayfinding is inlined, not invoked

Currently inquiry runs the wayfinding checkpoint inline (reads outputs, applies 3 layers, produces a move) rather than calling `/wayfinding` as a separate command. This means wayfinding doesn't produce its own saved output file. A cleaner version would call `/wayfinding` explicitly, producing a `wayfinding.md` that gets saved alongside the other discipline outputs.

### 4. No iteration file separation

All iterations write to the same folder. Iteration 2's `sensemaking.md` overwrites iteration 1's. There's no history of what each iteration produced — only the latest. A more mature version would create sub-folders per iteration or version the files.

### 5. Single pipeline only

CONFIGURE picks one pipeline and runs it. If the problem turns out to need a different pipeline mid-execution, there's no clean way to restructure — the human has to manually override. Wayfinding's RECONSIDER can flag the need, but the actual pipeline change is manual.

### 6. No parallel branches

Decomposition creates sub-branches, but each branch runs sequentially. There's no support for running branches in parallel or merging results across branches. The folder structure supports it in theory (each branch gets its own folder), but inquiry doesn't manage multi-branch coordination.

### 7. SYNTHESIZE is underspecified

The SYNTHESIZE step at the end says "compile into a deliverable" but doesn't have a discipline-level process for how to do this well. It's currently just "read everything, write a document." A proper synthesis discipline or protocol would improve the quality of final output.

### 8. No learning across inquiries

Each inquiry starts from scratch. There's no mechanism for carrying lessons from one inquiry to the next — no cross-inquiry memory. The REFLECT discipline (planned but not built) and a persistent lessons store would address this.

---

## What This First Draft Gets Right

Despite being primitive, the core design decisions are sound:

- **Separation of concerns**: disciplines do the thinking, inquiry does the plumbing, wayfinding does the steering. Each has a clear job.
- **Human in the loop**: the human sees every step, can override anything, and drives the pace. Nothing runs without their involvement.
- **State persistence**: `_state.md` captures everything needed to resume across sessions. Any AI, any time.
- **Folder-as-structure**: the file system IS the thinking structure. No database, no special tools — just folders and markdown files.
- **Discipline independence**: each discipline runs via its own command at full depth. Inquiry doesn't compress or simplify the disciplines — it just sequences them.

The architecture is right. The implementation is minimal. That's appropriate for a first draft — get the loop working, see where it breaks in practice, then improve the weak points based on real experience.

