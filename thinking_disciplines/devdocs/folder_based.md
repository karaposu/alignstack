# Folder-Based Exploration System

A convention for running thinking disciplines (SIC loop + meta-search) where the folder structure IS the thinking structure. Folders are branches. Files are discipline outputs. The file system is the accumulator, the decomposition tree, and the search history — all in one.

> **The file system is isomorphic to the thinking structure.** If the thinking is a tree, the files are a tree. If a branch is explored, it has files. If it's dead, its state file says so. Navigation is `cd` and `ls`. Traceability is folder hierarchy.

---

## Core Principle

Every complex problem explored with thinking disciplines produces a tree of branches. Each branch is a question to answer. The SIC loop answers the question. Meta-search steers which branch to explore next. Decomposition creates new branches when a question is too complex to answer in one pass.

The folder system makes this tree physical — persistent, navigable, traceable, and resumable across sessions.

---

## Where Explorations Live

```
devdocs/
  sensemaking/        ← standalone sensemaking runs (one-off, not part of a loop)
  innovation/         ← standalone innovation runs (one-off)
  explorations/       ← SIC loop explorations (multi-iteration, multi-branch)
    <exploration_name>/
      _branch.md
      _state.md
      branch_a/
      branch_b/
      ...
```

**Standalone discipline runs** (one-off `/sense-making` or `/innovate` without a loop) go in `devdocs/sensemaking/` or `devdocs/innovation/` as before.

**Explorations** (multi-iteration SIC loop runs with decomposition and meta-search) go in `devdocs/explorations/<name>/`. Each exploration is a root folder with a tree of branches inside.

---

## The Branch Protocol

Every branch folder — at every level of the tree — follows the same protocol. This makes any branch self-describing and navigable without guessing what's inside.

### Required Files

#### `_branch.md` — Branch Identity

Created by: Decomposition (when the branch is first created)

```markdown
# Branch: [descriptive name]

## Question
[The specific question this branch is trying to answer.
Not a topic — a question. "What is decomposition at the meta level?"
not "Decomposition."]

## Parent
[What whole this was decomposed from. Path to parent folder.
Root branches say "Root — this is the exploration's top level."]

## Depends on
[What sibling branches this needs input from before it can be fully answered.
"None" if independent.]

## Provides to
[What sibling branches need from this branch's output.
"None" if no dependents.]

## Tags
[Keywords for cross-exploration search: #feasibility #critique #meta-level etc.]

## Verification
- [ ] [Concrete criterion that defines "this question is answered"]
- [ ] [Another criterion]
- [ ] [Another criterion]
[Branch is COMPLETE when all criteria are checked.]
```

The `_branch.md` is written ONCE when the branch is created and rarely modified. It defines what this branch IS, not what happened in it.

#### `_state.md` — Branch State + Handoff

Created by: Meta-search (updated at every checkpoint)

```markdown
# State: [branch name]

## Status
[One of: ACTIVE | DEAD(condition) | SURVIVED | RECONSIDERING | COMPLETE | UNEXPLORED]

## Directive
[What the next session/agent should do with this branch.
Written by meta-search at the last checkpoint.]

Focus: [which dimension to emphasize]
Direction: [BROADEN | NARROW | SHIFT]
Depth: [how many more iterations before reassessing]

## History
[Chronological log with timestamps (date + time). One line per significant event.]
- [YYYY-MM-DD HH:MM]: [what happened]
- [YYYY-MM-DD HH:MM]: [what happened]

## Kill Record
[For DEAD branches: the specific condition that killed it, stated as a falsifiable predicate.]
- [Idea/approach]: killed on [dimension] (condition: "[specific, falsifiable reason]")

## Survival Record
[For SURVIVED branches: which dimensions it passed and with what strength.]

## Near-Misses
[Ideas that almost flipped — near the boundary between verdicts.]

## Iteration Count
[How many SIC iterations have run on this branch.]

## Time Budget
[Optional. Set by user at CONFIGURE.]
Budget: [unlimited | N hours | deadline]
```

The `_state.md` is the **handoff document**. Any AI session or human reads it and knows: what is this branch's status, what happened here, and what to do next. This is the file that makes multi-session work possible.

### Temporal Awareness

`/explore` runs `date` at each checkpoint and records the timestamp in the history entry. From timestamps, meta-search derives:

| Metric | Computed from |
|---|---|
| Time between checkpoints | timestamp_N - timestamp_N-1 |
| Session duration | last checkpoint - first checkpoint of this session |
| Time since last activity | now - last checkpoint |
| Budget remaining | budget - session duration (if budget set) |

When a time budget is set and approaching its limit, meta-search factors this into its moves — "approaching budget, consider NARROW or TERMINATE." This gives the system temporal pressure awareness that matches the human's real-world constraints.

### Content Files

Created by: The SIC loop disciplines, one per iteration.

For **single-iteration branches** (most branches):
```
branch_name/
  _branch.md
  _state.md
  sensemaking.md
  innovation.md
  critique.md
```

For **multi-iteration branches** (when the SIC loop runs multiple passes):
```
branch_name/
  _branch.md
  _state.md
  iteration_1/
    sensemaking.md
    innovation.md
    critique.md
  iteration_2/
    sensemaking.md
    innovation.md
    critique.md
```

Each iteration subfolder is a self-contained snapshot. Meta-search's velocity is computed by diffing between iterations.

### Subfolders = Further Decomposition

When a branch is too complex to answer in one SIC loop, decomposition breaks it into sub-branches. Each sub-branch is a subfolder following the same protocol.

```
branch_name/
  _branch.md          ← the parent question
  _state.md
  sub_branch_1/       ← a sub-question decomposed from the parent
    _branch.md
    _state.md
    sensemaking.md
    ...
  sub_branch_2/
    _branch.md
    _state.md
    ...
```

The parent's `_state.md` reflects the aggregate state of its children. The parent question is "answered" when all sub-questions are answered (all children's verification criteria are met).

---

## File Naming Conventions

| Prefix/Pattern | Meaning |
|---|---|
| `_` prefix (`_branch.md`, `_state.md`) | Meta-file — about the branch itself, not discipline content |
| No prefix (`sensemaking.md`, `innovation.md`, `critique.md`) | Discipline output — content produced by the SIC loop |
| `iteration_N/` subfolder | Multi-iteration content — each iteration is a self-contained unit |
| Named subfolder (`sub_branch_name/`) | Further decomposition — a child branch |

---

## How the Disciplines Map to File Operations

### Decomposition → Create Folders

Decomposition takes a complex question and produces N sub-questions. Each sub-question becomes a subfolder with its own `_branch.md` (stating the question, verification criteria, dependencies).

**The act of `mkdir` + writing `_branch.md` IS the physical act of decomposing.**

### SIC Loop → Fill Folders with Files

Each SIC iteration produces discipline output files inside the current branch folder. Sensemaking produces `sensemaking.md`. Innovation produces `innovation.md`. Critique produces `critique.md`.

If the loop runs multiple iterations, each iteration gets its own subfolder (`iteration_1/`, `iteration_2/`, ...).

### Meta-Search → Navigate + Update State

Meta-search reads `_state.md` files across the tree to understand the exploration's state. It produces two outputs:
1. Updates to `_state.md` (status changes, directives, kill records)
2. Navigation decisions (which branch to work on next)

**Meta-search moves → file system actions:**

| Move | Action |
|---|---|
| **BROADEN** | Create new sibling folder at the same level (explore a different region) |
| **NARROW** | Create subfolder inside a surviving branch (go deeper on this question) |
| **SHIFT** | Create new sibling folder with a different dimension focus |
| **DIAGNOSE** | Update `_state.md` to flag "needs re-sensemaking" — navigate to parent level |
| **TERMINATE** | Update root `_state.md` with final verdicts and survivors |
| **RECONSIDER** | Navigate to a DEAD branch, update its `_state.md` to RECONSIDERING, re-run SIC |

### Critique's Accumulator → `_state.md`

The accumulator (kill records, survival records, convergence trend, near-misses) lives in `_state.md`. Each branch has its own accumulator. The root `_state.md` aggregates across all branches.

---

## Traceability

The folder hierarchy provides all traceability primitives:

| Trace direction | How | Example |
|---|---|---|
| **Piece → Whole** (up) | Navigate to parent folder | `cd ..` — this branch's parent is the question it was decomposed from |
| **Whole → Pieces** (down) | List subfolders | `ls` — these are the sub-questions this branch was decomposed into |
| **Piece → Sibling** (sideways) | Navigate to sibling folder | `cd ../sibling/` — another piece at the same decomposition level |
| **Current state** | Read `_state.md` | Status, directive, kill record, iteration count |
| **Branch identity** | Read `_branch.md` | Question, parent, dependencies, verification criteria |
| **Full exploration shape** | Run `tree` or scan `_branch.md` files | See the entire question map at a glance |

**Reassembly test:** Given all leaf branches answered (verification criteria met) + interfaces satisfied (depends-on/provides-to in `_branch.md`), the root question should be answerable. If not, the decomposition missed something.

---

## Starting an Exploration

### Step 1: Create the Root

```
mkdir devdocs/explorations/<exploration_name>
```

Write `_branch.md`:
```markdown
# Branch: [exploration name]

## Question
[The top-level question this exploration answers]

## Parent
Root — this is the exploration's top level.

## Depends on
None

## Provides to
None

## Tags
[#relevant #tags]

## Verification
- [ ] [How we know this exploration is complete]
```

Write `_state.md`:
```markdown
# State: [exploration name]

## Status
ACTIVE

## Directive
Start with sensemaking — clarify the question before decomposing.

## History
- [date]: Exploration created.

## Iteration Count
0
```

### Step 2: Run Sensemaking on the Root Question

Produce `sensemaking.md` in the root folder. This clarifies the question before any decomposition.

### Step 3: Decompose if Needed

If the question is too complex for one SIC loop:

1. Identify sub-questions (decomposition)
2. Create a subfolder per sub-question
3. Write `_branch.md` for each (question, dependencies, verification)
4. Write `_state.md` for each (UNEXPLORED status, initial directive)

### Step 4: Run the SIC Loop on Each Branch

For each active branch:
1. Sensemaking → `sensemaking.md`
2. Innovation → `innovation.md`
3. Critique → `critique.md`

If multiple iterations: create `iteration_N/` subfolders.

### Step 5: Meta-Search Checkpoint

After each SIC iteration:
1. Read all `_state.md` files in the tree
2. Integrate: present layer (coverage), trend layer (velocity), memory layer (kill conditions vs new info)
3. Produce a move: BROADEN, NARROW, SHIFT, DIAGNOSE, TERMINATE, or RECONSIDER
4. Update `_state.md` with the directive for the next session
5. Execute the move (create folder, navigate, update state)

### Step 6: Terminate When Done

When convergence criteria are met:
- At least one branch has SURVIVED or COMPLETE status
- The landscape has stabilized (no new branches in last 2 iterations)
- Root verification criteria can be checked

Update root `_state.md` with final verdicts. The exploration is complete.

---

## Reading an Existing Exploration

To understand an exploration you didn't create:

1. **Start at root** — read `_branch.md` (what's the top-level question?) and `_state.md` (what's the current status and directive?)
2. **Scan the tree** — run `tree` or `ls -R` to see the branch structure. Each folder name is a sub-question.
3. **Read `_branch.md` files** — one sentence per branch. In 30 seconds you know the full question map.
4. **Check `_state.md` files** — which branches are active, dead, survived, complete? Where was the exploration when it was last touched?
5. **Read the directive** — the root `_state.md` directive tells you what to do next.
6. **Go deep only where needed** — read discipline output files only for branches you're actively working on.

---

## Rules

1. **Every folder gets `_branch.md` and `_state.md`.** No exceptions. A folder without `_branch.md` is an unidentifiable branch. A folder without `_state.md` is invisible to meta-search.

2. **`_branch.md` is written once.** It defines the question and verification criteria. If the question changes fundamentally, that's a new branch, not a modified one.

3. **`_state.md` is updated at every checkpoint.** It always reflects the current state. The directive section always tells the next session what to do. Stale `_state.md` = lost context.

4. **Dead branches are never deleted.** They're marked DEAD in `_state.md` with their kill condition as a falsifiable predicate. They stay in the tree for RECONSIDER. Information loss = deleting folders.

5. **Subfolders = decomposition, not organization.** A subfolder means "this question was too complex, so it was broken into sub-questions." Don't create subfolders for organizational convenience — that breaks the isomorphism between tree structure and thinking structure.

6. **Kill conditions must be falsifiable.** "This won't work" is not a kill condition. "This won't work because resource X doesn't exist" IS a kill condition — if resource X is later found, RECONSIDER fires. Unfalsifiable kills can never be reconsidered.

7. **Dependencies between siblings must be explicit.** If branch A needs something from branch B, both `_branch.md` files must say so (A's "Depends on" and B's "Provides to"). Hidden dependencies between siblings are decomposition failures.

8. **Start simple.** One exploration, following the protocol. Don't build tooling, scripts, or automation until the convention is tested. The protocol should work with nothing but `mkdir`, a text editor, and `tree`.

---

## Example: Complete Exploration Tree

```
devdocs/explorations/discipline_building/
├── _branch.md                              ← "What are the thinking disciplines and how should they be formalized?"
├── _state.md                               ← ACTIVE, 4 of 11 built
│
├── critique/                               ← "What is critique as a meta-cognitive operation?"
│   ├── _branch.md                          ← Question + verification: meta-test, distinct from others
│   ├── _state.md                           ← COMPLETE ✓
│   ├── iteration_1/
│   │   ├── sensemaking.md                  ← next_discipline_sic_loop.md
│   │   ├── innovation.md                   ← critique_as_thinking_discipline.md
│   │   └── critique.md                     ← (self-applied)
│   └── iteration_2/
│       └── sensemaking.md                  ← refinement after user feedback
│
├── meta_search/                            ← "What is meta-search as a cognitive operation?"
│   ├── _branch.md
│   ├── _state.md                           ← COMPLETE ✓
│   ├── iteration_1/
│   │   ├── sensemaking.md                  ← signal_component_meta_search.md
│   │   └── innovation.md                   ← meta_search_cognitive_operation.md
│   ├── iteration_2/
│   │   ├── sensemaking.md                  ← resurrect_belongs_in_meta_search.md
│   │   └── innovation.md                   ← meta_search_redefined_with_memory.md
│   └── folder_system/                      ← sub-branch: how meta-search maps to file system
│       ├── _branch.md
│       ├── _state.md                       ← COMPLETE ✓
│       ├── sensemaking.md                  ← folder_structure_as_decomposition_tree.md
│       └── innovation.md                   ← folder_tree_meta_innovations.md
│
├── decomposition/                          ← "What is decomposition at the meta level?"
│   ├── _branch.md
│   ├── _state.md                           ← ACTIVE ← current focus
│   └── sensemaking.md                      ← what_is_decomposition.md
│
├── [remaining planned disciplines...]      ← UNEXPLORED
│
└── meta_plan/                              ← DEAD(condition: "instruments insufficient")
    ├── _branch.md                          ← near-miss, flagged for RECONSIDER
    └── _state.md                           ← kill condition: "can't orchestrate <5 instruments"
```

This tree is the exploration's THINKING HISTORY — not just what was decided, but what was explored, what was killed and why, what's still pending, and what to do next. A new person reads it top-down and understands the full arc of work in minutes.