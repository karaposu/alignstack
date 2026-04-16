# Innovation: SIC as Wayfinder

## User Input
devdocs/inquiries/sic_as_wayfinder/sensemaking.md

---

## Seed

The sensemaking established: Wayfinding is a configured SIC, not a separate cognitive shape. Its spec components (three-layer awareness, failure-mode traps, six moves) are configurations for running SIC on steering questions. The wayfinding discipline was structurally deficient — it skipped the generative step (I), which is why it fixated on TODOs.

Innovation question: What are the novel ways to implement, extend, or rethink wayfinding-as-SIC that go beyond the obvious "just phrase a wayfinding question and run MVL"?

---

## Mechanism Application

### 1. Lens Shifting (Framer)

**1a. Generic — Teaching frame:** Wayfinding-as-SIC isn't primarily about choosing the next action — it's a training regime for the human's judgment. Over many runs, the human internalizes how S decomposes state, what actions I generates that they didn't think of, and how C evaluates impact. The tool makes itself unnecessary over time.

**1b. Focused — Diagnostic frame:** The most valuable wayfinding output isn't "do X next" but "here's what's actually blocking you." I generates candidate BLOCKAGES instead of candidate actions. C evaluates which blockage, if removed, unblocks the most progress.

**1c. Controversial — Surrender frame:** Sometimes the highest-impact move is to NOT act — wait, let state settle, let pending results arrive. SIC-as-wayfinder should allow "WAIT" as a valid output. The C step's self-challenge should include "name one NON-action that might be higher-impact than any action."

---

### 2. Combination (Generator)

**2a. Generic — Wayfinding + Reflection:** After every wayfinding-SIC, a lightweight R asks: "Was the last recommendation followed? What happened? Was it right?" This calibrates the template over time — the wayfinding question gets annotated with project-specific lessons.

**2b. Focused — Wayfinding + State Snapshot Protocol:** A 30-second form the human fills before running wayfinding-SIC:

```
## State Snapshot (30 seconds to fill)
Goal: [one sentence]
Done since last snapshot: [bullet list]
In progress: [bullet list]  
Stuck on: [one sentence or "nothing"]
Available options I can see: [bullet list]
```

S consumes this. I generates options BEYOND what the human listed. C evaluates. The input format solves the weight problem — not changes to SIC itself.

**2c. Controversial — Wayfinding + Memory Cells:** Wayfinding questions load relevant memory cells from previous runs. "Last time on a similar project, you recommended X but the human overrode to Y and Y was right." Makes wayfinding PERSONALIZED to the specific human's judgment patterns.

---

### 3. Inversion (Framer)

**3a. Generic — Invert "the human provides state":** SIC reads state directly from artifacts — `_state.md` files, git history, active inquiries. The human only provides the goal. S generates the state picture. Eliminates state-compression burden.

**3b. Focused — Invert "produce ONE action":** Wayfinding produces a RANKED LIST with impact differentials. Not "do X" but "do X (high impact), then Y (medium, possible after X), Z available but low-impact (skip unless X/Y blocked)." Presents the decision landscape rather than making the decision.

**3c. Controversial — Invert "wayfinding runs when human asks":** Wayfinding triggers itself as a built-in epilogue to MVL's ITERATION COMPLETE. Every SIC loop ends with a steering recommendation for what to do AFTER this loop.

---

### 4. Constraint Manipulation (Framer)

**4a. Generic — "Must complete in under 60 seconds":** Forces MICRO-SIC: S reads state snapshot (10s), I generates exactly 3 candidates (20s), C scores against goal using only the three traps (30s). Same S→I→C structure, radically reduced depth. SIC has a micro variant.

**4b. Focused — Remove "next action" singularity:** Wayfinding-SIC evaluates the next 3-MOVE SEQUENCE, not one action. Catches dead-end paths where the highest-impact next action leads to a wall at step 2.

**4c. Controversial — "Human must disagree before accepting":** Force adversarial engagement — the human articulates why the recommendation might be wrong before accepting. If they can't, it's probably right. If they can, the disagreement is new information for a tighter second pass.

---

### 5. Absence Recognition (Generator)

**5a. Generic — Missing: when NOT to wayfind:** No concept of "leave it alone, it's working." Need a flow-detection signal that suppresses steering when progress is consistent and no blockers are detected.

**5b. Focused — Missing: project-level state reader:** Individual `_state.md` files exist per inquiry. Nothing aggregates them into "where the whole project stands." Required for cross-project wayfinding.

**5c. Controversial — Missing: human emotional/motivational state:** The technically highest-impact action might be a grueling refactor, but if the human is burned out, the actually highest-impact action restores energy. Input should include a human-state signal ("energy: low/medium/high"). C should weight this.

---

### 6. Domain Transfer (Generator)

**6a. Generic — From GPS navigation:** Wayfinding should show the FULL ROUTE to goal, not just the next turn. Recalculates when conditions change. Continuous projection, not discrete checkpoints.

**6b. Focused — From medical triage:** Don't evaluate "what's most important?" — evaluate "where does my intervention have the highest MARGINAL impact?" Triage matrix:

| | My intervention helps a lot | My intervention helps a little |
|---|---|---|
| **Important to goal** | DO THIS FIRST | Do if quick, otherwise defer |
| **Not important to goal** | Suspicious — why does it need me? | Skip |

The distinction: importance ≠ impact of intervention. Some important things are blocked (can't help now). Some unimportant things are quick wins.

**6c. Controversial — From improv (yes-and):** Instead of generating ALTERNATIVE actions, generate BUILDS on what the human is already doing. "You're working on X. Yes, AND if you also did Y while you're there, it compounds." Biases toward continuation over redirection, respects flow state.

---

### 7. Extrapolation (Generator)

**7a. Generic — All disciplines become configured SIC:** If wayfinding = configured SIC, the pattern generalizes. The discipline library transforms from "7 separate cognitive shapes" to "1 primitive (SIC) + N configuration templates." Each template: input structure (what S reads), generation strategy (what I produces), evaluation dimensions (what C checks). The entire system collapses to SIC + question templates.

**7b. Focused — Predictive wayfinding:** After 50+ wayfinding runs with memory cells, the system has enough data to detect situation types and pre-weight candidates based on historical outcomes. Wayfinding evolves from evaluative to PREDICTIVE.

**7c. Controversial — SIC weight classes:** If micro-SIC works for wayfinding, SIC fragments:
- **Micro-SIC** (< 1 min): Wayfinding, quick checks, yes/no decisions
- **Standard SIC** (5-30 min): Normal inquiry, problem-solving
- **Deep SIC** (1+ hour): Complex research, architecture decisions

"Always full SIC" was itself a premature constraint. The primitive isn't "full SIC" — it's "S→I→C at appropriate depth."

---

## Testing & Verdicts

### SURVIVE

**2b. State Snapshot Protocol** — Solves the weight problem through input design, not loop redesign. Immediately buildable. 30-second human effort, lightweight SIC pass. Convergence: arrives from Combination AND Constraint Manipulation independently.

**6b. Triage Matrix** — Genuinely novel evaluation framework. Fixes the "importance vs. impact of intervention" confusion. Immediately usable as a C-step evaluation tool. Unique to Domain Transfer — mechanism-independent novelty.

**4a/7c. Micro-SIC / Weight Classes** — The primitive has weight variants. Convergence across Constraint Manipulation and Extrapolation. Same S→I→C structure, depth scales to question weight. Challenges MVL's "always full SIC" but the structural argument is strong.

### REFINE

**3a. SIC reads state from artifacts** — Powerful but depends on artifact conventions. Needs scoping: which artifacts, what reading order, how to handle missing/stale files.

**5b. Project-level state reader** — Necessary for cross-project wayfinding. Infrastructure need, not an innovation per se. Minimal version: aggregate all `_state.md` files into a summary.

### KILL (value extracted)

**1a. Training regime** — Not actionable now. Seed for future inquiry about long-term discipline evolution.

**3c. Auto-wayfinding after every MVL** — Makes MVL heavier without clear benefit. Human already decides when to steer.

**4c. Forced disagreement** — Adds friction. Self-challenge in C already serves this role.

---

## Mechanism Coverage (Telemetry)

* **Generators applied:** 4/4 (Combination, Absence Recognition, Domain Transfer, Extrapolation)
* **Framers applied:** 3/3 (Lens Shifting, Constraint Manipulation, Inversion)
* **Convergence:** YES — 3 mechanisms converge on "SIC has weight variants" (4a, 7c, and implicitly 2b). 2 mechanisms converge on "state from artifacts, not human-compressed" (3a, 5b).
* **Survivors tested:** 5 tested / 5 survivors (3 SURVIVE, 2 REFINE)
* **Failure modes observed:** None
* **Overall: PROCEED**
