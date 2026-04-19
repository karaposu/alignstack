# Innovation: Discipline Architecture

## User Input
devdocs/inquiries/discipline_architecture/sensemaking.md

---

## Seed

The architecture is a three-tier palette with situational chaining and emerging orchestration. Gap is documentation. Innovation question: what sharpens this into a buildable, well-named, discoverable system?

---

## Key Innovations

### 1. Input shape as orchestration signal (1a + 5a + 6a)

The first question isn't "which discipline?" — it's "what shape is my input?" Shape → discipline mapping makes orchestration mechanical. Needed: a taxonomy of input shapes. Current shapes: unknown territory, complex whole, opaque artifact, clear question, completed cycle.

**Convergence: 3 mechanisms**

### 2. Problem shape revealed by discipline failure (3b)

**Mistakes in discipline selection are DIAGNOSTIC.** Thin SIC output → input was actually "unknown territory" → Exploration should have been used. Tangled output → actually "opaque artifact" → Comprehension first. Orchestration learns through failures — this is the Baldwin cycle for orchestration. No upfront classifier needed; the feedback loop learns the shape-discipline mapping.

**Convergence: 1 mechanism** (deep inversion), but the most important innovation.

### 3. Parallel discipline application (3a)

Not within-cycle interleaving (rejected in sensemaking) — between-cycle parallelism. Multiple threads running different disciplines on the same input, with reconciliation. Matches the user's "parallel MVL loops" vision from the end-goal. Frontier, not current.

**Convergence: 1 mechanism**

### 4. Chain as `_state.md` relationship (2b)

Add relationship types: **CHAINS INTO** (parent points to children) and **CHAINED FROM** (child points to parent). Creates a navigable graph of discipline chains. Chain patterns become reusable.

**Convergence: 1 mechanism**

### 5. Unix philosophy framing (6b)

Disciplines = tools (each does one thing well). Chaining = pipes. Orchestrator = shell. The architecture IS "Unix for thinking." Good documentation terminology.

**Convergence: 1 mechanism**

### 6. Selection reasoning as audit trail (4c)

Every discipline invocation includes "I chose X because Y." Human writes Y at Level 0-2; system writes Y at Level 3+. The reasonings ARE the orchestration training data — without capturing them, orchestration patterns can't be extracted later.

**Convergence: 1 mechanism**, convergent with #2.

### 7. Usage telemetry (4a)

Track which disciplines get invoked, how often. Unused disciplines are a signal. Feedback for palette evolution.

**Convergence: 1 mechanism**

### 8. Selection layer at Level 4+ (7b + 1b)

The architecture needs components that don't exist now:
- Input-shape classifier (emerges from accumulated mistake-classifications)
- Selection model (emerges from accumulated selection reasonings)
- Outcome tracker (did the selection work? feeds Baldwin)

Not buildable today but maps to the autonomy roadmap.

**Convergence: 2 mechanisms**

### 9. Palette evolves via Baldwin (2c + 7a)

The palette isn't static. Disciplines may split (Exploration-artifact vs Exploration-possibility). Disciplines may merge if operations converge. New disciplines may emerge (Stage 5 self-extension). Palette count is dynamic.

**Convergence: 2 mechanisms**

---

## Assembly

```
PALETTE STRUCTURE (Unix-for-thinking):
- TOOLS: Core (S, I, C) + Boundary (R, N) + Situational (E, D, Comprehension)
- PIPES: chaining via CHAINS INTO / CHAINED FROM in _state.md
- SHELL: human at Level 0-2, system at Level 3+

ORCHESTRATION LEARNING:
- Selection reasoning: every invocation with "I chose X because Y"
- Mistake-based classification: shape revealed when wrong discipline fails
- Usage telemetry: discipline invocation counts
- Baldwin cycles on orchestration: patterns become encoded choices

FRONTIER COMPONENTS (for Level 3+):
- Input-shape classifier
- Selection model
- Outcome tracker
- Parallel discipline application

PALETTE EVOLUTION:
- Disciplines split/merge via Baldwin
- New disciplines emerge (Stage 5 self-extension)
- Count is dynamic
```

**Emergent value:** The architecture IS the graduated autonomy model expressed as concrete components. Each level has specific components that build on the previous.

---

## Verdicts

### SURVIVE
- **Input shape as orchestration signal** — makes orchestration mechanical
- **Problem shape revealed by discipline failure** — Baldwin on orchestration
- **Chain as `_state.md` relationship** — extends existing mechanism
- **Unix philosophy framing** — established terminology
- **Selection reasoning as audit trail** — orchestration training data
- **Usage telemetry** — palette evolution signal
- **Selection layer at Level 4+** — roadmap anchor
- **Palette evolves via Baldwin** — matches end-goal
- **Parallel discipline application** — frontier, matches user's vision

### REFINE
- **Multi-step chain composition** — let patterns emerge from use before naming
- **CREATION as frontier discipline** — outside current scope but needed for hard-problem execution

### KILL
- **Unified primitive (all disciplines = one)** — philosophically interesting, operationally equivalent
- **Speciation into 50 disciplines** — premature proliferation
- **Immune system metaphor** — complexity without insight

---

## Mechanism Coverage
* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — multiple mechanisms converge on Unix-for-thinking framing, orchestration-through-failure, Baldwin on the palette
* **Survivors:** 9 SURVIVE + 2 REFINE / 3 killed
* **Assembly:** YES — architecture expressed as autonomy-roadmap-aligned components
* **Overall: PROCEED**
