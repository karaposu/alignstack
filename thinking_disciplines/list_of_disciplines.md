# AlignStack Thinking Disciplines

Thinking Disciplines are natural cognitive operations — borrowed from how humans actually think — formalized into repeatable structures with defined components, processes, and failure modes. They are domain-agnostic: each one works for coding, business, design, research, or any field where that type of thinking is needed.

They are not frameworks (too generic), not tools (too mechanical), not tips (too shallow). They are practiced methodologies for specific cognitive tasks — like martial arts disciplines are practiced methodologies for specific physical situations. You study them, use them, and get better at them over time.

Each thinking discipline has: a philosophy/definition, structural components, a process, failure modes, and a coverage or quality strategy. Each one transforms a specific cognitive state into another.

---

## Built

### 1. Structural Sensemaking

**Transform:** Ambiguity → Stable understanding

**What it is:** A systematic process for constructing stable meaning from vague, ambiguous, or complex input. Works by organizing cognitive anchors into constrained conceptual structures through perspective integration, ambiguity collapse, and degrees-of-freedom reduction.

**Components:** Cognitive anchors (constraints, insights, structural points, principles, meaning-nodes), boundary construction operations (perspective checking, ambiguity collapse, degrees-of-freedom reduction), six progressive Sense Versions (SV1–SV6).

**Command:** `/sense-making`
**Files:** `commands/sense-making.md`

---

### 2. Structural Innovation

**Transform:** Seed → Novel viable ideas

**What it is:** A framework for producing novelty through systematic mechanism application. Seven mechanisms (4 Generators + 3 Framers) cover the innovation space. Intuition provides direction, mechanisms provide coverage, testing catches blind spots of both.

**Components:** Intuition (context, valuation, motivation), seeds, seven mechanisms (Lens Shifting, Combination, Inversion, Constraint Manipulation, Absence Recognition, Domain Transfer, Extrapolation), Generator/Framer split, five testing criteria, six failure modes.

**Command:** `/innovate`
**Files:** `commands/innovate.md`, `devdocs/inno/innovaiton_framework.md`, `devdocs/inno/intuiton.md`

---

### 3. Structural Critique

**Transform:** Candidates + evaluation context → Fitness landscape with positioned ideas, coverage map, and convergence signal

**What it is:** A framework for evaluating ideas, plans, and outputs by constructing multi-dimensional fitness landscapes, positioning candidates through adversarial testing, and tracking coverage until convergence. The contraction force in the SIC loop — sensemaking expands understanding, innovation expands the idea space, critique contracts by selecting survivors. Not nitpicking or checklist evaluation — landscape construction with adversarial prosecution/defense and persistent memory across iterations.

**Components:** Two operations (extraction + evaluation), six default evaluation dimensions (correctness, coherence, feasibility, completeness, robustness, elegance — modified per problem), fitness landscape, adversarial structure (prosecution + defense + collision), three verdict types (SURVIVE / REFINE / KILL with constructive output), accumulator (persistent memory across SIC loop iterations), two-level coverage (per-candidate + per-solution-space), convergence detection, seven failure modes.

**Command:** `/critic`, `/critic-d` (to be updated to match the discipline)
**Files:** `thinking_disciplines/critique.md`

---

### 4. Structural Meta-Search

**Transform:** Problem + context → Loop configuration (CONFIGURE) + Steering directives + reconsideration signals

**What it is:** The complete orchestrator — designs loops before execution (CONFIGURE: classify problem, select disciplines, sequence pipeline) and steers them during execution (six moves across three awareness layers). Absorbs what was previously planned as Meta-Plan. Second-order awareness that operates on the cognitive process itself, not on content. S, I, C, D operate on content; meta-search operates on the process.

**Components:** Two-phase operation (pre-execution CONFIGURE + during-execution steering), three-layer awareness model (present: position + heading; trend: velocity + acceleration + goal distance; memory: kill conditions + survival conditions + near-misses + dependency chains), seven moves (CONFIGURE + BROADEN, NARROW, SHIFT + DIAGNOSE, TERMINATE + RECONSIDER with RESURRECT/INVALIDATE/REVERT sub-actions), configurable autonomy levels (depth_1/N/auto/full), auto-continue confidence rules, circuit breaker, self-adjusting relevance threshold, confidence decay on past verdicts, seven failure modes.

**Command:** (operates via `/explore` — CONFIGURE designs the loop, steering runs between iterations)
**Files:** `thinking_disciplines/meta_search.md`

---

### 5. Structural Decomposition

**Transform:** Complex-but-understood whole → Independently coherent pieces with explicit interfaces and dependency ordering (question tree)

**What it is:** The cognitive operation of perceiving internal coupling topology in complexity — seeing where things are tightly connected (keep together) vs loosely connected (natural boundary) — and partitioning at natural boundaries. Not dividing (the action) but perceiving structure (the seeing that makes the cutting obvious). The scale operator for the SIC loop — enables problems of any size by partitioning into SIC-loop-sized pieces. Prerequisite: sensemaking (must understand before decomposing).

**Components:** Coupling perception (core operation — propagation topology between elements), coupling map (high-cohesion clusters + low-coupling valleys), 7-step sequential process (perceive → detect → validate → express → map → order → evaluate), question tree output mapped to folder protocol, dual-direction validation (top-down + bottom-up sanity check with binary confidence), self-evaluation (3 minimum / 7 full dimensions), progressive versions (opt-in, triggered when boundaries discovered wrong during execution), 4 stopping criteria for recursive decomposition, 7 failure modes.

**Command:** `/decompose` (to be built)
**Files:** `thinking_disciplines/decomposition.md`

---

## Planned

### 6. Diagnosis

**Transform:** Failure → Root cause localization

**What it is:** A framework for systematically finding where and why things went wrong. Not "what broke" but "why it broke, at which layer, through what causal chain." Every debugging session needs this — currently it's pure intuition and grep.

**Components to define:**
- Symptom detection (what's the observable failure?)
- Hypothesis generation (what could cause this?)
- Hypothesis testing (how to confirm or eliminate each hypothesis?)
- Root cause isolation (distinguishing symptoms from causes, proximate causes from root causes)
- Layer attribution (which alignment layer did the failure originate at?)
- What are the failure modes? (treating symptoms not causes, stopping at the first explanation, misattributing the layer, confirmation bias toward familiar bugs, assuming the most recent change is the cause)

**Existing commands:** `/verify`, `/probe` (planned)
**Priority:** High — every debugging session, currently unstructured

---

### 7. Exploration

**Transform:** Unknown territory → Mapped understanding

**What it is:** A framework for systematically mapping unfamiliar territory — codebases, domains, problem spaces. Different from Sensemaking (which clarifies what's ambiguous) — Exploration maps what's unknown. You don't know what you don't know; the framework gives you a method for discovering it.

**Components to define:**
- Breadth-first scan (what exists at the surface level?)
- Depth probes (where should we go deeper?)
- Boundary detection (where does this territory end?)
- Knowledge gap identification (what do we NOT know after scanning?)
- Confidence mapping (what are we sure about, what is partially known , what's uncertain, what's unknown?)
- What are the failure modes? (exploring too deep before scanning breadth, mistaking surface understanding for deep understanding, stopping exploration when it feels "enough" rather than when gaps are closed)

**Existing commands:** `/arch-small-summary`, `/arch-intro`, `/arch-traces`, `/arch-traces-2`
**Priority:** Medium — the archaeology commands work well, but a framework would make them more principled

---

### 8. Reflection

**Transform:** Completed work → Extracted patterns and insights

**What it is:** A framework for learning from what was done. Not just "what happened" (that's a report) but "what does it mean, what patterns emerged, what should change going forward." The meta-process that makes all other processes improve over time.

**Components to define:**
- Timeline reconstruction (what actually happened, in what order?)
- Pattern extraction (what repeated? what was surprising? what was predicted correctly/incorrectly?)
- Decision evaluation (which decisions were good? which looked good but weren't? which looked bad but were right?)
- Trajectory identification (where is the project heading based on the arc of work, not just the latest commit?)
- What are the failure modes? (recency bias, success bias, confusing activity with progress, reflecting on what was done instead of what was learned)

**Existing commands:** `/overview-report`, `/compare-intent` (planned)
**Priority:** Medium — valuable but less frequently needed than critique, decomposition, diagnosis

---

### 9. Recovery

**Transform:** Broken state → Restored function

**What it is:** A framework for systematically getting back to a known-good state after a failure. Where Diagnosis finds the problem, Recovery fixes it — with minimum collateral damage and maximum confidence that the fix is complete.

**Components to define:**
- Damage assessment (what exactly is broken? what still works?)
- Known-good state identification (what are we restoring TO?)
- Rollback vs forward-fix decision (revert or patch?)
- Minimal fix path (smallest change that restores function)
- Verification of restoration (how do we confirm it's actually fixed?)
- What are the failure modes? (incomplete recovery, fixing the symptom not the cause, introducing new problems during recovery, restoring to a state that was already degraded)

**Existing commands:** None — identified gap
**Priority:** Lower — important but more operational than philosophical

---

### 10. Evaluation

**Transform:** Output → Intent comparison

**What it is:** A framework for verifying that what was built matches what was intended. Not "does it work?" (that's testing) but "does it do what was asked for?" Catches the case where implementation is correct but doesn't match intent — the right code for the wrong problem.

**Components to define:**
- Intent extraction (what was actually asked for? success criteria, implied requirements, unstated expectations)
- Output mapping (what was actually built? what does it do?)
- Gap analysis (what was asked but not built? what was built but not asked?)
- Alignment scoring (what percentage of intent is fulfilled?)
- What are the failure modes? (vague intent making comparison impossible, measuring what's easy instead of what matters, confusing "working" with "correct")

**Existing commands:** `/compare-intent` (planned)
**Priority:** Medium — narrow scope, partially covered by critique

---

### ~~Meta-Plan~~ — Absorbed into Meta-Search

*Previously planned as discipline #11. Fully absorbed into Structural Meta-Search (discipline #4) via the CONFIGURE move. All Meta-Plan components are covered: problem classification + discipline selection + sequencing (CONFIGURE), context reading + past context integration (memory layer), adaptive re-planning (steering moves). No separate discipline needed.*

---

## Discipline Relationships

### The Complete Built System (5 Disciplines)

Meta-search is the complete orchestrator — it designs the loop (CONFIGURE) and steers it (6 moves). No separate Meta-Plan needed.

```
                    ┌──────────────────────────────────────────┐
                    │            META-SEARCH                   │
                    │                                          │
                    │  CONFIGURE: classify problem, select     │
                    │    disciplines, sequence pipeline         │
                    │                                          │
                    │  STEER: BROADEN / NARROW / SHIFT /       │
                    │    DIAGNOSE / TERMINATE / RECONSIDER     │
                    └──────┬──────────────┬──────────┬─────────┘
                           │              │          │
                    ┌──────▼──────────────▼──────────▼─────────┐
                    │   [discipline pipeline from CONFIGURE]    │
                    │   Adapts to the problem. Examples:        │
                    │   • S → I → C (ambiguous, needs ideas)   │
                    │   • S → Decompose → [S→I→C per branch]   │
                    │   • S only (just need clarity)            │
                    │   • I → C (clear, need options evaluated) │
                    └──────┬───────────────────────────┬───────┘
                           │                           │
                           └────── loop ───────────────┘
```

Meta-search CONFIGURE selects the right disciplines for the problem. The six steering moves keep the loop directed. Decomposition scales the loop to problems of any size. The folder system persists everything across sessions.

### Full Discipline Flow (Built + Planned)

```
                    ┌──────────────────────────────┐
                    │  META-SEARCH (orchestrator)   │
                    │  CONFIGURE → STEER → STEER   │
                    └──────────────┬───────────────┘
                                  │
            ┌─────────────────────┼─────────────────────┐
            ▼                     ▼                     ▼
     Sensemaking            Innovation              Critique
     (expand)               (expand)              (contract)
            │                     │                     │
            └──── Decomposition ──┴─── (scale) ────────┘
                                  │
                    ┌─────────────┼─────────────┐
                    ▼             ▼             ▼
              Exploration    Diagnosis      Reflection
              (planned)      (planned)      (planned)
                                  │
                            ┌─────┴─────┐
                            ▼           ▼
                        Recovery    Evaluation
                        (planned)   (planned)
```

5 built: Sensemaking, Innovation, Critique, Meta-Search, Decomposition
5 planned: Diagnosis, Exploration, Reflection, Recovery, Evaluation
Meta-Plan: absorbed into Meta-Search (CONFIGURE)

Each discipline is standalone and domain-agnostic. Meta-search turns them from a list into a system — CONFIGURE reads the problem and produces the right discipline sequence. The AlignStack Agent uses them as the methodology behind its seven modes.