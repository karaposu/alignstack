# Critique: SIC as Wayfinder

## User Input
devdocs/inquiries/sic_as_wayfinder/

---

## Phase 0 — Dimension Construction

### Evaluation Dimensions

| Dimension | Weight | What it asks | Success criteria |
|---|---|---|---|
| **Practicality** | CRITICAL | Can the user do this TODAY with existing tools? | Works with current MVL + discipline commands, no new infrastructure |
| **Weight-appropriateness** | CRITICAL | Is this lightweight enough for a steering decision? | Overhead proportional to steering, not full deep-inquiry |
| **Wisdom retention** | HIGH | Does the wayfinding spec's accumulated knowledge survive? | TODO fixation, fake gates, insignificance traps present in evaluation |
| **Generative completeness** | HIGH | Does this force the I step? | I step produces at least one action the human didn't think of |
| **Actionability** | HIGH | Does output tell the human exactly what to DO? | Output is a specific action or ranked list, not an essay |
| **Scalability** | MEDIUM | Works for within-inquiry and cross-project? | Handles at least one scope well |

---

## Candidate Evaluations

### Candidate 1: State Snapshot Protocol (2b)

**Prosecution:**
Hidden assumption: the human can accurately summarize their own state in 30 seconds. But people need wayfinding precisely WHEN they can't see the landscape clearly. "Available options I can see" asks them to do the very thing they're stuck on. The form is most useful when the human LEAST needs wayfinding. Also: "Stuck on: [one sentence]" compresses the most important signal into the smallest space — human's articulation of blockage might be a symptom, not root cause.

**Defense:**
The form doesn't need to be ACCURATE — it gives S something to work with. S questions the input. The "Available options I can see" field is specifically designed to be INCOMPLETE — I generates BEYOND it. The contrast between "what the human sees" and "what I generates" IS the value. The 30-second constraint also makes wayfinding feel EASY to initiate. Freeform wayfinding questions from scratch every time are higher friction despite seeming simpler.

**Collision:** Prosecution identifies real weakness (input quality when confused). Defense's counter is structural (SIC compensates for weak input). Prosecution doesn't destroy defense because S and I are designed to improve on initial input.

**Verdict: SURVIVE with caveats**
- Passes: Practicality (CRITICAL), Weight (CRITICAL), Generative completeness (HIGH), Actionability (HIGH)
- Caveat: Wisdom retention — traps not in the form itself, need injection in wrapping question
- Caveat: Scalability — cross-project requires larger state summary, pushes past 30-second target

---

### Candidate 2: Triage Matrix (6b)

**Prosecution:**
An evaluation framework, not a wayfinding method. Doesn't address state reading, candidate generation, or output format. The 2x2 matrix requires already knowing candidate actions and their impacts — which IS the hard part. Potentially adds false structure: human fills quadrants on gut feel, matrix gives veneer of rigor.

**Defense:**
Core contribution is the DISTINCTION: importance ≠ impact of intervention. This is genuinely non-obvious and fixes a real failure mode. Doesn't need the matrix format — one sentence as a C-step check: "Am I recommending this because it's important, or because my intervention on it would have high marginal impact?"

**Collision:** Prosecution right that it's a component, not a solution. Defense right that the core distinction is valuable and integrable.

**Verdict: REFINE**
- Core distinction extracted as 4th failure-mode trap: "Intervention trap — am I recommending this because it's important, or because MY intervention would have high marginal impact?"
- Integrate into State Snapshot Protocol's evaluation guidance

---

### Candidate 3: Micro-SIC / Weight Classes (4a/7c)

**Prosecution:**
Reintroduces classification (which weight class?) — the CONFIGURE problem in miniature. "Micro-SIC" with 3 candidates in 20s isn't SIC in any meaningful sense — it's a gut-check with labels. The convergence signal (3 mechanisms) may be mechanism bias, not a signal about reality.

**Defense:**
Weight-class selection ("quick decision or deep investigation?") is trivially easy compared to CONFIGURE's pipeline selection. Even in 60 seconds, "generate 3 options then pick best" is structurally better than "pick first thing that comes to mind." The shape (S→I→C) carries value even at low depth. Convergence arrives from sensemaking observation + two independent mechanisms — stronger than mechanism bias alone.

**Collision:** Classification concern is real but much smaller than CONFIGURE. The empirical question (does narrow-scope SIC produce useful steering?) is testable without formalizing weight classes.

**Verdict: REFINE**
- Don't formalize weight classes yet
- Test empirically: run narrow-scope wayfinding questions, observe quality
- If 10+ runs consistently useful → evidence supports formalization

---

### Candidate 4: SIC Reads State from Artifacts (3a)

**Prosecution:**
Artifact quality is inconsistent. Reading scope is unbounded without conventions. Trades one human burden (state compression) for another (artifact maintenance). Current repo's artifacts are mixed quality.

**Defense:**
Reading scope can be defined. Artifacts already exist from normal work. Human provides goal; system provides state.

**Collision:** Depends on artifact convention maturity that doesn't exist yet.

**Verdict: KILL**
- Killed by: Practicality (CRITICAL) — requires conventions that don't exist
- Seed: Sound principle (system reads state, human provides direction). Design target for when artifact conventions mature.

---

### Candidate 5: Project-Level State Reader (5b)

**Prosecution:**
Infrastructure, not a method. Doesn't answer "how to wayfind" — answers "how to aggregate data."

**Defense:**
Necessary enabler for cross-project wayfinding.

**Collision:** Prosecution wins. Valid need, wrong inquiry.

**Verdict: KILL**
- Killed by: Practicality (CRITICAL), Actionability (HIGH)
- Seed: When cross-project wayfinding is the focus, state aggregation will be needed. For now, State Snapshot can span projects manually.

---

## Phase 4 — Coverage + Convergence

### Accumulator

| Candidate | Verdict | Key |
|---|---|---|
| 2b. State Snapshot Protocol | SURVIVE (caveats) | Traps need injection in wrapping question |
| 6b. Triage Matrix | REFINE → 4th trap | Core distinction becomes evaluation guidance |
| 4a/7c. Micro-SIC | REFINE → test empirically | Don't formalize, validate through practice |
| 3a. Artifact State Reading | KILL | Needs artifact conventions that don't exist |
| 5b. Project-Level State Reader | KILL | Infrastructure, not a method |

### Coverage
- Input design: covered (2b, 3a)
- Evaluation framework: covered (6b)
- Loop architecture: covered (4a/7c)
- Infrastructure: covered (5b)
- Output format: not explicitly addressed but freeform SIC is sufficient for narrow questions

### Signal: TERMINATE

One clean survivor with integrated refinements. Landscape stable. No unexplored regions likely to contain fundamentally different solutions.

---

## The Assembled Method

**Wayfinding via SIC — the complete practical method:**

```
Step 1: Fill the State Snapshot (30 seconds)
  Goal: [one sentence]
  Done since last: [bullets]
  In progress: [bullets]
  Stuck on: [one sentence or "nothing"]
  Options I can see: [bullets]

Step 2: Run /MVL with this question:
  "Given this state snapshot, what is the single highest-impact
   action I should take next toward [goal]?
   
   Generate at least 3 candidate actions — including ones 
   NOT in my 'options I can see' list.
   
   Evaluate each against:
   - TODO trap: Am I recommending this because it's undone, 
     or because it advances the goal?
   - Gate trap: Is this a real prerequisite, or just plan ordering?
   - Insignificance trap: Is there a much higher-impact action 
     I'm overlooking?
   - Intervention trap: Am I recommending this because it's 
     important, or because MY intervention on it would have 
     high marginal impact?
   
   After selecting: name one action you're NOT recommending.
   Compare its impact to your choice. If higher — switch."

Step 3: Act on the answer.
```

Works today. Takes ~5 minutes. Carries four traps (including new intervention-impact trap from 6b). Forces I step. Produces specific action. Within-inquiry scope immediately; cross-project by expanding the snapshot.

---

## Convergence Telemetry

* **Dimensions evaluated:** 6/6, all critical covered: YES
* **Adversarial strength:** STRONG — prosecution on 2b and 4a/7c required genuine defense
* **Landscape stability:** STABLE — all candidates address the same three sub-problems
* **Clean SURVIVE:** YES — 2b after integrating 6b's intervention-impact trap
* **Failure modes observed:** None
* **Overall: PROCEED**
