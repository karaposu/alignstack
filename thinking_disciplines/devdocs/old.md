# Structural Sensemaking — Refining Decomposition After Critique

## Final Sense Version (SV6 — Stabilized Model)

Three SIC passes converged on the same definition:

**From sensemaking:** Core operation = structural perception of internal topology. Five components. Scale operator. Prerequisite: sensemaking.

**From innovation:** Five surviving innovations — question tree, dual-direction, progressive versions, interface-first, self-evaluation.

**From critique:** Coupling perception as singular core. Five innovations as supporting components. 7-step sequential process. Progressive versions opt-in. Interface-first as one technique.

**From this refinement:** Operational definition of coupling perception (propagation assessment between element pairs). Progressive version trigger (SIC loop detects boundary mismatch during execution). Stopping criteria for recursion (tractable, atomic, over-decomposed, directly verifiable).

### Resolved Ambiguities

1. **Coupling perception operationalized:** For each pair of elements, "if I change A, does B need to change?" The topology of these relationships IS the coupling map.

2. **Progressive version trigger defined:** Boundaries discovered wrong during execution — hidden coupling, wrong grouping, missing sub-structure, interface mismatch. Triggered by SIC loop or meta-search, not by decomposition itself.

3. **Recursive stopping criteria:** Stop when the piece is (a) tractable for one SIC loop, (b) atomic (flat coupling map), (c) over-decomposed (sub-pieces can't exist independently), or (d) directly verifiable (verification criteria checkable without further decomposition).

### Definition is stable. Formalized as `thinking_disciplines/decomposition.md`.



# Structural Sensemaking — Defining the Exploration Discipline

## SV6 — Stabilized Model

> **Structural Exploration is the process of mapping unknown territory through iterative scan-signal-probe cycles, tracking the frontier between known and unknown, and assessing confidence across the map — to produce a structural map that reveals what exists, where the gaps are, and where to look next.**

### Transform

Unknown territory → Structural map with confidence levels

### The Five Components

| Component | What it does | Output |
|---|---|---|
| **Scan** | Breadth-first pass at current resolution | Surface-level inventory of what exists |
| **Signal Detection** | Identify what stands out — what deserves deeper investigation | Prioritized list of signals to probe |
| **Probe** | Depth pass on detected signals | Detailed understanding of specific features |
| **Frontier Tracking** | Track the boundary between known and unknown | Frontier state: advancing, stable, closed |
| **Confidence Mapping** | Assess what's known well vs partially vs not at all | Map with confidence levels and identified gaps |

### The Coverage Strategy (Surprise-Based)

Exploration can't cover the unknown exhaustively. Its coverage is surprise-based:

- **Frontier stability** — new scans stop pushing the frontier outward. The territory's rough boundaries are known.
- **Declining discovery rate** — each new scan produces fewer new structural features. Diminishing returns signal convergence.
- **Bounded gaps** — remaining unknowns are between explored areas (interpolatable) not beyond them (uncharted voids).

When all three hold, exploration has converged.

### Key Distinctions

| | Exploration | Sensemaking |
|---|---|---|
| **Operates on** | The unknown | The ambiguous |
| **Produces** | A map (what exists, where, with what confidence) | Understanding (what it means, why, how) |
| **Success** | Territory mapped, surprises unlikely | Ambiguity resolved, stable meaning |

Exploration discovers WHAT and WHERE. Sensemaking discovers WHY and HOW. Explore first, sense-make on what you found.

### Relationship to Other Disciplines

Exploration is the upstream discipline — it produces the raw material other disciplines operate on.

```
Exploration (map the territory)
    → Sensemaking (understand what was found)
    → Innovation (create novel approaches in mapped regions)
    → Decomposition (partition if the mapped territory is too large)
    → Critique (evaluate candidates from explored landscape)
```

### Domain

Any unknown territory — codebases, solution spaces, business landscapes, research fields, problem spaces. The cognitive operation is the same regardless of domain.

### Still To Define

- Process model (how do the five components sequence and iterate?)
- Failure modes (premature depth? premature termination? false confidence? surface-only scanning?)
- Confidence level schema (what are the levels? how do they map to action readiness?)
# Structural Sensemaking — What Should `/explore` Actually Be?

## Final Sense Version (SV6)

### The Core Insight

`/explore` should be a **short stateful protocol** (~80-100 lines), not a 328-line monolithic command. Each turn does ONE discipline at full depth. `_state.md` drives each turn with a concrete Next Step instruction. The command file defines the protocol; `_state.md` contains the instance.

### What the Command File Contains (~80-100 lines)

- How to detect new vs resume
- How CONFIGURE works (classify → select → sequence → present)
- List of step types (sensemaking, innovation, critique, decomposition, meta-search checkpoint)
- Transition rules (what follows what)
- Autonomy rules (when to auto-continue vs pause)
- Folder protocol reference
- Rules (CONFIGURE first, meta-files, dead branches, circuit breaker)

### What the Command File Does NOT Contain

- Full discipline frameworks (live in discipline files)
- Detailed discipline instructions (live in command files: /sense-making, /innovate, /critic)
- Step-by-step walkthroughs duplicating _state.md

### What `_state.md` Contains (Per Turn)

- Exploration state (status, history, accumulator, iteration count)
- Configuration (from CONFIGURE — type, pipeline, autonomy, reasoning)
- **Next Step** — concrete, self-contained instruction:

```markdown
## Next Step
**Action:** Run Structural Sensemaking (full SV1-SV6)
**Input:** The question in _branch.md
**Save to:** iteration_1/sensemaking.md
**After:** Update this file — change Next Step to Innovation
```

### Each Turn's Flow

1. AI reads `_state.md`
2. Does the ONE thing Next Step says (at full discipline depth)
3. Saves output to specified location
4. Updates `_state.md`: new Next Step + history + iteration count
5. Presents brief summary + "continue?"

### User Experience

```
/explore "How should auth work?"    → CONFIGURE, pipeline, proceed?
"yes"                                → Full sensemaking, saved
"continue"                           → Full innovation, saved
"continue"                           → Full critique, saved
"continue"                           → Meta-search checkpoint, move?
"go deeper on sessions"              → New branch, sensemaking on sessions
```

### Design Principles

1. **One discipline per turn** — full depth, no condensing
2. **`_state.md` is the instruction** — concrete Next Step, not vague directives
3. **Command file is short** — orchestration protocol, not discipline content
4. **Two invocation modes** — `/explore <path>` (reliable, cross-session) + "continue" (convenient, within-session)
5. **Zero discipline duplication** — `/explore` references disciplines, doesn't redefine them


# Structural Sensemaking — Folder Structure as Decomposition Tree

## Initial Sense Version (SV1)

The user proposes that the folder structure should BE the physical manifestation of decomposition. Each folder is a branch. Each markdown file inside is a discipline output on that branch. The SIC loop runs and produces files. Decomposition produces folders. Meta-search navigates the folder tree. The file system becomes the accumulator, decomposition tree, and search history — all in one.

Connects to notes.md: "without proper and permanent way to list things, explore them and do this in retractable branches without information loss."

---

## Key Findings

### The Core Principle

**The file system is isomorphic to the thinking structure.** If the thinking is a tree with branches, the files are a tree with folders. Navigation is `cd` and `ls`. Traceability is folder hierarchy.

### The Branch Protocol

Each branch folder follows a standard protocol:

| File | Purpose | Created by |
|---|---|---|
| `_branch.md` | What this branch is about, why it was created, parent relationship | Decomposition |
| `_state.md` | Branch state: active/dead(condition)/survived/reconsidering. Accumulator data. | Meta-search |
| `sensemaking.md` | Sensemaking output | SIC loop |
| `innovation.md` | Innovation output | SIC loop |
| `critique.md` | Critique output (verdicts, landscape) | SIC loop |

Subfolders = further decomposition. `_` prefix = meta-files (about the branch, not content).

### Meta-Search Moves → File System Operations

| Move | File system action |
|---|---|
| BROADEN | Create new sibling folder |
| NARROW | Create subfolder inside surviving branch |
| SHIFT | Create new branch with different dimension focus |
| DIAGNOSE | Update `_state.md`, navigate to parent |
| TERMINATE | Update root `_state.md` with final verdicts |
| RECONSIDER | Navigate to dead branch, update state to "reconsidering" |

### Coexistence Design

```
devdocs/
  sensemaking/          ← standalone sensemaking runs (existing)
  innovation/           ← standalone innovation runs (existing)
  explorations/         ← SIC loop explorations (new)
    discipline_building/    ← an exploration
      _branch.md
      _state.md
      critique/             ← branch
        _branch.md
        _state.md           ← SURVIVED
        sensemaking.md
        innovation.md
        critique.md
      meta_search/          ← branch
        _branch.md
        _state.md           ← SURVIVED
        ...
      decomposition/        ← branch (current)
        _branch.md
        _state.md           ← ACTIVE
        ...
```

### What This Solves

- **Context tracking** — the folder tree IS the persistent, navigable context
- **Branch traceability** — navigate up (parent folder), down (subfolders), sideways (siblings)
- **No information loss** — dead branches aren't deleted, just marked dead with kill conditions in `_state.md`
- **RECONSIDER** — navigate to dead branch, update state, re-explore
- **Human readability** — `tree` command shows the shape of the exploration

### Recommended Next Step

Don't over-design. Create one exploration tree (`devdocs/explorations/discipline_building/`) and run one SIC loop inside it. See what works, what's missing, what's too heavy. Convention emerges from practice.

# Structural Sensemaking — How to Actually Loop in Practice

## Final Sense Version (SV6)

### The Problem
5 disciplines defined, folder system designed, meta-search for steering — all theory. In practice: user runs commands one by one in Claude Code, manually manages everything. Too heavy for routine use.

### The Solution
One command — `/explore` — that batches the inner loop (S → I → C), manages folders, and presents meta-search checkpoints for human steering.

### The Two Loops

| Loop | What it does | Who controls it | Automation |
|---|---|---|---|
| **Inner** (SIC cycle) | Run sensemaking → innovation → critique on one question | AI (batched in one command) | Automated |
| **Outer** (meta-search) | Decide which branch next, iterate/terminate/shift | Human (AI proposes, human decides) | AI-assisted |

### The `/explore` Command Flow

```
/explore <question or folder_path>

Phase 1 — Setup
  New exploration: create folder + _branch.md + _state.md
  Existing: read _state.md directive, confirm with human

Phase 2 — SIC Cycle (batched)
  Sensemaking → save to folder
  Innovation on sensemaking output → save to folder
  Critique on innovation output → save to folder

Phase 3 — Meta-Search Checkpoint
  Read accumulator (all _state.md files)
  Analyze: present + trend + memory layers
  Propose move with reasoning

Phase 4 — Human Steering
  Human accepts/modifies/overrides
  Update _state.md with directive
  TERMINATE → done | anything else → back to Phase 2
```

### User Experience
1. Type `/explore "How should we handle auth?"`
2. AI runs full SIC cycle, saves everything
3. AI says: "Session management survived. Meta-search suggests NARROW. Continue?"
4. User: "Yes, go deeper on session management"
5. AI runs another cycle on that branch
6. Repeat until done

### Cross-Session Resume
- Close IDE, come back tomorrow
- Type `/explore devdocs/explorations/auth/`
- AI reads `_state.md`, presents directive
- User confirms → loop resumes exactly where it left off

### What to Build
One file: `commands/explore.md`. Chains S → I → C, manages folder protocol, presents meta-search. Same format as existing commands.

# Structural Sensemaking — Meta-Definition of Decomposition

## Initial Sense Version (SV1 — Baseline Understanding)

The input asks: how do we arrive at a meta-level, abstract definition of decomposition as a thinking discipline? The user identifies three dimensions they intuit are part of decomposition: (1) resolution — how fine-grained the decomposition is, (2) decomposition axis — the dimension along which you cut (user stories vs UI elements vs DB tables), and (3) relational integrity — the parts must be compatible and produce something that fits back together. The user senses that decomposition is unique among the disciplines and shouldn't be forced into innovation's structural pattern.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

* **C1:** The definition must be meta-level and domain-agnostic — not "how to decompose software" but "what decomposition IS as a cognitive operation."
* **C2:** It must be unique in structure — not forced into the pattern of innovation or sensemaking. Each discipline has its own shape.
* **C3:** The definition must account for the user's three observed dimensions: resolution, axis, and relational integrity.

### Key Insights

* **K1:** "Resolution" is about granularity — the same whole can be decomposed into 3 coarse pieces or 30 fine pieces. Something determines which granularity is appropriate. This is a free variable in every decomposition.
* **K2:** "Decomposition axis" reveals that the SAME whole can be decomposed in MULTIPLE valid ways depending on perspective. An app decomposed by user stories produces entirely different pieces than the same app decomposed by database tables. The axis is a choice, not a given.
* **K3:** "Relational integrity" — the parts must be suitable with each other — implies that decomposition produces not just pieces but also the connections between them. A pile of disconnected fragments is not a decomposition. A set of pieces with explicit interfaces IS.
* **K4:** The user's intuition that "we usually do it in a specific way where the end components are suitable with each other" points to something deeper: good decomposition preserves the whole's structure in the pieces. You should be able to reassemble the pieces and get the whole back. If you can't, you didn't decompose — you shattered.

### Structural Points

* **S1:** Three dimensions identified: resolution (how fine), axis (along what), integrity (pieces fit together).
* **S2:** The "axis" dimension implies decomposition is perspective-dependent. The same whole has multiple valid decompositions depending on purpose.
* **S3:** "Relational integrity" implies decomposition must produce interfaces alongside pieces — what flows between pieces, what each piece expects from its neighbors.

### Foundational Principles

* **P1:** Decomposition is not just breaking — it's breaking in a way that preserves reconstructability.
* **P2:** The choice of axis determines what the pieces ARE. Different axes produce fundamentally different decompositions of the same whole.
* **P3:** Resolution is purpose-driven — you decompose to a granularity where each piece is tractable for whatever operation comes next.

### Meaning-Nodes

* **M1:** Resolution (granularity control)
* **M2:** Axis (perspective-dependent cutting)
* **M3:** Relational integrity (pieces + interfaces = reconstructable whole)
* **M4:** Purpose-dependence (WHY you're decomposing determines HOW)

#### Sense Version 2 (SV2 — Anchor-Informed Understanding)

SV1 treated the three dimensions as a list. SV2 sees them as connected: the purpose of decomposition determines the axis (along what dimension to cut), which determines the resolution (how fine to cut along that axis), and the relational integrity constraint ensures that regardless of axis and resolution, the pieces can be reassembled. Purpose → Axis → Resolution, constrained by Integrity. These aren't independent parameters — they're a decision chain.

---

## Phase 2 — Perspective Checking

### Technical / Logical

In mathematics, decomposition has precise meaning: prime factorization decomposes a number into irreducible factors. Fourier analysis decomposes a signal into frequency components. Eigendecomposition decomposes a matrix into eigenvectors. In every case, the "axis" is determined by the algebra — you decompose along the dimension where the structure has natural separation. And the decomposition is always reversible — you can reconstruct the original from the components.

**New anchor (T1):** Mathematical decomposition always cuts along natural structure — where the thing already separates cleanly. The axis isn't arbitrary. The best axis is the one where the whole has natural joints.

In software: modular decomposition cuts along coupling boundaries. Microservices decompose along business capability boundaries. Both seek the same thing: cut where things are loosely connected, keep together what's tightly connected.

**New anchor (T2):** The axis that produces the cleanest decomposition is the one aligned with the internal coupling topology — where things are tightly vs loosely connected.

### Human / User

When a person faces something overwhelming, they instinctively decompose. But how? They look for the parts they can handle independently. "I'll deal with the kitchen first, then the living room." The axis (room-by-room) is chosen because rooms are naturally independent — you can clean one without affecting another. The resolution is "room-level" because that's tractable for one cleaning session.

**New anchor (H1):** Humans naturally decompose along independence boundaries — pieces that can be worked on without affecting each other.

### Strategic / Long-term

If decomposition produces pieces + interfaces, then the quality of decomposition determines the quality of parallelism. Well-decomposed work can be distributed across people/teams/agents. Poorly decomposed work creates constant cross-boundary communication — the pieces aren't really independent.

**New anchor (ST1):** The practical value of decomposition is proportional to how independent the pieces actually are. Independence enables parallelism.

### Risk / Failure

The user's mention of "relational integrity" surfaces the main risk: decomposition that produces fragments that don't fit together. This happens when the axis is chosen for convenience rather than structure, or when interfaces between pieces aren't made explicit.

**New anchor (R1):** The primary failure mode of decomposition is hidden coupling — pieces look independent but share unstated dependencies. The interface between pieces must capture everything that flows across the boundary, including assumptions.

### Resource / Feasibility

The resolution dimension is directly tied to the capacity of whatever process handles the pieces. If each piece gets a SIC loop, the piece must be SIC-loop-sized. If each piece gets a human work session, the piece must be session-sized. Resolution adapts to the consumer.

**New anchor (F1):** Resolution is determined by the capacity of the next operation. Decompose until each piece fits the thing that will process it.

### Definitional / Consistency

The existing decomposition discipline in `thinking_disciplines/decomposition.md` defines the core operation as coupling perception — seeing where things are tightly vs loosely connected, and cutting at the loose points. The user's "axis" dimension is broader: coupling is ONE possible axis, but user stories, UI elements, and DB tables are also valid axes. Coupling may be the meta-principle that explains WHY certain axes produce better decompositions than others.

**New anchor (D1):** Coupling is the meta-principle that evaluates axis quality. It doesn't replace axis choice — it determines which axis produces the best decomposition.

#### Sense Version 3 (SV3 — Multi-Perspective Understanding)

Major reframing: the user's three dimensions and the existing discipline's coupling-based definition are not in conflict — they're at different levels. Coupling is the meta-principle that determines which axis is best. An app can be decomposed by user stories, by UI elements, or by DB tables. But the decomposition that produces the most independent pieces with the cleanest interfaces is the one that cuts along the axis where coupling is lowest. Coupling doesn't replace the axis dimension — it evaluates which axis produces the best decomposition.

Resolution is purpose-driven: decompose to the granularity where each piece is tractable for the next operation. Relational integrity is the constraint that makes decomposition different from fragmentation: pieces + explicit interfaces = reconstructable whole.

---

## Phase 3 — Ambiguity Collapse

#### Ambiguity 1: Is "axis" a free choice or determined by the problem?

**Strongest counter-interpretation:**
The axis IS a free choice — there's no objectively "right" way to decompose an app. User stories, UI elements, DB tables are all valid. The choice depends on what you're trying to do, not on the problem's inherent structure.

**Resolution:**
Both are true, at different levels. The axis IS a choice — multiple valid decompositions exist. But given a specific purpose, coupling topology reveals which axis produces the most independent pieces with the cleanest interfaces. The choice is free but not equal — some axes are structurally better for a given purpose. Coupling perception evaluates axes, it doesn't eliminate the choice.

**Confidence:** HIGH — the mathematical and software perspectives both confirm that decomposition quality varies by axis, and coupling is the discriminant.

**What is now fixed?**
Decomposition has an axis selection step that precedes the actual cutting. Axis selection is informed by purpose and evaluated by coupling topology.

**What is no longer allowed?**
Treating all axes as equally good. Some produce more independent pieces than others.

**What now depends on this choice?**
The process must include: (1) identify possible axes, (2) evaluate which axis produces the lowest cross-boundary coupling, (3) cut along the best axis, (4) verify pieces are independent.

**What changed in the conceptual model?**
Decomposition now has a two-stage structure: first choose HOW to cut (axis), then execute the cut (partition). Coupling evaluates the axis choice.

---

#### Ambiguity 2: Is resolution a separate dimension or a consequence of coupling?

**Strongest counter-interpretation:**
Resolution is just "keep decomposing until pieces are small enough." It's a stopping criterion, not a dimension. You decompose along the axis, and you stop when pieces are tractable. There's nothing more to it.

**Resolution:**
Resolution is more than a stopping criterion — it's a zoom level that determines what coupling topology you can even perceive. At coarse resolution, you see 3 major clusters. At fine resolution, you see 30 sub-clusters within those clusters. The coupling topology changes depending on the resolution you're examining at. Resolution determines what structure is visible.

**Confidence:** HIGH — this matches how decomposition works in practice (architecture-level decomposition sees different boundaries than implementation-level decomposition) and aligns with the existing discipline's concept of perceiving coupling topology at different scales.

**What is now fixed?**
Resolution is a zoom level that determines what coupling topology is visible.

**What is no longer allowed?**
Treating resolution as purely "how small." It's "at what scale am I perceiving structure."

**What now depends on this choice?**
The process needs a resolution-setting step: before perceiving coupling, decide what scale to examine.

**What changed in the conceptual model?**
Resolution is not a parameter applied after decomposition — it's a parameter applied before coupling perception. It determines what you can see.

---

#### Ambiguity 3: What does "relational integrity" actually mean structurally?

**Strongest counter-interpretation:**
Relational integrity is just "don't lose anything" — completeness. The pieces should cover the whole. Interfaces are nice but optional — as long as the pieces are complete, they'll fit together.

**Resolution:**
No. Completeness (pieces cover the whole) is necessary but not sufficient. Relational integrity means the pieces + their interfaces can reconstruct the whole. This requires explicit interfaces: what flows between pieces, what each piece expects from its neighbors, what assumptions cross boundaries. Without explicit interfaces, pieces cover the whole but can't be reassembled because the connections between them are lost.

**Confidence:** HIGH — the counter-interpretation fails against practical experience: you can have "complete" pieces that can't be assembled because no one specified how they connect. The existing discipline calls this "hidden coupling" and treats it as the #1 failure mode.

**What is now fixed?**
Relational integrity = pieces + explicit interfaces + reconstructability. Not just coverage.

**What is no longer allowed?**
Treating decomposition output as "just the pieces." The output must include interfaces.

**What now depends on this choice?**
The decomposition command must produce not just questions/folders but also explicit interface definitions (Depends on / Provides to in `_branch.md`).

**What changed in the conceptual model?**
Decomposition output is a graph, not a list. Nodes are pieces. Edges are interfaces. The graph must be connected and reconstructable to the original whole.

---

#### Sense Version 4 (SV4 — Clarified Understanding)

Decomposition has three structural dimensions:
1. **Resolution** — the zoom level at which you perceive structure. Set before coupling perception. Determined by the capacity of the next operation.
2. **Axis** — which dimension to cut along. Multiple valid axes exist. Evaluated by coupling topology — the best axis produces the most independent pieces.
3. **Relational integrity** — pieces + explicit interfaces = reconstructable whole. Not just completeness but reconstructability.

These three map onto the existing discipline's concepts: resolution → recursive decomposition depth, axis → coupling perception (which axis has the lowest cross-boundary coupling), integrity → interface mapping + reassembly test.

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed

* **Core operation:** Perceiving internal coupling topology and cutting at natural boundaries — confirmed, not contradicted by the user's three dimensions.
* **Resolution:** A zoom-level parameter set before coupling perception, driven by the capacity of the next operation.
* **Axis:** A choice evaluated by coupling topology. Not arbitrary — some axes produce structurally better decompositions.
* **Integrity constraint:** Output must be pieces + explicit interfaces, verifiable by reassembly test.
* **Purpose-dependence:** WHY you decompose determines resolution and axis. Decomposition is not context-free.

### Eliminated

* Resolution as a simple "how small" parameter — it's a perceptual zoom level.
* All axes being equally valid — coupling evaluates axis quality.
* Decomposition output as a flat list of pieces — it's a graph with interfaces.

### Remaining

* How to formalize axis selection as a step (the existing discipline has coupling perception but not explicit axis choice).
* Whether the existing 7-step process needs modification or whether axis selection is implicit in Step 1 (perceive coupling topology).

#### Sense Version 5 (SV5 — Constrained Understanding)

The user's three dimensions are real and structurally important. They don't contradict the existing decomposition discipline — they illuminate aspects that the existing definition handles implicitly but doesn't call out explicitly. The existing discipline's coupling perception is the meta-principle that connects all three: coupling determines which axis is best, coupling visibility depends on resolution, and coupling that crosses boundaries must be captured as explicit interfaces (relational integrity).

---

## Phase 5 — Conceptual Stabilization

#### Final Sense Version (SV6 — Stabilized Model)

**The meta-definition of decomposition is: perceiving the internal coupling topology of a complex whole and partitioning at natural boundaries to produce independently tractable pieces with explicit interfaces.**

The user's three intuited dimensions map onto this definition:

| User's dimension | Meta-level concept | Role in decomposition |
|---|---|---|
| **Resolution** | Perceptual zoom level | Determines what coupling topology is visible. Set by the capacity of the next operation (SIC-loop-sized, session-sized, etc.) |
| **Axis** | Decomposition perspective | Which dimension to cut along. Multiple valid axes exist (user stories, UI elements, DB tables). Coupling topology evaluates which axis produces the most independent pieces. |
| **Relational integrity** | Interface mapping + reassembly constraint | Pieces + explicit interfaces = reconstructable whole. Output is a connected graph, not a flat list. |

The connecting principle across all three is **coupling** — the degree to which changing one thing forces change in another. Coupling determines the best axis (cut where coupling is lowest), coupling visibility depends on resolution (coarse vs fine zoom), and coupling that crosses boundaries must be made explicit (interfaces = relational integrity).

**How SV6 differs from SV1:** SV1 treated the three dimensions as a novel framework to build. SV6 shows they are experiential observations of a single underlying principle (coupling topology) viewed from three angles. The existing decomposition discipline already captures this principle — the user's dimensions illuminate why it works, not what's missing from it. The one actionable refinement: the existing discipline could make axis selection more explicit as a step, rather than leaving it implicit in "perceive coupling topology." The user's observation that the same app can be decomposed by user stories OR by DB tables is real — and the discipline should acknowledge that axis choice precedes coupling perception.

# Structural Sensemaking — Should Meta-Search Generate the Loop?

## Final Sense Version (SV6)

**Not illogical — it's the right design.**

### The Insight

SIC is a loop CONFIGURATION, not THE loop. Different problems need different discipline sequences. A fixed S→I→C pipeline forces every problem into one shape. A generated loop adapts to the problem.

### The Architecture

```
/explore [--depth LEVEL] <question or folder_path>

Step 0 — Loop Design (meta-search)
  Read the problem/question
  Classify: ambiguous? complex? broken? novel? clear?
  Select disciplines from available built ones
  Sequence into a pipeline
  Determine: decompose or single-branch?
  Set termination criteria
  Suggest autonomy level
  Present: "I suggest this loop: [X]. Proceed?"

Step 1-N — Execution (runtime)
  Execute Step 0's pipeline
  Between iterations: meta-search steers
  Save to folder tree
  Checkpoints per autonomy level

Termination
  Criteria met | human stops | circuit breaker
```

### Example Configurations

| Problem type | Loop configuration |
|---|---|
| Ambiguous, needs ideas | S → I → C (classic SIC) |
| Complex, needs breakdown | S → Decompose → [per branch: S → I → C] |
| Bug/failure | S → Diagnose (when built) |
| New territory | S → Explore (when built) |
| Clear problem, options needed | I → C |
| Just need clarity | S only |

### Why This Is Better

- **Adaptive:** Loop matches the problem, not the other way around
- **Delivers Meta-Plan now:** Discipline selection + sequencing as Step 0 of `/explore`, not a separate discipline to build
- **Incremental:** Each new discipline extends what Step 0 can configure
- **Not circular:** Meta-search runs BEFORE the loop (Step 0), steers DURING the loop (between iterations), doesn't run INSIDE the loop

### Key Design Decisions

- Human confirms Step 0 before execution (catches misclassifications)
- Autonomy levels still apply (control runtime, not strategy)
- Step 0 is a meta-search operation using the three-layer awareness model
- SIC is the most common configuration but not the only one
# Structural Sensemaking — What Discipline Completes the Loop?

## Initial Sense Version (SV1 — Baseline Understanding)

The input asks: given that sensemaking and innovation are built, what discipline should be built next? The user's instinct is to create a loop with those two and use it to bruteforce the solution space — but they sense the loop is incomplete. They're asking what would make a sensemaking+innovation loop *fail*. The examples they give: not knowing when to stop, losing coverage, randomly traveling through solution space. The real question underneath is: what's the minimum addition that turns two standalone disciplines into a functioning cognitive engine?

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

* **C1:** Only sensemaking and innovation are currently built. Everything else is planned but not formalized.
* **C2:** The md-file-stacking approach means outputs accumulate linearly, not in branches — there's no built-in way to track which paths were explored, which were abandoned, and why.
* **C3:** Context windows are finite. A loop that generates more and more outputs without pruning will eventually exceed what any AI can hold.
* **C4:** The disciplines must self-bootstrap — the next discipline must be buildable *using* sensemaking and innovation, since those are the only tools available.

### Key Insights

* **K1:** The user already identified the core failure modes of the loop: "not knowing when to stop" and "randomly traveling in solution space." These are not the same problem. The first is about *termination criteria*. The second is about *navigation/tracking*.
* **K2:** Sensemaking transforms ambiguity → stable understanding. Innovation transforms seed → novel viable ideas. Neither transforms "a set of outputs" → "which ones survive, which ones die, and why." That operation is **evaluation/critique**.
* **K3:** The SICF loop in `notes.md` already names four components: sensemaking + innovation + critique + feasibility. The user has already intuited that two aren't enough.
* **K4:** A loop without a kill mechanism is not a loop — it's a spiral. Sensemaking expands understanding. Innovation expands the idea space. Nothing in the current loop *contracts*.
* **K5:** The user's phrase "bruteforce the solution space" implies coverage, but bruteforce without pruning is exponential blowup. The missing discipline must be the pruning function.

### Structural Points

* **S1:** Sensemaking is an *expansion* operation — it takes compressed/ambiguous input and expands it into structured understanding.
* **S2:** Innovation is an *expansion* operation — it takes a seed and expands it into multiple novel ideas across seven mechanisms.
* **S3:** The current loop is: expand (sensemaking) → expand (innovation) → expand (sensemaking on innovation output) → expand (innovation on sensemaking output) → ... This is *divergence only*. There is no convergence force.
* **S4:** The discipline relationships diagram already shows the natural flow: Exploration → Sensemaking → Innovation → **Decomposition → Critique** → implement → Evaluation. Critique sits directly after Innovation in the designed flow.

### Foundational Principles

* **P1:** Every productive cognitive loop has both a generative phase and a selective phase. Generation without selection is noise. Selection without generation is stasis.
* **P2:** The disciplines are designed as transforms: input state → output state. A loop requires that one discipline's output state be a valid input state for another. Currently: sensemaking output (stable understanding) is a valid innovation input (seed). Innovation output (novel ideas) is a valid sensemaking input (ambiguous material to clarify). But there's no transform that takes "a pile of ideas" and outputs "which ones are worth pursuing."
* **P3:** The self-extending property requires critique — the system can only recognize its own depth limitation if it can evaluate its own outputs against some standard.

### Meaning-Nodes

* **M1:** The loop problem. Two expansion disciplines without a contraction discipline create unbounded divergence.
* **M2:** The navigation problem. Without tracking what was explored, what was rejected, and why, the loop has no memory and revisits the same territory.
* **M3:** The termination problem. Without a "good enough" signal, the loop runs forever or stops arbitrarily.

---

### Sense Version 2 (SV2 — Anchor-Informed Understanding)

The question is not "which discipline is most important in general" but "which discipline is the minimum addition that turns a divergent pair into a convergent loop." SV1 framed it as "what should we build next." SV2 reframes it as: **sensemaking and innovation are both expansion operations. The loop is structurally broken because it has no contraction force. The missing piece is whatever provides selection pressure — the ability to kill ideas, identify what's worth pursuing, and declare 'enough.'**

This is a structural gap, not a priority question. The loop literally cannot function without it.

---

## Phase 2 — Perspective Checking

### Technical / Logical

A generative loop with no selective mechanism has well-known behavior in every field: evolutionary algorithms without fitness functions produce random drift. Search algorithms without pruning are exponential. Brainstorming without filtering produces noise. The pattern is universal. The sensemaking+innovation loop without critique/evaluation is structurally identical to these — it explores but never converges.

**New anchor (T1):** The minimum viable loop is Generate → Evaluate → Iterate. Sensemaking and innovation together cover "Generate." What's missing is "Evaluate."

### Human / User

From the user's perspective, running sensemaking+innovation produces a growing pile of markdown files. After a few iterations, the user faces: "I have 15 novel ideas, each with a sensemaking analysis. Now what?" The human *becomes* the missing critique discipline — they read everything and decide what matters. This is exactly the bottleneck the disciplines are designed to eliminate.

**New anchor (H1):** Without a formalized critique/evaluation discipline, the human is the evaluation bottleneck. The loop offloads generation to the AI but forces the human to do all selection. This defeats the purpose.

### Strategic / Long-term

The user's ambition is self-extending disciplines — the system recognizes its own gaps and fills them. Self-extension requires self-evaluation. You can't recognize a gap without evaluating what you have against what you need. Critique is the prerequisite for self-extension.

**New anchor (ST1):** Critique is not just the next discipline to build — it's the discipline that *enables the system to identify which disciplines are missing.*

### Risk / Failure

The biggest risk of building more disciplines without critique: each new discipline gets built by intuition + sensemaking + innovation, but never systematically evaluated. You could build all 10 disciplines and discover that several are structurally flawed, redundant, or missing coverage — because no formal evaluation was ever applied to the disciplines themselves.

**New anchor (R1):** Without critique, the system has no immune system. It can generate but can't detect its own errors.

### Resource / Feasibility

Critique has existing commands (`/critic`, `/critic-d`) that already work in practice. The gap is not "we have nothing" but "we have ad-hoc critique without a formal framework defining what good critique is." This makes critique the *easiest* discipline to formalize — there's already working implementation to extract the framework from.

**New anchor (F1):** Critique has the lowest build cost of any planned discipline because working implementations already exist. The task is formalization, not invention.

---

### Sense Version 3 (SV3 — Multi-Perspective Understanding)

Major reframing from SV2: the question is no longer just "what completes the loop" but **"what gives the system an immune system."** Critique is simultaneously:
1. The contraction force that makes the sensemaking+innovation loop convergent instead of divergent
2. The self-evaluation mechanism that enables the self-extending property
3. The lowest-cost discipline to formalize because working implementations already exist

Every perspective independently points to critique. This is convergence in the sensemaking process itself — a strong signal.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: "Critique" vs "Evaluation" — are these the same discipline?

The `list_of_disciplines.md` lists them separately. Critique (#3) transforms "plan or idea → identified risks, errors, and conflicts." Evaluation (#9) transforms "output → intent comparison." Are these the same thing needed for the loop?

**Resolution:** They serve the loop at different moments. Critique evaluates *before implementation* — "should we pursue this idea?" Evaluation evaluates *after implementation* — "did the result match intent?" For the sensemaking+innovation loop, which operates pre-implementation, **Critique is the relevant discipline.** Evaluation applies later, after something is built.

**What is now fixed?** The discipline needed to complete the loop is Critique, not Evaluation.

**What is no longer allowed?** Treating Evaluation as a substitute for Critique in the pre-implementation loop.

**What now depends on this choice?** The formalization of Critique must include its role as the contraction force in the SIC loop, not just as a plan-checker.

**What changed in the conceptual model?** Critique has a dual identity — it's both a standalone discipline (evaluate any plan for risks) and a structural component of the SIC loop (the selective pressure that makes the loop converge).

---

### Ambiguity 2: "Not knowing when to stop" vs "randomly traveling" — are these one problem or two?

The user listed both. Are they manifestations of the same gap?

**Resolution:** They are two distinct problems that happen to share a root cause. "Not knowing when to stop" is about **termination criteria** — the loop needs a "good enough" signal. "Randomly traveling" is about **coverage tracking** — the loop needs memory of where it's been. Both are symptoms of missing selection pressure: critique provides termination criteria ("this idea survives scrutiny, stop generating") and coverage awareness ("these regions have been explored, these haven't"). But they require different components within critique.

**What is now fixed?** Critique must have two internal capabilities: (a) a survival/kill judgment (does this idea pass?), and (b) a coverage assessment (what hasn't been checked yet?).

**What is no longer allowed?** Building a critique discipline that only judges individual ideas without tracking what's been covered.

**What now depends on this choice?** The critique discipline's coverage strategy must include a meta-coverage component — not just "did we check all dimensions of this idea" but "did we check enough of the solution space."

**What changed in the conceptual model?** Critique is not just "find what's wrong with this idea." It's "find what's wrong with this idea AND assess whether we've looked at enough ideas."

---

### Ambiguity 3: What does "feasibility" mean in the SICF loop?

The `notes.md` mentions "sensemaking + innovation + critique + feasibility = SICF." Is feasibility a separate discipline, a component of critique, or something else?

**Resolution:** Feasibility is a *dimension of critique*, not a separate discipline. When you critique an idea, one of the dimensions you evaluate is "can this actually be done?" alongside "is this correct?", "is this coherent?", "is this complete?" The SICF loop is really SIC — sensemaking, innovation, critique — where feasibility is one of critique's evaluation dimensions.

**What is now fixed?** SICF is a three-discipline loop (sensemaking + innovation + critique), with feasibility as a critique dimension.

**What is no longer allowed?** Treating feasibility as a fourth standalone discipline in the loop.

**What now depends on this choice?** The critique discipline must explicitly include feasibility as one of its evaluation dimensions, alongside correctness, coherence, completeness, etc.

**What changed in the conceptual model?** The minimum viable loop is three disciplines, not four.

---

### Sense Version 4 (SV4 — Clarified Understanding)

The loop needs exactly one addition: **Critique**. Critique serves as the contraction force that makes the divergent sensemaking+innovation pair into a convergent system. It must include: (a) per-idea survival judgment across multiple dimensions including feasibility, (b) solution-space coverage tracking, and (c) termination criteria. The "feasibility" in SICF is a dimension of critique, not a separate discipline. The loop is properly called SIC: Sensemaking → Innovation → Critique → (iterate or stop).

---

## Phase 4 — Degrees-of-Freedom Reduction

### What variables are now fixed

* **The next discipline to build:** Critique. Not decomposition, not meta-plan, not exploration. Critique, because it's the structural prerequisite for the loop to function.
* **The loop structure:** Sensemaking → Innovation → Critique → (back to sensemaking with surviving ideas as new input, OR terminate if something passes all tests).
* **What critique must contain:** Not just "find risks in a plan" but a full discipline with: evaluation dimensions, coverage strategy (both per-idea and per-solution-space), severity model, termination criteria, and failure modes.
* **The build approach:** Use the existing `/critic` and `/critic-d` commands as empirical data. Run sensemaking on what they already do. Run innovation on what they're missing. Then formalize.

### What options are eliminated

* Building meta-plan next. Meta-plan sequences disciplines — but you can't sequence a loop if the loop itself doesn't work. Meta-plan is the orchestrator; it needs working instruments to orchestrate.
* Building decomposition next. Decomposition breaks complex wholes into parts. The current problem isn't "the task is too complex to handle" — it's "the loop has no convergence." Decomposition doesn't solve that.
* Building evaluation next. Evaluation compares output to intent *after* implementation. We're pre-implementation. Critique is the pre-implementation equivalent.
* Treating feasibility as a separate discipline.

### What paths remain viable

1. **Primary path:** Formalize Critique as the third discipline. Use sensemaking+innovation to build it (self-bootstrapping). Then test the SIC loop on a real problem — ideally on building the next discipline (decomposition or meta-plan).
2. **Enhancement path:** After critique is built, the SIC loop can be applied to every subsequent discipline. The system becomes self-bootstrapping: use SIC to build discipline N, then use SIC+discipline N to build discipline N+1.
3. **The SICF loop from notes.md** becomes the SIC loop with feasibility as a critique dimension. The loop shape is: Sensemaking (clarify what we're working with) → Innovation (generate novel approaches) → Critique (evaluate, prune, check coverage) → either iterate (back to sensemaking with refined input) or terminate (something survived).

---

### Sense Version 5 (SV5 — Constrained Understanding)

The solution space is now narrow. The next action is to formalize Critique as a thinking discipline with the same rigor as Sensemaking and Innovation — philosophy, components, process, coverage strategy, failure modes. The unique requirement for Critique (compared to the existing `/critic` commands) is that it must function as a loop component, not just a one-shot plan-checker. This means it needs: (a) a verdict mechanism (survive/kill/refine), (b) solution-space awareness (what has been covered, what hasn't), and (c) a convergence signal (when to stop iterating).

The build method is itself a proof-of-concept: use the SIC loop (sensemaking + innovation + the-critique-being-built) to construct the Critique discipline. If this works, it's the first demonstration that the disciplines are self-extending.

---

## Phase 5 — Conceptual Stabilization

### Final Sense Version (SV6 — Stabilized Model)

**The core finding:** A sensemaking+innovation loop fails because both are expansion operations. The loop diverges — more understanding generates more ideas, which generate more material to understand, which generates more ideas. Without a contraction force, the loop produces exponential output with no convergence signal.

**The missing discipline is Critique.** Not as a generic "find problems" tool, but as a formalized discipline that provides:

1. **Selection pressure** — a structured process for evaluating ideas across defined dimensions (correctness, coherence, feasibility, completeness, novelty survival, etc.) and rendering a verdict: pursue, refine, or kill.
2. **Coverage tracking** — awareness of what regions of the solution space have been explored and what hasn't. This prevents the "random travel" problem.
3. **Termination criteria** — a convergence signal that says "something has survived all dimensions of critique, across enough of the solution space, to warrant action." This prevents the "not knowing when to stop" problem.

**The minimum viable cognitive loop is SIC:**

```
Sensemaking (clarify) → Innovation (generate) → Critique (select/prune)
     ↑                                               │
     └───── surviving ideas as refined input ─────────┘
                        OR
                    terminate (convergence reached)
```

**How SV6 differs from SV1:** SV1 framed this as a priority question — "which discipline is most valuable next?" SV6 shows it's a structural necessity question — "which discipline makes the existing two functional?" The answer isn't about value ranking. It's about the fact that two expansion operations without a contraction operation is a divergent system. Critique is not the "most important" next discipline — it's the one without which the loop *cannot work at all*. This is a constraint, not a preference.

**The self-bootstrapping test:** Build critique using sensemaking+innovation (the only tools currently available). The act of building critique is itself the first test of whether the disciplines can self-extend. If it works, the SIC loop becomes the engine for building everything else.

# Structural Sensemaking — Pipeline Mutability Proposals

## Initial Sense Version (SV1 — Baseline Understanding)

Three proposals for fixing the meta-search gap where it can't insert decomposition mid-execution: (1) make CONFIGURE continuous, (2) let RECONSIDER target the pipeline, (3) add a complexity signal to sensemaking output. The question: do these make sense, and which is the right move?

---

## Final Sense Version (SV6 — Stabilized Model)

The innovation output produced three proposals. Sensemaking reduces them to one fix and one deferral.

The gap is real but smaller than it appeared. It's not a missing move — it's a missing target for an existing move. RECONSIDER already re-evaluates past decisions when new information invalidates them. CONFIGURE's pipeline classification is a past decision. Extending RECONSIDER to target it is structurally exact — same mechanism, same trigger pattern, new scope.

| Proposal | Verdict | Reasoning |
|---|---|---|
| Continuous CONFIGURE | Reject | Over-engineered. Polling when event-driven exists. Contradicts existing definition. |
| RECONSIDER targeting pipeline | **Accept** | Reuses existing mechanism. Event-driven. Minimal change. Structurally consistent. |
| Sensemaking complexity signal | **Defer** | Needed for autonomous mode, not for current human-steered state. |

### Key Reasoning

**Why RECONSIDER, not a new move:** RECONSIDER's definition is "re-evaluate a past verdict because new information changes the conditions." CONFIGURE's classification IS a verdict. When sensemaking reveals the problem is more complex than classified, that's new information changing conditions. Structurally identical to reconsidering a killed idea.

**Why not Continuous CONFIGURE:** Polling vs event-driven. Running full re-classification at every checkpoint adds overhead to the 95% of checkpoints where the pipeline is correct. RECONSIDER fires only when triggered — event-driven, not polling.

**Why defer the sensemaking complexity signal:** The human IS the complexity detector right now. They read SV6 and see "this is too many things." What's missing is the ability to act on that detection — to tell the system "decompose here." RECONSIDER targeting the pipeline gives them that action. The automated signal is for the future autonomous mode.

### What to update
- Meta-search discipline: expand RECONSIDER's target set to include pipeline classifications
- /explore command: allow the human to trigger pipeline reconsideration (e.g., responding to a checkpoint with "decompose first")

# Structural Sensemaking — Should We Refine Meta-Search to Absorb Meta-Plan?

## Final Sense Version (SV6)

**Yes. Refine meta-search. Absorb Meta-Plan.**

### The Structural Test

Step 0 (CONFIGURE) passes the same test that justified RESURRECT's absorption:
- Same sensor (problem context) 
- Same output type (directive)
- Same purpose (aiming the search)

Temporal extension: RESURRECT extended into the past. CONFIGURE extends into pre-execution. Same cognitive operation, different temporal scope.

### Meta-Plan Coverage Check

| Meta-Plan component | Already in meta-search | Added by Step 0 |
|---|---|---|
| Problem classification | — | ✓ |
| Context reading | ✓ (present + memory) | — |
| Discipline selection | — | ✓ |
| Sequencing | — | ✓ |
| Past context integration | ✓ (memory layer) | — |
| Adaptive re-planning | ✓ (steering moves) | — |

All 6 components covered. Meta-Plan is fully absorbed.

### The Refined Meta-Search

```
PRE-EXECUTION: CONFIGURE (design the loop — runs once)
  → problem classification, discipline selection, sequencing,
    termination criteria, autonomy level

PRESENT LAYER: BROADEN, NARROW, SHIFT (during execution)
TREND LAYER: DIAGNOSE, TERMINATE (during execution)
MEMORY LAYER: RECONSIDER (during execution)
```

7 moves. 4 temporal scopes (pre-execution, present, trend, memory).

### CONFIGURE Output

```
CONFIGURE(
  problem_type: ambiguous | complex | broken | novel | clear,
  pipeline: [discipline sequence],
  decompose: yes | no,
  termination: [criteria],
  autonomy: depth_1 | depth_N | depth_auto | depth_full,
  reasoning: [why this configuration]
)
```

### Impact

- Meta-search: gains CONFIGURE as 7th move
- Meta-Plan (#11): retired, absorbed
- Discipline count: 5 built + 5 planned = 10 total
- `/explore` command: Step 0 runs CONFIGURE, then executes the produced pipeline

# Innovation — Reflection as a Thinking Discipline (Sketch)

## Transform
Completed work → Extracted patterns + concrete lessons

## When to Reflect
1. After TERMINATE (every completed exploration)
2. After a failure (ideas killed, approaches failed)
3. After a pattern repeats (meta-search notices recurrence)
4. At natural boundaries (end of session, end of phase)

## When NOT to Reflect
1. Mid-convergence (breaks momentum)
2. Before enough data exists (1 iteration = observation, not pattern)
3. When the question is forward-looking (that's meta-search, not reflection)
4. When it becomes avoidance (reflecting instead of building)

## Reflect Based on What
- The accumulator (what survived, killed, refined, never tried)
- Plan vs reality gap (what CONFIGURE predicted vs what happened)
- Human experience (intuitions, overrides, frustrations)
- Time data (where time was spent vs value produced)
- Cross-exploration patterns (same failures across explorations)

## Process (5 Phases)
1. **Reconstruct** — factual timeline, no interpretation
2. **Pattern Extract** — what repeats? what's systematic?
3. **Evaluate** — which decisions were right/wrong and why?
4. **Extract** — concrete lessons (not abstract observations)
5. **Apply** — where does each lesson live? Update discipline/process/workflow

## Key Constraint
Every lesson must produce a concrete, testable change. If it doesn't change anything, it's an observation, not a lesson. Observations go in the history. Lessons go in the disciplines, the process, or the human's workflow.

## Self-Reference Prevention
Reflection on reflection risks collapse (validating itself). Ground in external evidence: did the lesson actually help next time?


# Structural Sensemaking — Is Contextual Resurrection Part of Meta-Search or a New Discipline?

## Initial Sense Version (SV1 — Baseline Understanding)

The question is whether contextual resurrection — the ability to revisit killed ideas when new information invalidates their kill conditions — belongs inside meta-search or is a distinct cognitive operation deserving its own discipline.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

* **C1:** The other five meta-search moves respond to the **current** search state (aggregate patterns). RESURRECT responds to a **relationship between past state and present information** (specific condition-matching). Different trigger structure.
* **C2:** RESURRECT requires pattern-matching between new information and stored kill conditions. The other moves read aggregate statistics.
* **C3:** Every thinking discipline has a distinct transform. If RESURRECT doesn't have a unique transform, it's not a discipline.
* **C4:** Meta-search was defined as cognitive proprioception. The question is whether "remembering that a dead path might be alive again" is proprioceptive or a different sense.

### Key Insights

* **K1:** The five current moves are present-tense. RESURRECT is past-tense referencing present — temporal bridging.
* **K2:** But the proprioception analogy handles this. A navigator who marked a channel as blocked and later hears the tide is in naturally thinks "that channel might be passable." Same navigation awareness, past knowledge applied to new conditions.
* **K3:** The test: does RESURRECT require a fundamentally different TYPE of thinking? Or the same type with different temporal scope?
* **K4:** RESURRECT uses the same sensor (accumulator), produces the same output type (directive), serves the same purpose (steering).

### Structural Points

* **S1:** Five moves + RESURRECT cover two temporal scopes: present state and past-present bridging. Both are search awareness.
* **S2:** RESURRECT detects relevance. Critique performs the re-evaluation. Roles are cleanly separated.
* **S3:** The self-adjusting threshold is driven by loop state meta-search already reads.

### Foundational Principles

* **P1:** If two operations share the same sensor, output type, and purpose, they are the same operation with different parameters — not different operations.
* **P2:** Adding temporal scope to an existing sense is enrichment, not a new sense.

---

### Sense Version 2 (SV2)

The structural test for "new discipline" is whether the operation requires a fundamentally different type of thinking. RESURRECT uses the same sensor, output type, purpose, and awareness. The difference is temporal scope and matching operation. This is enrichment of meta-search, not a separate cognitive operation.

---

## Phase 2 — Perspective Checking

### Technical / Logical
Adding memory to a feedback controller makes it adaptive, not a different type of controller. **New anchor (T1):** RESURRECT makes meta-search adaptive rather than reactive. Same control system, richer mode.

### Human / User
Humans experience "wait, that thing I gave up on might work now" as continuous awareness, not switching cognitive modes. **New anchor (H1):** Single continuous awareness, not two operations.

### Strategic / Long-term
RESURRECT's process is a single decision rule, not a multi-phase process. Doesn't have the depth for a full discipline. **New anchor (ST1):** Structural weight of a move, not a discipline.

### Risk / Failure
Separating RESURRECT from meta-search creates coordination problems. **New anchor (R1):** Integration prevents conflicting directives.

---

### Sense Version 3 (SV3)

Every perspective: RESURRECT belongs inside meta-search. Enriches it from present-tense to temporally-aware. One new move, one new awareness component, one accumulator upgrade.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: Different trigger = different operation?

**Resolution:** Different trigger, same operation. The operation is "read loop state → produce steering directive." The trigger determines WHEN and WHAT data, not WHAT TYPE of thinking. An eye detecting both motion and color is still one sense.

**What is now fixed?** RESURRECT is meta-search's sixth move, not a separate discipline.

### Ambiguity 2: Where does RESURRECT fit in the awareness model?

**Resolution:** Adds **memory** — awareness of past terrain features that might have changed.

| Component | What it provides | Temporal scope |
|---|---|---|
| Position | Where am I now? | Present |
| Heading | Which direction? | Present |
| Velocity | Am I improving? | Present vs recent past |
| Acceleration | Is improvement changing? | Recent trend |
| Goal distance | How far from done? | Present vs target |
| **Memory** | What past kills might be unlocked? | Past vs present |

---

### Sense Version 4 (SV4)

Contextual resurrection is the sixth move and sixth awareness component. Requires upgraded kill records (conditions as locks), relevance detection (new info as keys), and self-adjusting threshold. Does not require a new discipline.

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed
* RESURRECT lives inside meta-search as sixth move
* Kill records must store conditions (locks), not just verdicts
* Relevance detection: new info matched against stored conditions
* Threshold self-adjusts based on loop state
* RESURRECT produces a flag; critique performs the re-evaluation

### Eliminated
* Separate discipline for contextual resurrection
* Flat kill records without conditions
* Fixed relevance threshold

---

## Phase 5 — Conceptual Stabilization

### Final Sense Version (SV6)

**Contextual resurrection belongs inside meta-search.** Sixth move, sixth awareness component.

The structural test: does it require a different type of thinking? No. Same sensor, same output type, same purpose, same awareness. Adds temporal bridging (past kills vs present info) to a previously present-only system. This is enrichment — making meta-search adaptive — not a new cognitive operation.

| Layer | Before | After |
|---|---|---|
| Moves | 5 | 6 (+RESURRECT) |
| Awareness | Position, heading, velocity, acceleration, goal distance | + Memory |
| Kill record | Verdict + dimension + reasoning | + Condition as lock |
| Temporal scope | Present + recent trends | + Past-present bridging |
| Threshold | N/A | Self-adjusting based on loop state |

Separating RESURRECT into its own discipline would over-engineer a single decision rule and create artificial coordination problems between current steering and past revisiting — things that should be one continuous awareness.


# Structural Sensemaking — Search Strategy Gap in the SIC Loop

## SV6 — Stabilized Model

**The flattener failure was a search order problem, not an innovation quality problem.**

The innovation discipline has 7 mechanisms that can produce breadth (different regions of the solution space) or depth (full development of one approach). But the command instructions push toward depth — "create 3 per category" generates developed ideas, not a landscape of distinct approaches. When the problem calls for "show me what's possible before I commit," the system has no way to express that.

### The Fix: Two Changes

**1. Innovation gets two modes:**
- **Survey** — apply all mechanisms to produce a landscape of distinct approaches. Each approach is 1-2 sentences. No development. The output is a map: "here are N fundamentally different directions this could go."
- **Development** — take one approach and apply mechanisms at full depth. This is what the command does today.

**2. CONFIGURE includes search order:**
- Novel/complex problems → survey first, then develop promising approaches
- Clear/focused problems → develop directly

### Key Insight

The problem is NOT about the SIC loop needing BFS vs DFS. It's about innovation having a single mode (development) when two modes are needed (survey + development). The loop is fine. The search strategy should be set by CONFIGURE and executed by innovation through its mode parameter. No new discipline needed, no structural change to the loop.

### What This Explains About the Flattener Failure

Innovation found one feasible approach (depth-first) and chased it, producing a suboptimal solution. The user had to manually inject the better approach (split packaging). With survey mode, innovation would have first produced: "here are the possible approaches: inline markers, external markers, split packaging, hybrid, etc." THEN the user or system selects which to develop. The split packaging approach would have been visible in the survey before any depth was spent.

### Origin

Observed empirically during the flattener format design exploration — the one real test of the system.


# Structural Sensemaking — The Signal Component: What Steers the SIC Loop?

## Initial Sense Version (SV1 — Baseline Understanding)

The user noticed that critique produces signals — REFINE routes to innovation, KILL routes to sensemaking, ITERATE/TERMINATE controls the loop. But these routing decisions are currently mechanical: hardcoded destinations without intelligence about *where to focus*, *at what depth*, or *in which dimension*. The user is asking: is there a distinct concept — a signal/steering component — that would make the SIC loop dramatically stronger by directing each iteration intelligently rather than mechanically? Is this Meta-Plan? Meta-search? Something new?

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

* **C1:** The SIC loop exists and works. The question is about making it *directed*, not about making it *functional*.
* **C2:** Whatever this component is, it must work with the three built disciplines — it reads their outputs and directs their inputs.
* **C3:** Meta-Plan (#10) is already planned and described as "the discipline for combining other disciplines." Whatever we identify here may overlap with or be a subset of Meta-Plan.
* **C4:** The user's framing — "automating the search of the solution space in its dimensions, directions, depth" — is the language of search theory, not planning theory.

### Key Insights

* **K1:** The SIC loop currently has three operations (expand understanding, expand ideas, contract via selection) but no **steering** operation. Each iteration takes whatever critique produced and feeds it back mechanically.
* **K2:** The user's phrasing reveals what's missing: "dimensions, directions, depth." These are the three axes of a search strategy.
* **K3:** The accumulator already contains the information needed for steering — coverage map, convergence trend, kill records, refinement records. What's missing is the component that *reads* this information and *makes decisions* based on it.
* **K4:** In search theory, the strategy layer (where to search next) is separate from the search operations (how to search). The SIC loop has the operations (S, I, C) but no strategy layer.

### Structural Points

* **S1:** Current SIC loop routing is mechanical — REFINE → innovation, KILL → sensemaking, ITERATE → back to start. No intelligence about where to focus.
* **S2:** What's needed is something that reads the accumulator's state and produces **directives** — not just "go to innovation" but "go to innovation and focus on feasibility-first approaches."
* **S3:** This is structurally identical to what happens in optimization algorithms: the search strategy reads the history and decides where to look next.

### Foundational Principles

* **P1:** A loop without steering is blind — it converges eventually but wastes iterations. A loop with steering is directed — each iteration informed by all previous iterations.
* **P2:** Steering is meta-cognitive — thinking about how you're thinking. Not what to understand, create, or evaluate — but where to point the next attempt.

### Meaning-Nodes

* **M1:** Steering vs planning. Planning sequences steps before execution. Steering adjusts direction during execution.
* **M2:** The three search axes: dimension (which aspect), direction (broader/narrower), depth (how far before reassessing).
* **M3:** Accumulator = sensor. Steering = actuator. Together they close the feedback loop.

---

### Sense Version 2 (SV2 — Anchor-Informed Understanding)

The SIC loop has sensors (the accumulator) but no actuator (steering). The accumulator observes coverage, convergence, kills, refinements — but nothing reads those observations and produces directed instructions for the next iteration. What's missing is the decision function that translates loop state into search directives: which dimension to explore, whether to go broad or deep, and at what depth to stop and reassess.

---

## Phase 2 — Perspective Checking

### Technical / Logical

In search algorithms, the strategy layer is well-understood. MCTS uses UCB to balance exploration vs exploitation. Simulated annealing uses temperature. Genetic algorithms use selection pressure and mutation rates. The SIC loop is a search algorithm. S, I, C are the operations. What's missing is the UCB equivalent.

**New anchor (T1):** The missing component is a **search strategy function** — formally equivalent to the exploration/exploitation balancer in optimization.

### Human / User

Without steering, the human IS the steering function. After each SIC iteration, the human reads critique output and decides where to focus next. Steering automates this decision.

**New anchor (H1):** Steering enables autonomous multi-iteration SIC runs without human intervention at every step.

### Strategic / Long-term

Steering is a multiplier on efficiency. Instead of 10 undirected iterations, steering achieves convergence in 3-4 directed iterations.

**New anchor (ST1):** Steering doesn't add new capability — it makes existing capability converge faster.

### Risk / Failure

The SIC loop hasn't been tested yet. Building sophisticated steering for an untested loop is premature optimization.

**New anchor (R1):** Steering should be built AFTER the SIC loop has been tested manually at least once.

### Resource / Feasibility

Steering is lightweight — a decision function, not a full cognitive operation. It reads data the accumulator already collects.

**New anchor (F1):** Steering might not need to be a full discipline. It could be an upgrade to critique's Phase 4.

---

### Sense Version 3 (SV3 — Multi-Perspective Understanding)

The signal component is real and important, but it might not be a new discipline — it might be an **upgrade to critique's Phase 4.** Currently Phase 4 produces binary ITERATE/TERMINATE. The upgrade: Phase 4 produces directed ITERATE(dimension, direction, depth). This sits naturally inside critique, which already has the accumulator.

However, if extracted as its own thing, it becomes the seed of Meta-Plan. Design choice: embed in critique now, extract into Meta-Plan later.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: New discipline or critique enhancement?

**Resolution:** For the SIC loop specifically, it's an enhancement to critique's Phase 4. For the full discipline system, it's the first sub-component of Meta-Plan. Build the specific case (Phase 4 upgrade) now; extract into Meta-Plan when needed.

**What is now fixed?** Immediate next step is enhancing critique's Phase 4, not building a new discipline.

### Ambiguity 2: Meta-planning vs meta-search?

**Resolution:** For the SIC loop, it's **meta-search** (during-execution steering based on search history), not meta-planning (pre-execution sequencing). Meta-Plan will eventually subsume meta-search as one of its sub-capabilities.

**What is now fixed?** The signal component is meta-search: during-execution steering based on accumulated search history.

### Ambiguity 3: What are the actual search parameters?

**Resolution:** Three parameters:

- **Dimension focus** — which aspect of the problem/solution space to emphasize next. Derived from kill/refinement patterns.
- **Direction** — BROADEN (explore new regions) or NARROW (refine existing survivors). Derived from variety of current candidates.
- **Depth** — how many iterations before stepping back to reassess. Derived from convergence trend.

**What is now fixed?** Every ITERATE signal carries three parameters: dimension, direction, depth.

---

### Sense Version 4 (SV4 — Clarified Understanding)

The signal component is meta-search — during-execution steering of the SIC loop. It reads the accumulator and produces directed ITERATE(dimension, direction, depth) instructions. It lives inside critique's Phase 4. It's the first piece of what will eventually become Meta-Plan.

---

## Phase 4 — Degrees-of-Freedom Reduction

### What variables are now fixed

* **What it is:** Meta-search — the search strategy layer for the SIC loop
* **Where it lives:** Inside critique's Phase 4
* **What it controls:** dimension focus, direction (broad/narrow), depth budget
* **What it reads:** The accumulator
* **Relationship to Meta-Plan:** Meta-search is the first sub-component; when Meta-Plan is built, meta-search merges into it

### Decision Rules

| Accumulator signal | Dimension | Direction | Depth |
|---|---|---|---|
| Most kills on same dimension | Focus on the bottleneck dimension | NARROW | 1-2 iterations |
| All ideas cluster in same region | Unchanged | BROADEN — new mechanisms/seeds | 2-3 iterations |
| Refinements oscillating (fix X breaks Y) | Focus on the oscillating dimension pair | NARROW | 1 iteration — if oscillation persists, route to sensemaking |
| Large unexplored region on coverage map | Shift to unexplored dimension | BROADEN | 2 iterations |
| Convergence trend flat | Maintain | If innovation exhausted mechanisms → BROADEN with new seed. If not → NARROW on survivors | 1 iteration — if still flat, TERMINATE |

---

## Phase 5 — Conceptual Stabilization

### Final Sense Version (SV6 — Stabilized Model)

The signal component is **meta-search** — the search strategy layer that transforms the SIC loop from blind iteration to directed search. It upgrades critique's Phase 4 from binary (ITERATE/TERMINATE) to directed (ITERATE with dimension focus, direction, and depth parameters).

It is not a new discipline. It's intelligence added to critique's Phase 4 that reads the accumulator and produces targeted directives. It controls three axes of the search: which dimension to focus on, whether to broaden or narrow, and how deep to go before reassessing.

It is the first brick of Meta-Plan — when the system outgrows the SIC loop, meta-search (steer running loops) merges with meta-planning (sequence disciplines) to form the full orchestrator.

**Recommended next step:** Run the SIC loop once manually, with you as the steering function. Discover which meta-search decisions actually arise. Then upgrade Phase 4 with empirically grounded decision rules.





# Structural Sensemaking — Is the Survey Operation Innovation or Exploration?

## SV6 — Stabilized Model

**The survey isn't innovation. It's exploration of the solution space.**

The test: what does success look like?
- **Innovation success** = a novel idea that survives scrutiny
- **Survey success** = a complete map of what approaches are possible, including obvious non-novel ones

These are different operations. Innovation is optimized for novelty and viability. The survey needs completeness — it must include the boring obvious approach alongside the creative novel one, because the point is to see the full landscape before committing.

### What This Means for the Pipeline

The pipeline for novel/complex problems should be:

```
S → Explore solution space → I (on selected directions) → C
```

Not: `S → I (with survey mode) → C`

### Why Innovation Fails at Survey

Innovation's success criterion is novelty. Its mechanisms are optimized to produce things that don't exist yet. But a good survey of the solution space includes:
- The obvious approach (not novel, but must be listed)
- The standard approach (known, but must be on the map)
- The novel approaches (innovation's strength)
- The approaches from other domains (domain transfer, but at survey depth)

Innovation would skip the first two because they're "not novel." But the survey MUST include them because completeness matters more than novelty.

### Connection to Planned Exploration Discipline (#7)

The planned Exploration discipline describes: "breadth-first scan, depth probes, boundary detection, knowledge gap identification, confidence mapping." This is exactly the survey operation — applied to the solution space instead of a codebase. Unknown territory is unknown territory.

### What Caused the Flattener Failure

Innovation was asked to do exploration's job. It went for novelty and depth (its design) when the situation called for completeness and breadth (exploration's design). The user had to manually inject the better approach because innovation never mapped the full landscape — it found one novel direction and chased it.

### Implementation Options

1. **Build Exploration discipline** — full discipline with formalized components, then build `/explore-solutions` or similar command
2. **Lightweight survey step** — add a "solution landscape" step to `/explore` command that produces a map before innovation runs
3. **Pragmatic** — use innovation's mechanisms for survey with explicit "completeness not novelty" instructions (risks the same depth bias)


# Sensemaking — How to Record Time

## Solution

Not troublesome. Three changes:

### 1. Timestamps in `_state.md` history

```
- 2026-04-07 19:33: CONFIGURE — Novel + Complex
- 2026-04-07 20:15: Innovation complete
- 2026-04-07 20:42: Critique R1 — REFINE
```

### 2. `/explore` runs `date` at checkpoints

One shell command: `date +"%Y-%m-%d %H:%M"`
Recorded in history entry and checkpoint presentation.

### 3. Meta-search derives temporal metrics

| Metric | Computed from |
|---|---|
| Time between checkpoints | timestamp_N - timestamp_N-1 |
| Session duration | last - first checkpoint of session |
| Time since last activity | now - last checkpoint |
| Budget remaining | budget - session duration |

### Optional: Time budget

User sets at CONFIGURE: `Time budget: 3 hours`
Meta-search factors into moves: "approaching budget — NARROW or TERMINATE"

### Why it's not troublesome

- No continuous tracking (AI isn't running between turns)
- No timer system (just timestamps at checkpoints)
- All metrics derived from comparing timestamps
- Pauses handled naturally (time between checkpoints shows working time per step, not idle time)
- Cross-session: each session has its own start/end. Don't sum across sessions.


# Structural Sensemaking — What Is Decomposition, and What Makes It Meta?

## Initial Sense Version (SV1 — Baseline Understanding)

The question: what is decomposition as a type of thinking — not "break things into smaller pieces" but the meta-cognitive operation that makes it a thinking discipline? What's the structural depth that justifies it alongside sensemaking, innovation, critique, and meta-search?

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

* **C1:** Every built discipline has a meta-level definition. Decomposition needs the same precision — not domain-level ("break code into modules") but meta-level ("the cognitive operation of X").
* **C2:** Must be domain-agnostic — software, business, research, mathematics, any field where complex wholes exist.
* **C3:** Must be structurally distinct from the other four built disciplines.

### Key Insights

* **K1:** "Breaking things into smaller pieces" is the WHAT. The meta question: **how do you know WHERE to break?** The cognitive operation is not the breaking — it's the perception of where the natural boundaries are.
* **K2:** Decomposition requires **coupling perception** — seeing where things are tightly connected (keep together) and loosely connected (can be separated). This is structural perception, distinct from expansion, contraction, or steering.
* **K3:** Without decomposition, the SIC loop only handles problems that fit in one loop run. Decomposition is the **scale dimension** — converts a problem too big for one loop into N sub-problems.
* **K4:** Prerequisite relationship with sensemaking: you must UNDERSTAND before you can DECOMPOSE. Premature decomposition (breaking before understanding) is a failure mode, not a shortcut.

### Structural Points

* **S1:** Each built discipline operates on a different aspect:
  - Sensemaking → quality of understanding
  - Innovation → space of possibilities
  - Critique → viability of candidates
  - Meta-Search → the process itself
  - **Decomposition → scale of problems**
* **S2:** The core cognitive operation is **perceiving internal topology** — coupling regions, natural joints, irreducible elements, interfaces, varying density.
* **S3:** Connects to the geometry intuition from notes.md: decomposition IS geometric — perceiving the topology of a problem space.

### Foundational Principles

* **P1:** Every complex whole has internal structure. There are no structureless wholes. Decomposition makes latent structure explicit.
* **P2:** Good decomposition cuts where coupling is LOW. Bad decomposition cuts where it's convenient.
* **P3:** Pieces must be independently coherent — each must make sense on its own, not just as a fragment.

---

### Sense Version 2 (SV2)

Decomposition is the cognitive operation of **perceiving the internal topology of a complex whole.** Not about cutting — about SEEING where to cut. Cut points are determined by coupling structure: tightly bound (keep together) vs loosely bound (separate here). Pieces must be independently coherent, interfaces explicit.

Structurally distinct from sensemaking: sensemaking perceives MEANING in ambiguity, decomposition perceives STRUCTURE in complexity. Different input, different output, different operation.

---

## Phase 2 — Perspective Checking

### Technical / Logical
Consistent principle across CS: minimize coupling between modules, maximize cohesion within. Mathematics adds: decomposition finds **irreducible elements** (prime factors, eigenmodes, frequency components). **New anchor (T1):** Not just boundaries — also atoms.

### Human / User
Decomposition converts "I'm overwhelmed" into "I can handle this." **New anchor (H1):** Value is cognitive (structured pieces are easier to think about), not just operational.

### Strategic / Long-term
Gateway to autonomous long-running tasks. **New anchor (ST1):** Prerequisite for scaling the SIC loop beyond single-task problems.

### Risk / Failure
Failure modes: premature decomposition, wrong boundaries, missing interfaces, ignoring dependency order, hidden coupling. **New anchor (R1):** Bad decomposition compounds through every subsequent step.

### Resource / Feasibility
No existing command. But the discipline-building process itself is empirical data — the original 10 disciplines were decomposed by structural necessity and dependency order. **New anchor (F1):** Self-referential example available.

---

### Sense Version 3 (SV3)

Decomposition operates at multiple levels:
1. Topological perception (boundaries, coupling regions)
2. Irreducible element identification (atoms that can't be further decomposed)
3. Cognitive load management (overwhelm → tractability)
4. Scale operator for the SIC loop (any-size problems)
5. Interface definition (what flows between pieces)

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: "Breaking into pieces" or "perceiving structure"?

**Resolution:** Perceiving structure. Breaking is the ACTION that follows perception. The discipline formalizes the perception. Anyone can break. The discipline is about SEEING where to break.

**What is now fixed?** Core operation = structural perception, not division.

### Ambiguity 2: How is decomposition different from sensemaking?

**Resolution:** Different inputs, outputs, and operations.
- Sensemaking: AMBIGUOUS → CLEAR UNDERSTANDING (meaning construction)
- Decomposition: COMPLEX BUT UNDERSTOOD → TRACTABLE PIECES (structural partitioning)

Sensemaking is prerequisite. You must understand before you can decompose.

**What is now fixed?** Sequential relationship: Sensemaking first, then Decomposition.

### Ambiguity 3: Meta enough for a discipline?

**Resolution:** Yes. Describes the SHAPE of partitioning-for-tractability across all domains. Has components (coupling perception, boundary detection, independence verification, interface mapping, ordering), process, failure modes, coverage strategy. Same structural depth as the other four.

---

### Sense Version 4 (SV4)

Decomposition is the cognitive operation of perceiving the internal topology of a complex whole — coupling structures, natural boundaries, irreducible elements, interfaces — to convert an overwhelming problem into tractable, independently coherent pieces with explicit connections.

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed
* Core operation: structural perception (perceiving internal topology of complexity)
* Transform: complex-but-understood whole → independently coherent pieces with explicit interfaces and dependency ordering
* Prerequisite: sensemaking
* Role: scale operator for the SIC loop
* Meta-level: describes the shape of partitioning-for-tractability across all domains

### Five core components
1. **Coupling perception** — high cohesion (keep together) vs low coupling (cut here)
2. **Boundary detection** — finding natural cut points
3. **Independence verification** — each piece coherent on its own
4. **Interface mapping** — what flows between pieces
5. **Dependency ordering** — which pieces must come first

---

## Phase 5 — Conceptual Stabilization

### Final Sense Version (SV6)

> **Structural Decomposition is the process of perceiving the internal coupling topology of a complex whole — identifying natural boundaries where coupling is low, verifying that resulting pieces are independently coherent, mapping what flows between pieces, and ordering pieces by dependency — to convert an overwhelming problem into tractable sub-problems.**

| Discipline | Operates on | Core operation | Produces |
|---|---|---|---|
| Sensemaking | Quality of understanding | Meaning construction | Clear understanding |
| Innovation | Space of possibilities | Novelty generation | New ideas |
| Critique | Viability of candidates | Adversarial evaluation | Survivors |
| Meta-Search | The process itself | Search awareness | Steering directives |
| **Decomposition** | **Scale of problems** | **Structural perception** | **Tractable pieces** |

The scale operator. Without it, the SIC loop handles single-task problems. With it, problems of any size become tractable by partitioning into SIC-loop-sized pieces.




# Structural Innovation — Mid-Execution Pipeline Restructuring Gap

## Seed

Meta-search has six during-execution moves but none handle "the pipeline itself was wrong — restructure it." When sensemaking reveals a problem is more complex than CONFIGURE predicted, there's no move to insert decomposition mid-loop. Understanding is complete but the problem is structurally too large. DIAGNOSE doesn't fit (understanding isn't the issue). The gap: no move for pipeline-level adaptation during execution.

---

## 1. Lens Shifting

**Current frame:** Meta-search's moves operate on the *content* of the search (where to look, how deep, whether to stop). The pipeline itself is fixed after CONFIGURE.

**Shifted frame:** What if the pipeline is just another variable the search operates on — not a fixed scaffold but a mutable parameter?

**Generic:** The distinction between "configure the pipeline" and "steer the search" is artificial. CONFIGURE is just the first steering move. All subsequent moves should be able to modify the pipeline, not just direct content within it. The pipeline is data, not structure.

**Focused:** Under the frame "pipeline is mutable," every checkpoint already has the information to detect "this needs decomposition" — SV6 with multiple distinct sub-problems IS the signal. The missing piece isn't a new move — it's that existing moves can't modify the pipeline. Give DIAGNOSE (or any move) the ability to emit pipeline modifications alongside content directives.

**Controversial:** CONFIGURE shouldn't exist as a separate phase at all. If the pipeline is mutable at every checkpoint, the "pre-execution" vs "during-execution" distinction collapses. Every checkpoint is a CONFIGURE. The first one just happens to start from nothing. This eliminates the gap entirely — there's no "mid-execution insertion" problem because every move can reshape the pipeline.

---

## 2. Combination

**Concepts in proximity:** Pipeline restructuring + the progressive decomposition versions (DV2) from the decomposition discipline + RECONSIDER's temporal re-evaluation.

**Generic:** DV2 already solves this problem for decomposition: "boundaries discovered wrong during execution → re-run on the affected region." The same pattern applied to meta-search: "pipeline discovered wrong during execution → re-run CONFIGURE on the affected step." Call it Progressive Pipeline Versions — PV1 is what CONFIGURE produced, PV2 is what execution revealed is actually needed.

**Focused:** Combine RECONSIDER's mechanism with pipeline awareness. RECONSIDER re-evaluates past *verdicts* when new information invalidates them. The pipeline is itself a verdict — CONFIGURE's verdict about what type of problem this is. If sensemaking produces evidence that the problem type was misclassified, RECONSIDER should be able to target the CONFIGURE verdict itself, not just content verdicts. "RECONSIDER the pipeline classification" is structurally identical to "RECONSIDER a killed idea."

**Controversial:** Combine decomposition with meta-search at the discipline level — decomposition isn't just a step IN the pipeline, it's an operation ON the pipeline. When meta-search detects "too complex for one pass," it doesn't insert decomposition as a pipeline step — it decomposes the pipeline itself into sub-pipelines. The pipeline IS the complex whole. Decomposition operates on it.

---

## 3. Inversion

**Assumption:** The pipeline is decided before execution and moves steer within it.

**Level 1 inversion:** The pipeline isn't decided before execution — it emerges from execution. Each discipline run reveals what should come next. There is no pre-set pipeline, only a "next step" decision at every checkpoint.

**Generic:** Remove pipelines entirely. Meta-search at each checkpoint asks: "Given what we just learned, what discipline should run next?" No pre-set sequence. CONFIGURE suggests a starting discipline, not a pipeline. Each subsequent step is chosen by meta-search based on what the previous step revealed.

**Focused:** Invert "CONFIGURE runs once." → CONFIGURE runs at every checkpoint, but usually confirms the existing pipeline. When it detects a mismatch (sensemaking revealed complexity), it produces a new pipeline. This is "continuous CONFIGURE" — lightweight re-classification at every checkpoint, with the option to restructure.

**Controversial:** Invert "the pipeline is the right abstraction." Maybe pipelines are the problem. A pipeline assumes you know the sequence of cognitive operations before you start. But thinking doesn't work that way — you discover what you need as you go. Replace pipelines with a reactive discipline selector that reads the output of whatever just ran and selects the next discipline. No pipeline. No CONFIGURE. Just: "what does this output need next?"

---

## 4. Constraint Manipulation

**Current constraint:** Moves modify search direction; only CONFIGURE modifies pipeline structure.

**Remove constraint:** Any move can modify the pipeline.

**Generic:** Add a `pipeline_modification` field to every move's output. Most moves leave it empty. But when DIAGNOSE detects "understood but too large," it can emit `pipeline_modification: insert decomposition before next discipline`. This is minimal — one new field, no new move.

**Focused:** Add constraint: "every checkpoint must validate that the current pipeline still matches the problem as understood." This transforms pipeline validation from "once at CONFIGURE" to "continuous." The gap disappears because mismatches are caught immediately.

**Controversial:** Add constraint: "no pipeline step can operate on input with more than N distinct sub-problems." This makes decomposition automatic — if sensemaking output contains >N coupling clusters, decomposition fires before the next step. No move needed, no human decision. It's a structural constraint, not a steering decision.

---

## 5. Absence Recognition

**What's missing from the current system?**

**Generic:** There's no complexity signal in sensemaking's output. SV6 describes what's understood but doesn't flag "this understanding contains N distinct sub-problems with different coupling patterns." If sensemaking produced a complexity indicator, meta-search could read it and act. The absence isn't in meta-search — it's in sensemaking's output format. Sensemaking doesn't report structural complexity.

**Focused:** There's no pipeline health check. Meta-search checks search health (velocity, coverage, convergence) but never checks "is the pipeline itself still appropriate for what we're learning?" The coverage map tracks content exploration but not pipeline fitness. Add a pipeline fitness dimension to the present layer.

**Controversial:** There's no meta-CONFIGURE. CONFIGURE classifies problems. But who classifies whether CONFIGURE's classification is still valid? The system can steer content (BROADEN, NARROW, SHIFT) and steer process (DIAGNOSE, TERMINATE) but cannot steer its own configuration. It's a missing level of self-reference. The system can think about what it's thinking about (meta-search) but can't think about how it decided to think (meta-CONFIGURE).

---

## 6. Domain Transfer

**Where else has this been solved?**

**Generic:** Agile retrospectives. Agile doesn't fix the process at sprint planning and hold it rigid. Every retrospective can change the process itself — add ceremonies, drop practices, restructure the workflow. The sprint plan is mutable. Apply to meta-search: every checkpoint is a mini-retrospective that can modify the pipeline, not just the content.

**Focused:** Compiler optimization passes. Compilers don't run a fixed sequence of optimizations. They run an optimization, check the result, and decide whether to run another pass or a different optimization based on what changed. The optimization pipeline adapts to the code. Apply to meta-search: the discipline pipeline adapts to the output, not the other way around.

**Controversial:** Immune system adaptive response. The innate immune system (CONFIGURE) makes a first guess. If it's wrong, the adaptive immune system doesn't "insert a new step" — it fundamentally reorganizes the response based on what it learned from the pathogen. The reorganization IS the response. Apply: when CONFIGURE's classification is wrong, meta-search doesn't "insert a step" — it produces an entirely new response plan. Not restructuring. Re-creating.

---

## 7. Extrapolation

**Trend:** As the discipline system grows (more disciplines, more complex problems), CONFIGURE misclassifications will become more common, not less. More disciplines = more possible pipelines = more ways to get the sequence wrong.

**Generic:** If pipeline restructuring is rare now (1 gap noticed), it will be common later. A patched solution (one new move) will need patching again. The trend demands that pipeline mutability be structural, not exceptional.

**Focused:** As problems get more complex, they'll increasingly be misclassified. A problem that looks "Ambiguous + novel" at the surface often reveals internal complexity after sensemaking. The trend: most real problems need decomposition, but it's only visible after sensemaking. The default pipeline should assume decomposition might be needed after sensemaking, not treat it as an exception.

**Controversial:** Extrapolate far enough and the pipeline concept itself becomes obsolete. With 10+ disciplines and complex problems, the number of valid pipeline configurations grows combinatorially. No classification scheme can reliably pick the right one upfront. The future is pipelines generated step-by-step, not pre-planned. CONFIGURE becomes "pick the first step" and every subsequent step is chosen reactively.

---

## Convergence Analysis

Three mechanisms independently converge on the same core insight:

**Lens Shifting**, **Inversion**, and **Extrapolation** all point to: **the pipeline should not be fixed after CONFIGURE.** The distinction between "design the pipeline" and "steer within the pipeline" is the root cause of the gap. If the pipeline is mutable at every checkpoint, the gap disappears.

Two mechanisms converge on a specific implementation:

**Combination** (RECONSIDER targeting the CONFIGURE verdict) and **Constraint Manipulation** (pipeline_modification field on every move) both point to: **extend existing mechanisms rather than adding a new move.** The system already has the ability to re-evaluate past decisions (RECONSIDER) and to modify search direction (all present-layer moves). It just can't apply these to the pipeline itself.

**Absence Recognition** found a different angle: the gap may not be in meta-search at all — sensemaking doesn't report structural complexity, so meta-search has nothing to react to.

---

## Three Strongest Outputs

**1. Continuous CONFIGURE** (from Inversion + Extrapolation)
Every checkpoint runs a lightweight pipeline validation: "does the current pipeline still match what we now understand about the problem?" Usually confirms. When sensemaking reveals complexity, it re-classifies and produces a new pipeline. Not a new move — an extension of CONFIGURE from "runs once" to "validates continuously."

**2. RECONSIDER targeting CONFIGURE's classification** (from Combination)
The CONFIGURE output IS a verdict — "this problem is type X, use pipeline Y." When new information (like SV6 showing 6 distinct sub-problems) contradicts that classification, RECONSIDER fires on the pipeline itself. Same mechanism, new target. Minimal change to the system.

**3. Sensemaking complexity signal** (from Absence Recognition)
Add a structural complexity indicator to sensemaking's output — not just "what was understood" but "how many distinct sub-problems exist and how coupled are they." This gives meta-search something to react to. Without it, meta-search is blind to the complexity dimension regardless of what moves it has.


# Structural Innovation — What Else the Folder-Tree System Needs

## The Seed

The folder-as-decomposition-tree design is solid. But what about needs that only become visible when you step outside the current frame?

---

## Surviving Innovations

### 1. Branches as Questions (Highest Confidence — 4 mechanisms converge)

**Converges across:** Inversion 3b, Domain Transfer 6b, Constraint 4a, Absence 5a

`_branch.md` shouldn't just describe the branch — it should pose the QUESTION this branch answers. Decomposition's output becomes: N questions + relationships + verification criteria.

**Before:** Decomposition produces folders (empty containers to be filled).
**After:** Decomposition produces questions (each with verification criteria that define "answered").

The tree is readable as a QUESTION MAP: "here's everything we asked and what we found." Branch completion is explicit: not "did we run all disciplines" but "did we answer the question and pass verification?"

`_branch.md` format becomes:
```markdown
# Branch: [name]
## Question
[The specific question this branch answers]
## Parent
[What whole this was decomposed from]
## Depends on
[What sibling branches this needs input from]
## Provides to
[What sibling branches need from this]
## Verification
- [ ] [Criterion 1]
- [ ] [Criterion 2]
- [ ] [Criterion 3]
```

---

### 2. `_state.md` as Handoff Document (Strong — 3 mechanisms)

**Converges across:** Inversion 3a, Constraint 4b, Domain Transfer 6a

`_state.md` should have two sections:

**HISTORY** — what happened (verdicts, kills, state changes, iteration count)
**DIRECTIVE** — what to do next (from meta-search's last checkpoint)

```markdown
# State: [branch name]
## Status: ACTIVE
## History
- Iteration 1: Sensemaking produced anchors. Innovation generated 7 ideas.
- Iteration 2: Critique killed 4, refined 2, survived 1.
## Directive
Focus: feasibility dimension (last 2 kills were on feasibility)
Direction: NARROW on the surviving idea
Depth: 1 more iteration, then reassess
## Kill Record
- Idea X: killed on feasibility (condition: "requires resource Y which doesn't exist")
- Idea Z: killed on coherence (condition: "conflicts with constraint W")
```

Any AI session or agent reads this and knows exactly where to pick up. Essential for multi-session work.

---

### 3. Iteration Tracking (Strong — 3 mechanisms)

**Converges across:** Absence 5b, Inversion 3c, Domain Transfer 6a

SIC loop runs multiple iterations per branch. Convention needed:

**Option A: Versioned files**
```
branch_a/
  sensemaking_v1.md
  sensemaking_v2.md
  innovation_v1.md
  innovation_v2.md
  critique_v1.md
```

**Option B: Iteration subfolders**
```
branch_a/
  iteration_1/
    sensemaking.md
    innovation.md
    critique.md
  iteration_2/
    sensemaking.md
    innovation.md
    critique.md
```

Option B is cleaner — each iteration is a self-contained unit, and you can see the evolution by comparing iterations. Meta-search's velocity is literally: diff iteration_1/ vs iteration_2/.

---

### 4. Cross-Exploration Search (Strong — 3 mechanisms, future)

**Converges across:** Combination 2c, Lens Shift 1b, Extrapolation 7a

After 10+ explorations, kill conditions are scattered across trees. An insight in exploration #8 might invalidate a kill from exploration #2.

**Not urgent now** but the protocol should be designed to make cross-exploration search possible later:
- Standardized `_state.md` format (machine-parseable kill conditions)
- Consistent tags in `_branch.md`
- Kill conditions as falsifiable predicates (already defined in meta-search)

When needed: a global kill-condition index that maps every kill across every exploration, searchable by condition content. RECONSIDER at the project level.

---

## Noted for Future

- **`_interfaces.md`** at parent level mapping what sibling branches provide/need — build when inter-branch dependencies arise empirically
- **Git integration** — commit after each iteration for diffs, rollback, blame history
- **Tags in `_branch.md`** — `#feasibility #critique #meta-search` for cross-tree lateral navigation
- **Dashboard auto-generation** — script that reads all `_state.md` files and produces a summary
- **Depth limit of 3 levels** — discover empirically; deep trees spawn new explorations via cross-reference
- **Exploration trees as analyzable data** — after 50 explorations, which tree shapes/patterns are most productive?

---

## The Three Things You Don't Know You Need Yet

1. **Branches should start as QUESTIONS, not empty containers.** Decomposition produces questions + verification criteria. The SIC loop answers them. Completion is explicit.

2. **`_state.md` should be a handoff document.** History (what happened) + Directive (what to do next). Makes multi-session and multi-agent work possible.

3. **Cross-exploration search will become essential.** Design the protocol now to make it possible later. Standardized formats, falsifiable kill conditions, consistent tags.




# Structural Innovation — Alternative Ways to Loop

## The Seed

The `/explore` command batches S → I → C and stops for human "continue" at each checkpoint. Can the loop run WITHOUT "continue" input?

---

## Surviving Innovations

### 1. Configurable Autonomy Levels (Highest — 4 mechanisms)

```
/explore [--depth LEVEL] <question or folder_path>

  --depth 1        Pause every cycle (manual)
  --depth N        Run N cycles, then checkpoint (batch)
  --depth auto     Auto-continue while confident, pause when uncertain (DEFAULT)
  --depth full     Run to TERMINATE (hands-off)
```

### 2. Auto-Continue Confidence Rules (Strong — 3 mechanisms)

**Continue when ALL of:**
- Meta-search layers agree on move
- Velocity positive
- No RECONSIDER/DIAGNOSE flags
- Move is NARROW or BROADEN (low-risk)
- Budget not exhausted

**Pause when ANY of:**
- Layers conflict
- Velocity zero/negative for 2+ cycles (circuit breaker)
- RECONSIDER or DIAGNOSE triggered
- SHIFT triggered (high-impact)
- Budget exhausted
- Verification criteria met (done)

### 3. Multi-Cycle Within One Response (Strong — 3 mechanisms)

Run multiple SIC cycles in a single AI response. No user input between cycles. Limited by context window — feasible for 3-5 iterations.

### 4. Summary Mode (Strong — 3 mechanisms)

For --depth > 1: condense N iterations into a readable summary. Full details in folder tree. Conversation shows: what survived, what was killed, where the exploration is.

### 5. "Pause Only With a Real Question" (Strong — 3 mechanisms)

Default for --depth auto: the AI is silent when confident. Speaks only when genuinely stuck or when the exploration is complete. The cleanest UX.

---

## Output Modes by Depth

| Depth | During run | At checkpoint/end |
|---|---|---|
| `--depth 1` | Full SIC output | Meta-search proposal + prompt |
| `--depth N` | Brief per-cycle log to folder | Summary of N iterations + proposal |
| `--depth auto` | Everything to folder | Pauses only with specific question or at termination |
| `--depth full` | Everything to folder | Final summary with survivors + tree link |

---

## The UX Vision

**Default:** `/explore "question"` — `--depth auto`. AI explores, saves to folders, pauses only when it has a genuine question. Most of the time, the human sees: "Exploration complete. 3 survivors. Full tree at devdocs/explorations/X/."

**Steered:** `/explore --depth 1 "question"` — human reviews every step. For high-stakes territory.

**Batch:** `/explore --depth 3 "question"` — 3 cycles in one response. Quick explorations.

**Hands-off:** `/explore --depth full "question"` — runs to completion. Human audits the folder tree after.

---

## Safety Mechanisms

- **Circuit breaker:** 2+ cycles with zero/negative velocity → force-pause
- **Budget limit:** Maximum iterations before mandatory checkpoint (configurable)
- **Folder persistence:** Everything saved — any decision can be reviewed or undone
- **High-impact pause:** SHIFT, DIAGNOSE, RECONSIDER always pause for human input (even in --depth full)

---

## Noted for Future

- **Progressive automation:** After 10+ explorations, calibrate confidence threshold from human override patterns
- **Compound explorations:** Decompose + run SIC on all branches autonomously
- **Exploration undo:** `/explore --undo N` rewinds to iteration N
- **Explorations spawning explorations:** Recursive autonomous search across arbitrary depth






