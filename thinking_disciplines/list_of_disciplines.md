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

## Planned

### 3. Critique

**Transform:** Plan or idea → Identified risks, errors, and conflicts

**What it is:** A framework for systematically evaluating plans, designs, and ideas to find what could go wrong. Not nitpicking — finding the risks that actually matter. The `/critic` and `/critic-d` commands already do this but have no formal framework defining what good critique IS, what its failure modes are, or how to ensure coverage.

**Components to define:**
- What are the dimensions of critique? (correctness, coherence, feasibility, completeness, security, performance — are there others?)
- What's the coverage strategy? (how do you know you've checked enough dimensions?)
- What's the severity model? (how to distinguish noise from real risks)
- What are the failure modes of bad critique? (rubber-stamping, nitpicking, missing systemic risks, severity inflation, checking the plan instead of the assumptions behind the plan)

**Existing commands:** `/critic`, `/critic-d`
**Priority:** High — used constantly, currently ad-hoc

---

### 4. Decomposition

**Transform:** Complex whole → Manageable independent parts

**What it is:** A framework for breaking complex tasks, systems, or problems into pieces that can be worked on independently. The #1 bottleneck for long autonomous tasks — bad decomposition means pieces that can't be implemented independently, hidden dependencies that surface mid-build, and compounding errors across subtasks.

**Components to define:**
- How to detect natural boundaries (where does one piece end and another begin?)
- How to verify independence (can piece A be built without piece B existing?)
- How to map dependencies (what ordering constraints exist?)
- How to size pieces (when is a piece too big? too small?)
- What are the failure modes? (premature decomposition before understanding, splitting at the wrong boundaries, hidden coupling between "independent" pieces, uniform sizing that ignores natural complexity variation)

**Existing commands:** `/decompose` (planned, not yet built)
**Priority:** High — the bottleneck for every complex task

---

### 5. Diagnosis

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

### 6. Exploration

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

### 7. Reflection

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

### 8. Recovery

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

### 9. Evaluation

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

### 10. Meta-Plan

**Transform:** Problem + context → Correct sequence of disciplines to apply

**What it is:** The discipline for combining other disciplines. Given a problem and its current context (including what has already been done, what was tried before, what failed), Meta-Plan determines which disciplines to apply, in what order, and how their outputs feed into each other. It is the orchestrator that makes the other nine disciplines work together as a system rather than a disconnected toolbox.

Without Meta-Plan, the user has to decide: "should I sensemaking this first, or decompose it, or innovate?" That decision itself requires structured thinking. Meta-Plan IS that structured thinking.

**Components to define:**
- Problem classification (what kind of problem is this? ambiguous? complex? broken? novel? stale?)
- Context reading (what has already been done? what disciplines have been applied? what did they produce? what failed?)
- Discipline selection (which disciplines does this problem need, and which does it NOT need?)
- Sequencing (what order? what feeds into what? where are the dependencies between discipline outputs?)
- Past context integration (what was learned in previous sessions, previous attempts, previous failures that should inform the current plan?)
- Adaptive re-planning (when a discipline produces unexpected output, how does the plan adjust?)
- What are the failure modes? (applying disciplines in the wrong order, skipping a needed discipline because it feels redundant, ignoring past context and re-discovering the same dead ends, over-planning instead of starting, rigid sequencing that doesn't adapt to what each discipline reveals)

**Existing commands:** `/align-modes` (partial, assesses all modes but doesn't sequence disciplines)
**Priority:** High — this is what makes the disciplines composable instead of isolated

---

## Discipline Relationships

```
                        ┌─────────────┐
                        │  Meta-Plan  │
                        │ (sequences  │
                        │  all others)│
                        └──────┬──────┘
                               │
            ┌──────────────────┼──────────────────┐
            ▼                  ▼                  ▼
Exploration → Sensemaking → Innovation
                               ↓
                          Decomposition → Critique → (implement) → Evaluation
                                                                       ↓
                                                         Diagnosis → Recovery

Reflection spans all — it operates on the output of any discipline
Meta-Plan spans all — it decides which disciplines to use and in what order
```

Each discipline is standalone and domain-agnostic. Together they cover the cognitive operations that development requires. Meta-Plan is what turns them from a list into a system — it reads the problem, reads the context, and produces the right sequence of disciplines for this specific situation. The AlignStack Agent uses them as the methodology behind its seven modes.
