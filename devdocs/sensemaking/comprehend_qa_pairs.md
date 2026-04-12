# Structural Sensemaking: Should Comprehend Generate Question-Answer Pairs?

---

## SV1 — Baseline Understanding

The user observes that comprehension naturally produces questions — first explicit, then implicit, then deeper. Proposes Q&A pairs as additional output. Key tension: pairs must capture genuine discoveries, not restate surface information.

---

## Phase 1 — Cognitive Anchor Extraction

### Key Insights

- **I1:** Comprehension already produces Q&A pairs implicitly. Every prediction test IS a Q&A: "Q: What happens if X? A: Y, because Z. [CONFIRMED]." Making this explicit changes how output is consumed.
- **I2:** Depth hierarchy generates questions of increasing depth: explicit (structural) → implicit (causal) → deep (rationale/counterfactual). The progression IS the comprehension deepening.
- **I3:** "More we comprehend, more questions" is correct. Question count GROWS with depth because deeper understanding reveals more structure to question. Shallow understanding produces few questions.
- **I4:** Quality distinction: GOOD Q&A captures something DISCOVERED (tested, corrected, reasoned). BAD Q&A restates what's visible on the surface.

### Foundational Principles

- **P1:** A Q&A pair is valuable when the answer was EARNED — discovered through testing, corrected after failure, or extracted from non-obvious reasoning.
- **P2:** The question must be one someone WOULD actually ask. Test: "would this save someone time or prevent a mistake?"
- **P3:** Unanswered questions are as valuable as answered ones — they mark the comprehension frontier.

---

### SV2 — Anchor-Informed Understanding

Q&A pairs are not an addition — they're a REFORMATTING of what comprehension already produces. Predictions = questions. Test results = answers. Surprises = corrected answers. Gaps = frontier markers.

---

## Phase 2 — Perspective Checking

### Technical / Logical
Q&A pairs map directly to existing phases: Static→structural Q&A, Dynamic→predictive Q&A (untested), Differential→causal Q&A (tested), Adversarial→corrected Q&A, Stabilization→rationale Q&A. Natural expression of the process.

### Human / User
Q&A is more usable than prose: scannable, searchable, validatable (each answer shows how it was obtained), extendable (unanswered questions = next investigation targets).

### Strategic / Long-term
Q&A sets are cumulative across sessions. Multiple comprehension sessions add questions and refine answers. Becomes a living comprehension artifact with provenance.

### Risk / Failure
Without quality filter, Q&A bloats with noise. Filter: include only if answer was EARNED or question is genuinely UNANSWERED.

---

### SV3 — Multi-Perspective Understanding

Q&A is comprehension's most natural output format. Every prediction = question, every test = answer, every surprise = correction, every gap = frontier. The CV structure provides process scaffold; Q&A provides consumable output.

---

## Phase 3 — Ambiguity Collapse

### What types of questions are valuable?

**Confidence:** HIGH

| Category | Captures | Quality test |
|----------|----------|-------------|
| **Predictive** | "What happens when X?" — tested behavior | Would save someone from testing it themselves |
| **Causal** | "What depends on X?" — tested dependencies | Would prevent someone from breaking something |
| **Rationale** | "Why X over Y?" — design decisions | Would prevent someone from making a worse choice |
| **Frontier** | Genuinely unanswered | Would tell someone where to investigate |

Surface restatements excluded.

### Separate from or part of CVs?

**Confidence:** LOW
**Resolution:** Parallel output alongside CVs. CV = narrative of understanding. Q&A = queryable findings. Dual output.

### Growing question count: feature or problem?

**Confidence:** HIGH — feature. Signals depth. ANSWERED/TOTAL = coverage score. Frontier set = most valuable artifact.

---

### SV4 — Clarified Understanding

Three categories + frontier. Generated alongside CVs. Quality-filtered by earned answers. Growing count = depth signal.

---

## Phase 4 — DoF Reduction

**Fixed:** Parallel output, 4 categories, quality filter, count-as-metric, frontier as first-class.

**Q&A pair format:**
```
Q: [Natural question]
Category: Predictive | Causal | Rationale | Frontier
Depth: Descriptive | Structural | Causal | Predictive | Generative
A: [Answer or UNANSWERED]
Evidence: [How obtained]
Confidence: HIGH | MEDIUM | LOW
Surprise: [If answer differed from prediction]
```

---

## SV6 — Stabilized Model

**Yes, Q&A pairs are comprehension's natural output format.** Every prediction = question, every test = answer, every surprise = correction, every gap = frontier. Not an addition — a reformulation.

Four categories: Predictive, Causal, Rationale, Frontier. Quality filter: answer earned or question genuinely unanswered. Growing count = depth signal. Frontier set = most valuable artifact.
