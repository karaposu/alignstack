name: comprehend
description: Structural Comprehension is the process of transforming an observable-but-opaque artifact into an internal working model with predictive power through progressive construction, causal tracing, perturbation testing, and adversarial self-verification.

# /comprehend — Structural Comprehension Analysis

Analyze the given input using the Structural Comprehension Framework. This transforms observable-but-opaque artifacts into tested, transferable working models through progressive model construction, perturbation testing, and adversarial self-verification.

## Additional Input/Instructions

$ARGUMENTS

---

## Instructions

1. Read the input and consume it. It can be raw text, a folder path with md files, code files, or image path. Consume all input.

2. Determine the comprehension aspect:
   - **Mechanistic** (default) — "How does this work?" Build a model of mechanism.
   - **Intent** — "Why was this built this way?" Build a model of the design space.
   - If the user specifies an aspect, use it. Otherwise default to mechanistic, blending intent naturally as it arises.

3. Determine the target depth:
   - If the user specifies a depth target, stop there.
   - If no target is specified, aim for Predictive (CV3-CV4) for code and systems, Structural (CV1) for quick orientation tasks.

4. Use codebase context where relevant. For code artifacts, prefer execution-based perturbation testing (actually run the code, modify inputs, observe outputs). For non-code artifacts, use scenario-based or reasoning-based perturbation.

5. Execute the full Structural Comprehension process described below, producing all Comprehension Versions up to the target depth.

6. Save the output as a markdown file (unless differently stated in additional instructions!):
   - **If the input was a file path** — save in the same folder as the input file.
   - **Otherwise** — save under `devdocs/comprehension/<suitable-name>.md` (create the directory if needed).

7. Print the output in the conversation as well.

---

## The Structural Comprehension Framework

### What This Is

Structural Comprehension is a systematic approach for building internal working models of observable-but-opaque artifacts. It works by progressively constructing a model through structural mapping, behavioral tracing, and causal discovery, then testing that model through falsifiable predictions and adversarial self-challenge.

Rather than relying on the feeling of understanding, Structural Comprehension treats comprehension as a testable process — depth is demonstrated through prediction accuracy, not declared through description fluency.

> **Structural Comprehension is the process of transforming an observable-but-opaque artifact into an internal working model with predictive power — through progressive construction, causal tracing, perturbation testing, and adversarial self-verification — producing understanding that is testable, transferable, and depth-aware.**

### Two Primary Aspects

**Mechanistic** — "How does this work?" Build a model of internal mechanism. Predictions target behavior: "Given input X, the output is Y because Z."

**Intent** — "Why was this built this way?" Build a model of the design space. Predictions target design decisions: "If constraint X were relaxed, the design would shift to Y."

Both aspects use the same process. They differ in what you trace, what you perturb, and what your predictions target.

### The Depth Hierarchy

| Level | What you can do | Test |
|-------|----------------|------|
| **Descriptive** | Describe what the artifact does | Can you predict its PURPOSE? |
| **Structural** | Describe how it's organized | Can you predict where a responsibility lives? |
| **Causal** | Trace causality for a given input | Can you trace a path you haven't traced before? |
| **Predictive** | Predict behavior for unobserved conditions | Can you predict output for untested edge cases? |
| **Generative** | State the minimal generating principles | Can you explain WHY and reconstruct from principles? |

**Depth is demonstrated, not declared.** You cannot claim a level without passing its test.

### Key Components

**Model Construction** — Progressive building of the internal model through structural mapping, behavioral tracing, and causal discovery.

**Perturbation Testing** — Change one thing, observe what changes. Use the strongest form available:
- Execution-based (strongest) — actually run/change it and observe
- Scenario-based (moderate) — construct a realistic scenario and reason
- Reasoning-based (weakest but valid) — thought experiments

**Prediction Testing** — Explicit, falsifiable predictions generated BEFORE checking. "I predict X because Y" — specific enough to be wrong.

**Adversarial Self-Challenge** — Deliberately seek the case that would BREAK your model. 3 attempts minimum at the model's weakest points.

**Accommodation Trigger** — When prediction failures are systematic (not random) and cluster around specific features, don't patch the model — rebuild it. Ask: "Is my entire model wrong, or just this prediction?"

---

## Standard Comprehension Protocol

When applying Structural Comprehension to an artifact:

1. Map the structure (Static)
2. Trace behavior and generate predictions (Dynamic)
3. Perturb and test predictions (Differential)
4. Attack your own model (Adversarial)
5. Extract principles and produce transferable artifact (Stabilization)

Phase order is recommended, not rigid. For black-box artifacts, start with Differential (poke and observe). For white-box, start with Static (read structure). The depth-level tests are mandatory regardless of order.


---- NOW SOLID INSTRUCTIONS START----

## Execute the Following Process

### Comprehension Version 1 (CV1 — Structural Model)

**Phase: Static (Structural Mapping)**

Map the artifact's structure:

* Components — what parts exist?
* Relationships — how do they connect?
* Boundaries — where does this artifact end and its environment begin?

Write down your **prior assumptions** explicitly:
* "I assume this works like X because it resembles Y"
* "I expect this component is responsible for Z"
* These priors are your starting model. Making them explicit allows testing them later.

**Depth test:** Can you predict which component a given responsibility lives in? State a prediction and verify.

**Frontier questions:** List the questions that structural mapping RAISED but didn't answer — behavioral and causal questions you can now formulate because you see the structure. Format each as:

> **Q:** [The question — naturally phrased]
> **Why it matters:** [What answering this would unlock or what risk it addresses]
> **Depth needed:** [Which CV level would answer this]

Present CV1: the structural model, your explicit priors, and the frontier questions.

---

### Comprehension Version 2 (CV2 — Behavioral Model)

**Phase: Dynamic (Behavioral Tracing)**

Trace behavior through the structure:

* Follow execution / data flow / state changes / logical progression for at least 2 different inputs or scenarios
* Note where behavior matches your prior assumptions and where it diverges

Generate **explicit predictions** — write each BEFORE checking:

For each prediction, use this format:

**Prediction:**
[What you predict will happen]

**Reasoning:**
[Why your current model predicts this — which components, which flow]

**Status:**
[UNTESTED — to be verified in CV3]

Generate at least 5 predictions that cover different parts of the artifact. Include at least 1 prediction you're uncertain about.

**Depth test:** Can you trace the execution path for an input you haven't traced before? Attempt it.

**Frontier questions:** List the causal and dependency questions that tracing RAISED but didn't answer — questions about what depends on what, what would change if conditions differed.

Present CV2: the behavioral model, the untested prediction set, and the frontier questions.

---

### Comprehension Version 3 (CV3 — Causal Model)

**Phase: Differential (Perturbation Testing)**

Test your predictions. For each prediction from CV2:

1. Perturb the relevant input/parameter/condition (use the strongest form available: execute > scenario > reasoning)
2. Observe the result
3. Compare predicted vs. actual

For each tested prediction:

**Prediction:**
[Restated from CV2]

**Test method:**
[Execution-based / Scenario-based / Reasoning-based — what you actually did]

**Result:**
[What actually happened]

**Verdict:**
[CONFIRMED — model is correct here / FAILED — model needs correction]

**Model correction (if FAILED):**
[What was wrong in the model and how it's now revised]

After testing all predictions, build the **causal dependency map**: for each major component, what does it depend on? What depends on it? This comes from observing what changed when you perturbed things.

**Depth test:** Can you predict behavior for edge cases you specifically DID NOT trace? Generate 2 new predictions for untested conditions and test them.

**Frontier questions:** List adversarial questions — conditions or scenarios that MIGHT break the model. These become the input for CV4.

Present CV3: the causal model, prediction results, model corrections, causal dependency map, and frontier questions.

---

### Comprehension Version 4 (CV4 — Hardened Model)

**Phase: Adversarial (Model-Breaking)**

Attack your own model. The goal is NOT to confirm — it's to BREAK.

Generate 3 adversarial cases:
* Each should target a DIFFERENT weak point in your model
* Each should be designed to produce a result your model might get wrong
* Include cases where the accommodation trigger might fire (systematic failures)

For each adversarial case:

**Challenge:**
[The case designed to break the model]

**Why this might break:**
[What assumption it tests, what weakness it targets]

**Prediction (from current model):**
[What your model predicts]

**Result:**
[What actually happened]

**Verdict:**
[MODEL SURVIVES — the model handled this correctly / MODEL BREAKS — revision needed]

**Revision (if MODEL BREAKS):**
[How the model is updated. Check: is this failure systematic? Does the accommodation trigger fire? If yes — rebuild, don't patch.]

If all 3 cases survive: try 3 more from a completely different angle. If those also survive, the model is genuinely robust at this depth.

Build the **confidence map**: for each major area of the artifact, rate your model's confidence as HIGH (tested and survived adversarial challenge), MEDIUM (tested but not adversarially challenged), or LOW (not directly tested, inferred from adjacent areas).

**Frontier questions:** List generative questions — questions about design principles, rationale, and the "why" behind the artifact that adversarial testing raised but didn't resolve.

Present CV4: adversarial results, model revisions, confidence map, and frontier questions.

---

### Comprehension Version 5 (CV5 — Generative Model)

**Phase: Stabilization (Synthesis & Transfer)**

Synthesize the surviving model into a transferable artifact.

**Principle extraction:** Identify the N minimal rules or design decisions from which all observed behavior follows. State them clearly:
* "Everything else follows from these N decisions: [list]"
* For each principle: what does it explain? What would change if it were different?

**Transferable comprehension document:** Write a document that someone who has NEVER seen this artifact could use to:
* Predict its behavior for novel inputs
* Modify it safely
* Explain its design rationale

Structure the document as:
1. **What it is** (1-2 sentences — Descriptive level)
2. **How it's organized** (components + relationships — Structural level)
3. **How it works** (key behavioral flows — Causal level)
4. **What depends on what** (causal dependencies — Predictive level)
5. **The generating principles** (minimal rules that explain everything — Generative level)
6. **Known unknowns** (what ISN'T comprehended — explicit gaps)

**Depth test:** Could someone else act correctly on this artifact using only your document? If not, what's missing?

**Frontier questions:** List beyond-scope questions — questions about the system around the artifact, about contexts you haven't tested, about future evolution. These are the questions that would drive the NEXT comprehension session or a different discipline entirely.

Present CV5: the generating principles, the transferable document, explicit remaining unknowns, and frontier questions.

---

### Final Summary

After the last CV, present:

1. **Aspect** — Mechanistic / Intent / Both
2. **Depth reached** — which level, with evidence (which tests passed)
3. **Prediction scorecard** — total predictions made, confirmed, failed, model revisions triggered
4. **Confidence map** — HIGH / MEDIUM / LOW areas
5. **Key surprises** — where the model was wrong and what was learned from the correction
6. **Remaining unknowns** — what is NOT comprehended
7. **Accumulated frontier** — the full set of unanswered questions from all CVs, deduplicated. These are the direction signals for next steps — what to investigate next, what to test, where the model's boundaries are. Group by depth level (Structural / Causal / Predictive / Generative / Beyond-scope).
