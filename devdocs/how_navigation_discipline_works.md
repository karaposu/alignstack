# How Navigation Works

## Why Navigation Exists

The SIC loop (Sensemaking → Innovation → Critique) answers ONE question per run. When the question isn't fully answered after an iteration, the loop currently does ONE thing: narrow the focus and re-run. This is single-threaded thinking — one question, one direction, one path.

Real thinking doesn't work this way. After evaluating ideas, a thinker naturally sees MULTIPLE possible directions: go deeper on this survivor, investigate that frontier question, unblock this dependency, revisit that past finding under new conditions. These aren't alternative paths to choose between — they're ALL valid next steps that could advance the goal, potentially in parallel.

Navigation is the cognitive operation that ENUMERATES all possible next steps after a SIC iteration completes. It reads what C produced (survivors, refinements, kill seeds, frontier questions), what the telemetry signals (thin coverage, scope gaps), and what the broader context demands (blockers, past findings to revisit) — and produces the FULL SPACE of possible next directions.

Navigation doesn't choose which directions to pursue. It maps the space. The choosing happens separately — through prioritization (which directions have the most impact?) and selection (which of those do we actually execute given our constraints?).

Without navigation, the loop is single-headed: one iteration produces one next step. With navigation, the loop becomes multi-headed: one iteration produces a SPACE of possible next directions, each of which can become its own SIC branch.

---

## Navigation Item Structure

A navigation item has TWO levels: the direction (with its reasoning) and the guidelines (each with its own reasoning).

### Direction + WHY

WHAT to pursue and WHY it's worth pursuing.

- **Direction** — the type (from the 15-type taxonomy) + the specific target. This is the DESTINATION — where to point the next SIC loop.
- **WHY** — the reasoning for why this direction is in the navigation space. What evidence from C's output, telemetry, or context makes this direction worth considering.

### Guidelines + each has WHY

HOW to approach the direction — and WHY each pointer matters.

Each guideline is an independent pointer that serves the direction. Guidelines don't need to connect to each other — they each independently relate to the direction. They're parallel coordinates pointing at the same destination from different angles. Each guideline has its OWN reasoning explaining why THIS specific pointer matters for THIS direction.

Guidelines can address any discipline step:
- S guidelines: "Focus on X, read Y, check perspective Z"
- I guidelines: "Try domain transfer from A, generate alternatives to B"
- C guidelines: "Check for trap D, evaluate against criterion E"
- General: "The user cares about elegance" or "Speed matters more than completeness here"

### Example

```
■ DEEPEN: The taxonomy's completeness [HIGH]
  WHY: 15 types is a first-pass enumeration — untested against real use

  Guidelines:
  - Check against actual SIC runs
    → bc real usage is the only valid test of completeness
  - Look for overlapping types (DEEPEN vs RE-RUN DEEPER)
    → bc these felt blurry during actual use in this session
  - Test whether the 3 categories partition cleanly
    → bc some items seemed to span categories during enumeration
  - Consider collaborative types (handoff, delegation)
    → bc multi-agent scenarios weren't considered in the original analysis
  - Elegance criterion: if 15 is too many, find the deeper structure
    → bc the user explicitly values structural simplicity
```

Two levels of WHY: **direction-level** (why pursue this direction at all) and **guideline-level** (why this specific pointer matters for this direction). Both are independently reasoned.

### Why This Structure, Not Bare Questions or Actions

A bare question ("What aspects of the taxonomy are incomplete?") tells you WHERE to go but not HOW to approach it. A bare action ("DEEPEN the taxonomy") tells you the TYPE but not the specifics. A navigation item gives you BOTH — the direction AND independently reasoned pointers for how to approach it. The SIC run that follows starts with a clear sense of what to focus on and WHY each focus area matters.

### Guidelines Carry Accumulated Wisdom

The guidelines are where discipline knowledge travels to the SIC run. The four wayfinding traps ("check for TODO fixation, fake gates, insignificance, intervention impact") ARE guidelines for the critique step. The "read state snapshot, focus on what changed" instruction IS a guideline for the sensemaking step.

Each navigation item carries its OWN relevant guidelines — specific to this direction, not generic to a question type. "DEEPEN X" has guidelines about X's unexplored aspects. "DEEPEN Y" has different guidelines about Y's specific gaps. The guidance is per-ITEM, not per-TYPE.

### Guidelines in `_branch.md`

When a navigation item becomes a SIC branch, its direction becomes the question and its guidelines become a section in `_branch.md`:

```markdown
# Branch: Deepen Taxonomy Completeness

## Question
Investigate whether the 15 types cover the full next-step space.

## Goal
Confirm completeness or identify missing types.

## Guidelines (from navigation)
- Check against actual SIC runs
  → bc real usage is the only valid test of completeness
- Look for overlapping types
  → bc these felt blurry during actual use
- Test category partitioning
  → bc some items seemed to span categories
- Consider collaborative types
  → bc multi-agent scenarios weren't considered
- Elegance criterion applies
  → bc the user explicitly values structural simplicity
```

Configuration IS input. The guidelines travel with the question in the file the disciplines already read. No adapter files. No injection mechanism.

---

## The Navigation Space: 15 Types in 3 Categories

When a SIC iteration completes, what are ALL the possible types of next directions? Through analysis, we identified 15 distinct types organized in three categories based on what they act on.

### Content-Directed (acting on WHAT C produced)

These types respond to C's output — the survivors, refinements, kill seeds, and frontier questions.

| Type | What it does | When it's the right move |
|---|---|---|
| **DEEPEN** | Go deeper on a survivor — investigate a specific aspect that's still surface-level | C produced a survivor but it's not deep enough for the goal |
| **REFINE** | Fix a specific weakness that C identified in a candidate | C gave a REFINE verdict with direction on what needs improving |
| **PURSUE SEED** | Investigate what can be learned from a killed idea — follow the seed C extracted | C killed a candidate but the failure reveals a promising new direction |
| **INVESTIGATE FRONTIER** | Answer a question that the SIC loop raised but didn't answer | A frontier question exists that matters for the goal |
| **DEVELOP** | Take a survivor and make it concrete — implement, prototype, document | A survivor is mature enough to move from understanding to action |
| **TERMINATE** | The question is answered. Compile the result and stop. | The answer addresses the question and meets the goal |

### Process-Directed (acting on HOW S/I/C ran)

These types respond to the quality of the process itself — telemetry signals, scope issues, and approach problems.

| Type | What it does | When it's the right move |
|---|---|---|
| **RE-RUN DEEPER** | Re-run a discipline with more depth because it was thin | Telemetry flagged insufficient coverage |
| **WIDEN** | Expand the question's scope because it's too narrow for the goal | Scope check shows question doesn't cover what goal requires |
| **REFRAME** | Change the question entirely — the current framing isn't productive | Multiple iterations without progress, or fundamental assumption is wrong |
| **DIFFERENT APPROACH** | Try a different cognitive approach to the same question | Current approach produces output but doesn't advance the goal |

### Context-Directed (acting on information OUTSIDE this inquiry)

These types respond to the broader context — past findings, blockers, parallel branches, and verification needs.

| Type | What it does | When it's the right move |
|---|---|---|
| **REVISIT** | Go back to a prior finding and re-evaluate under new conditions | New information changes the conditions of a past decision |
| **UNBLOCK** | Resolve a dependency that's preventing progress | A blocker was identified that can't be solved within the current inquiry |
| **MERGE** | Combine results from multiple branches into one coherent answer | Multiple branches completed, results need integrating |
| **TEST** | Verify a finding or survivor against reality | A finding needs validation, not more analysis |
| **CONSOLIDATE** | Integrate findings across multiple inquiries into unified understanding | Multiple inquiries have produced findings that need to be brought together |

### Why These Three Categories

The categories reflect what the next direction TARGETS:

- **Content-directed** acts on the OUTPUTS of this SIC run — what was produced
- **Process-directed** acts on the QUALITY of this SIC run — how well it ran
- **Context-directed** acts on INFORMATION OUTSIDE this run — prior work, blockers, parallel efforts

### Compared to What Existed Before

| System | Next-step vocabulary | Coverage |
|---|---|---|
| **MVL (current)** | 1 type: narrow and iterate | Minimal |
| **Wayfinding** | 6 moves: BROADEN, NARROW, SHIFT, DIAGNOSE, TERMINATE, RECONSIDER | Partial |
| **Navigation** | 15 types across 3 categories | Full |

---

## The Navigation Map Format

The navigation map is the FULL enumeration of possible next directions, presented for human review.

### Format

```
## Navigation Map ([N] items, [H] HIGH)

### Content [count]
■ [TYPE]: [direction] [HIGH]
  WHY: [evidence from C output or telemetry]
  Guidelines:
  - [pointer 1] → [why this pointer matters for this direction]
  - [pointer 2] → [why]
  - [pointer 3] → [why]

○ [TYPE]: [direction] [MEDIUM]
  WHY: [reason]
  Guidelines:
  - [pointer 1] → [why]
  - [pointer 2] → [why]

· [TYPE]: [direction] [LOW]
  WHY: [reason]
  Guidelines:
  - [pointer 1] → [why]

### Process [count]
■ / ○ / · items...

### Context [count]
○ / · items...

### Excluded (considered and rejected)
✗ [TYPE] — [why structurally inapplicable]
✗ [TYPE] — [why structurally inapplicable]
```

### Confidence Symbols

- **■ HIGH** — strong evidence from C's output (explicit verdict, clear frontier question, telemetry flag above threshold)
- **○ MEDIUM** — moderate signal worth considering (inference from output, borderline telemetry)
- **· LOW** — weak signal, might be noise (tangential observation, minor gap)

Confidence is a ROUGH signal for implicit prioritization, not a precise measurement. The basis: ■ = from explicit data, ○ = from inference, · = from weak signal.

### Scannable Design

The map is designed to be scannable in under 2 minutes:
- Grouped by category (content/process/context)
- Confidence symbols are visual markers — follow the ■ symbols for HIGH items
- Direction is the scan line (read quickly)
- WHY and Guidelines are the depth layer (read when considering a specific item)

### Excluded Section

Types that navigation considered and REJECTED, with reasoning. Only STRUCTURALLY inapplicable types go here (e.g., CONSOLIDATE when only 1 inquiry exists, TERMINATE when goal isn't met). Low-priority items stay in the main map with · LOW confidence — they're not excluded, just deprioritized.

The excluded section prevents the human from wondering "why isn't X here?" and adding it unnecessarily.

---

## How Navigation Integrates with MVL

Navigation is NOT a separate command or a separate loop. It's an upgrade to MVL's existing iteration-complete step — the point where MVL decides what happens after C finishes.

### Current MVL Flow

```
/MVL "question"        → creates inquiry
S → I → C              → disciplines run
/MVL folder/           → ITERATION COMPLETE
                         "Question not answered.
                          Gap: [X].
                          Next: narrow to [X], re-run S."
```

One output. One direction. Single-headed.

### MVL with Navigation

```
/MVL "question"        → creates inquiry
S → I → C              → disciplines run
/MVL folder/           → ITERATION COMPLETE + NAVIGATION
                         
                         Reads: C output, telemetry, scope, goal
                         Produces: NAVIGATION MAP
                         (full enumeration of directions + guidelines)
                         
                         Human reviews the map, picks directions to pursue
```

Multiple outputs. Multiple possible directions. Each with independently reasoned guidelines. The full space.

### What Navigation Produces

Navigation produces the **navigation map** — the full enumeration of all possible next directions. Each direction has its own WHY, and each direction's guidelines have their own WHY. Organized by category with confidence levels.

It does NOT:
- Choose which directions to execute (that's prioritization — a separate decision)
- Create branches (that's execution — comes after choosing)
- Determine dependencies between directions (that's planning — comes after choosing)

The focus is on ENUMERATION FIRST. Define the space completely. Choosing from the space is a separate problem.

### Why Enumeration Before Selection

Choosing well requires seeing the full space. If navigation produced only the "top 3" from the start, you'd never see items 4-15. But item 6 (RE-RUN DEEPER) might be more important than item 1 (DEEPEN) — the sensemaking was thin, so deepening a survivor from thin sensemaking might be building on a weak foundation.

The human (or eventually the system) needs to see the FULL SPACE to make good selections. Premature filtering hides options. Navigation enumerates. Selection filters. They're sequential operations with different responsibilities.

The navigation space can be 5 items or 50 — it enumerates EVERYTHING, regardless of count. The confidence symbols provide implicit prioritization without hiding anything.

---

## How Navigation Enables Multi-Headed Loops

Without navigation, one SIC iteration leads to one next iteration. The loop is a LINE:

```
SIC → narrow → SIC → narrow → SIC → answer
```

With navigation, one SIC iteration reveals MULTIPLE possible next directions. Each direction can become its own SIC branch. The loop becomes a TREE:

```
SIC → navigation map (15 items)
        → human selects 3
        → branch 1: DEEPEN X → SIC → ...
        → branch 2: INVESTIGATE FRONTIER Z → SIC → ...
        → branch 3: REFINE W → SIC → ...
        → when branches complete → MERGE → SIC → answer (or new navigation)
```

Each branch is its own SIC inquiry in a sub-folder. Each runs independently. When branches complete, a MERGE step (itself a SIC run) synthesizes the results. If the merged result answers the original question, TERMINATE. If not, navigate again.

### Branches as Sub-Folders

```
devdocs/inquiries/original_question/
  _branch.md                      (the original question)
  _state.md                       (with navigation map)
  sensemaking.md                  (iteration 1)
  innovation.md
  critique.md
  branch_1_deepen_x/              (selected direction 1)
    _branch.md                    (direction + guidelines from navigation item)
    _state.md
    sensemaking.md / innovation.md / critique.md
  branch_2_frontier_z/            (selected direction 2)
    _branch.md                    (direction + guidelines from navigation item)
    _state.md
    sensemaking.md / innovation.md / critique.md
```

Each branch's `_branch.md` contains the direction as the question and the guidelines (each with its own WHY) as a section. The SIC run in each branch starts with independently reasoned pointers from the navigation item.

### The Navigation Map in `_state.md`

The navigation output lives in the inquiry's `_state.md`:

```markdown
## Navigation Map (after iteration 1)

### Content [4 items, 2 HIGH]
■ DEEPEN: "Go deeper on X — aspect A" [HIGH]
  WHY: C survived with untested assumption about A
  Guidelines:
  - Check A's underlying mechanism → bc the assumption is load-bearing for the whole survivor
  - Test a prediction that A implies → bc falsifiable predictions reveal whether understanding is real
  - Compare to how similar aspects work in Y → bc Y solved a related problem differently

■ DEVELOP: "Make Y concrete as implementation plan" [HIGH]
  WHY: Y survived with no caveats — ready for implementation
  Guidelines:
  - Target format: step-by-step implementation guide → bc the user needs actionable output
  - Identify prerequisites and blockers → bc implementation order matters
  - Keep scope to Y only, don't expand → bc Y is well-defined and expansion risks dilution

○ REFINE: "Fix W on dimension D" [MEDIUM]
  WHY: C prosecution identified D as the weakest dimension
  Guidelines:
  - Reference C's specific prosecution argument on D → bc that's the exact weakness to address
  - Check if D-weakness is fundamental or surface → bc surface fixes are cheap, fundamental means KILL

· INVESTIGATE FRONTIER: "Q3" [LOW]
  WHY: tangential gap, minor
  Guidelines:
  - Only pursue if X deepening reveals connection → bc standalone value is low

### Process [1 item]
○ RE-RUN DEEPER: "S had 3 perspectives — borderline thin" [MEDIUM]
  WHY: typical is 5 perspectives, this run had 3
  Guidelines:
  - Add technical perspective specifically → bc the question was technical and S missed that angle
  - Add risk perspective → bc no failure modes were checked during S

### Excluded
✗ TERMINATE — answer doesn't cover goal yet
✗ CONSOLIDATE — single inquiry, nothing to consolidate
```

This is the FULL enumeration. The human reviews, selects which to pursue, and each selected item becomes a sub-folder with its own SIC run.

---

## What's Not Solved Yet

Navigation as defined here handles ENUMERATION — producing the full space of typed briefs. Several subsequent operations are needed but not yet designed:

**Prioritization:** Given the navigation space, which directions have the most impact on the goal? The confidence symbols provide rough implicit prioritization. A more rigorous prioritization mechanism (triage by marginal impact) is a separate design problem.

**Selection:** Given the prioritized space, how many to actually execute? What's the right branch limit? How to balance thoroughness against focus?

**Dependency Detection:** Which directions depend on others? MERGE always comes after its branches. DEVELOP comes after DEEPEN. Content-specific dependencies require understanding the content, not just the type.

**Execution Management:** How to track active branches, detect completion, trigger dependent steps, and know when to navigate again? For human-driven use, this is manual. For autonomous loops, this needs automation.

Each of these is a separate design problem. Navigation provides the FOUNDATION — the enumerated, typed space of briefs — on which prioritization, selection, and execution are built.

---

## The Relationship Between Navigation and Reflection

Navigation and reflection are DIFFERENT cognitive operations that share a common input:

| | Reflection | Navigation |
|---|---|---|
| **Direction** | BACKWARD — how did the process perform? | FORWARD — what should happen next? |
| **Output** | Process observations, memory cells, process frontier | Navigation map of typed briefs |
| **Purpose** | Learn from the run to improve future runs | Direct the next cycle of work |
| **Shared input** | Both read C's output, telemetry, and the full SIC run |

They are NOT the same operation. Reflection examines the PROCESS (was S thorough? did C's prosecution miss something?). Navigation examines the RESULTS (what survived? what gaps remain? what directions are available?).

They share a common base: reading the SIC run's outputs and assessing the state. But they produce different outputs for different purposes. Reflection looks backward to learn. Navigation looks forward to direct.

Both happen after C completes. Both are valuable. Neither replaces the other.

### The Boundary Flow: R → N → Select

Reflection runs FIRST at the boundary. Navigation reads R's output. Learn first, then navigate.

```
SIC completes
  → R (Reflect): examines the process — what worked, what was thin, what surprised
  → N (Navigate): reads SIC output + R's observations — produces navigation map
  → Human selects directions from the map
  → Each selected direction → next SIC
```

R feeds N as an optional enhancement. If R detects "S was thin on technical perspectives," N includes a RE-RUN DEEPER item with R's specific finding as a guideline: "add technical perspective → bc R identified this as the gap." R's process observations become N's guidelines. What was learned (R) shapes where to go (N).

N works WITHOUT R — it reads SIC output directly and produces the map. N works BETTER with R — R's observations add targeted guidelines that SIC output alone doesn't contain. The human can skip R when the process was fine. They run R when they want to learn from the process before deciding what's next.

---

## Auto-Derivable vs Human-Judgment Types

Of the 15 types, most can be automatically identified from the data produced by a SIC run:

**Auto-derivable (from C output + telemetry + scope check):**

| Type | Auto-derived from |
|---|---|
| DEEPEN | C verdict: SURVIVE + unexplored depth |
| REFINE | C verdict: REFINE + refinement brief |
| PURSUE SEED | C verdict: KILL + extracted seed |
| INVESTIGATE FRONTIER | Frontier questions in C's output |
| DEVELOP | C verdict: SURVIVE + mature/actionable |
| TERMINATE | Answer matches goal |
| RE-RUN DEEPER | Telemetry below threshold |
| WIDEN | Scope check: question doesn't cover goal |
| UNBLOCK | Blocker explicitly identified |
| TEST | Finding stated as testable hypothesis |
| MERGE | Multiple branches completed |

**Human-judgment required:**

| Type | Why it needs judgment |
|---|---|
| REFRAME | Knowing the framing is wrong requires judgment about whether more depth would help or the approach itself is misguided |
| REVISIT | Knowing which past finding to re-evaluate requires cross-inquiry awareness |
| DIFFERENT APPROACH | Knowing which different approach to try requires experience with available approaches |
| CONSOLIDATE | Knowing which inquiries need integration requires cross-inquiry strategic judgment |

This split IS the graduated autonomy boundary. At Level 0, the human makes all decisions. At Level 1, the system enumerates the 11 auto-derivable types with briefs and the human adds the 4 judgment types. At Level 2+, the system handles more — eventually only escalating the judgment types.
