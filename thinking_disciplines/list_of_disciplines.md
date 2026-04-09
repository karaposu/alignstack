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

### 4. Structural Wayfinding

**Transform:** Search state (accumulator, outputs, coverage) → Steering directive + reconsideration signals

**What it is:** The search steering discipline — second-order awareness that operates on the cognitive process itself, not on content. S, I, C, D operate on content; wayfinding operates on the process. Reads where the search stands, how it's moving, and whether past decisions should be revisited, then produces a steering move. Pure search intelligence — does not manage pipelines, state, or orchestration (that's `/inquiry`'s job).

**Components:** Three-layer awareness model (present: position + heading; trend: velocity + acceleration + goal distance; memory: kill conditions + survival conditions + near-misses + dependency chains), six steering moves (BROADEN, NARROW, SHIFT + DIAGNOSE, TERMINATE + RECONSIDER with RESURRECT/INVALIDATE/REVERT sub-actions), self-adjusting relevance threshold, confidence decay on past verdicts, six failure modes.

**Command:** `/wayfinding`
**Files:** `thinking_disciplines/wayfinding.md`

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

### ~~Meta-Plan~~ — Absorbed into Inquiry

*Previously planned as discipline #11. Orchestration components (problem classification, discipline selection, pipeline sequencing) now live in `/inquiry` — the loop manager command. Search steering components (adaptive re-planning, reconsideration) live in Wayfinding (discipline #4). No separate discipline needed.*

---

## Discipline Relationships

### The Complete Built System (5 Disciplines + Inquiry)

`/inquiry` is the loop manager — it classifies problems, designs pipelines (CONFIGURE), manages state, and tells you which command to run next. Wayfinding is the search steering discipline — it runs between iterations and tells the loop where to go next. Together they replace what was previously a single overloaded "meta-search."

```
                    ┌──────────────────────────────────────────┐
                    │            INQUIRY (loop manager)         │
                    │  CONFIGURE: classify, select, sequence    │
                    │  Manages state, tracks progress           │
                    │  Calls /wayfinding between iterations     │
                    └──────┬──────────────┬──────────┬─────────┘
                           │              │          │
                    ┌──────▼──────┐       │   ┌──────▼─────────┐
                    │ WAYFINDING  │       │   │  [discipline   │
                    │ (steering)  │◄──────┘   │   pipeline]    │
                    │ 6 moves     │           │                │
                    └─────────────┘           └──────┬─────────┘
                                                     │
                                              ┌──────┘
                                              └────── loop ───┘
```

Inquiry CONFIGUREs the right disciplines for the problem. Wayfinding's six moves keep the loop directed. Decomposition scales the loop to problems of any size. The folder system persists everything across sessions.

### Full Discipline Flow (Built + Planned)

```
                    ┌──────────────────────────────┐
                    │     INQUIRY (loop manager)    │
                    │  CONFIGURE → run → steer      │
                    └──────────────┬───────────────┘
                                  │
            ┌─────────────────────┼─────────────────────┐
            ▼                     ▼                     ▼
     Sensemaking            Innovation              Critique
     (expand)               (expand)              (contract)
            │                     │                     │
            └──── Decomposition ──┴─── (scale) ────────┘
                        │                   │
                   Wayfinding          Exploration
                   (steer)             (map)
                                  │
                    ┌─────────────┼─────────────┐
                    ▼             ▼             ▼
              Diagnosis      Reflection     Recovery
              (planned)      (planned)      (planned)
                                  │
                                  ▼
                             Evaluation
                             (planned)
```

6 built: Sensemaking, Innovation, Critique, Wayfinding, Decomposition, Exploration
4 planned: Diagnosis, Reflection, Recovery, Evaluation
Meta-Plan: absorbed into Inquiry (CONFIGURE) + Wayfinding (steering)

Each discipline is standalone and domain-agnostic. `/inquiry` turns them from a list into a system — CONFIGURE reads the problem and produces the right discipline sequence, wayfinding steers between iterations. The AlignStack Agent uses them as the methodology behind its seven modes.

