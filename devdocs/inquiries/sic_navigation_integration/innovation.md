# Innovation: SIC + Navigation Integration

## User Input
devdocs/inquiries/sic_navigation_integration/sensemaking.md

---

## Seed

Navigation inside MVL's iteration-complete. Produces FULL navigation space (all possible next actions). No selection — enumeration only. Innovation question: how should the map be structured, presented, and eventually acted upon?

---

## Key Innovations

### 1. Questions, not actions (3a + 2a)

Navigation produces QUESTIONS, not action items. Each typed as SIC question ready to run:
- Instead of "DEEPEN X" → "What is the internal structure of X's [aspect A]?"
- Instead of "WIDEN scope" → "What wider question would cover automation?"

Questions are the natural SIC input. Each map item IS a launchable `/MVL` question.

### 2. Confidence levels + scannable format (2b + 4a)

■ HIGH — strong evidence from C output
○ MEDIUM — moderate signal, worth considering
· LOW — weak signal, minor concern

Grouped by category (content/process/context). Implicit prioritization without system choosing.

### 3. WHY per item (4b + 6a)

One line explaining why this item is in the map:
"WHY: C's prosecution couldn't find a killer objection but defense relied on untested assumption about A"

Transparency. Lets the human judge priority better than any ranking algorithm.

### 4. Excluded items (5a)

What navigation considered and REJECTED, with reasoning:
"✗ REFRAME — only 1 iteration. Current frame hasn't been given enough depth."

Shows the system's reasoning about what it chose NOT to include.

---

## The Navigation Map Format

```
## Navigation Map (15 items, 4 HIGH)

### Content [8 items]
■ What is [deeper question about X]? [DEEPEN]
  WHY: [evidence from C's output]
■ [Another high-confidence question] [TYPE]
  WHY: [reason]
○ [Medium-confidence question] [TYPE]
  WHY: [reason]
· [Low-confidence question] [TYPE]
  WHY: [reason]

### Process [3 items]
■ [Process improvement question] [TYPE]
  WHY: [telemetry evidence]
○ ...

### Context [2 items]
○ [External context question] [TYPE]
  WHY: [reason]

### Excluded
✗ [Type] — [why it was rejected]
✗ [Type] — [why it was rejected]
```

Scannable in under 2 minutes. Each ■ item is a ready-to-run SIC question.

---

## Verdicts

### SURVIVE
- **Questions not actions** — Natural SIC input. Ready-to-run.
- **Confidence + scannable** — ■/○/· with categories. Implicit prioritization.
- **WHY per item** — Transparency. Better than system-chosen ranking.
- **Excluded items** — Shows reasoning about rejected directions.

### REFINE
- **Continuous accumulation** — S/I/C contribute signals during run. Defer until format proven.
- **Cross-inquiry knowledge base** — Accumulated open questions. Build when briefing exists.

### KILL
- **Behavior tree** — Categories ARE the hierarchy. Additional structure premature.

---

## Mechanism Coverage

* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — 3 → "questions not actions." 2 → "confidence-based prioritization."
* **Survivors:** 5 SURVIVE + 2 REFINE / 1 killed
* **Assembly:** YES — complete navigation map format
* **Overall: PROCEED**
