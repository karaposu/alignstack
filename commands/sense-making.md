# /sense-making — Structural Sensemaking Analysis

Analyze the given input using the Structural Sensemaking Framework. This transforms vague, ambiguous, or complex input into stable, clear understanding through systematic anchor extraction, perspective checking, ambiguity collapse, and constraint reduction.

## Input

$ARGUMENTS

## Instructions

1. Parse the input. It can be:
   - **Raw text only** — a task description, idea, problem statement, or any unstructured input.
   - **A file path only** — read the file and use its contents as the input.
   - **A file path + additional text** — read the file first, then treat the remaining text as extra context on top of the file contents. Both parts matter.

   If the input starts with something that looks like a file path (e.g. `devdocs/...`, `src/...`, or any path with `/`), attempt to read it as a file. Everything after the path is additional context.

2. Use codebase context where relevant to ground the analysis in concrete reality.

3. Execute the full Structural Sensemaking process described below, producing all Sense Versions (SV1 through SV6).

4. Save the output as a markdown file:
   - **If the input was a file path** — save in the same folder as the input file.
   - **Otherwise** — save under `devdocs/sensemaking/<suitable-name>.md` (create the directory if needed).

5. Print the output in the conversation as well.

---

## The Structural Sensemaking Framework

### What This Is

Structural Sensemaking is a systematic approach for transforming vague, ambiguous situations into stable, actionable understanding. It works by organizing partial insights into constrained conceptual structures until coherent meaning emerges.

Rather than relying on intuition alone, Structural Sensemaking treats understanding as an engineered process based on anchors, boundaries, and controlled reduction of uncertainty.

> **Structural Sensemaking is the process of constructing stable meaning by organizing cognitive anchors into constrained conceptual structures through perspective integration, ambiguity collapse, and degrees-of-freedom reduction.**

### Key Components

#### Cognitive Anchors

Cognitive anchors are the fundamental units of meaning used to build understanding:

* **Constraints** — Limits, requirements, and boundaries
* **Key Insights** — Non-obvious implications or realizations
* **Structural Points** — Core components and relationships
* **Foundational Principles** — Assumptions, rules, axioms
* **Meaning-Nodes** — Central concepts and themes

Anchors function as reference points that restrict and guide interpretation.

#### Boundary Construction Operations

Boundary construction is the process of shaping how anchors interact. It consists of three primary operations:

**a. Perspective Checking**
- Examining the situation from multiple viewpoints
- Generating new anchors
- Expanding the interpretive space
- Examples: Technical, Human, Strategic, Risk-oriented, Systemic

**b. Ambiguity Collapse**
- Identifying vague terms, conflicts, unclear goals, and hidden assumptions
- Selecting dominant interpretations using strong anchors
- Converting clarifications into irreversible constraints
- This operation converts uncertainty into structure

**c. Degrees-of-Freedom Reduction**
- Identifying remaining variables
- Fixing stable elements
- Eliminating infeasible options
- This operation stabilizes the conceptual structure

#### Conceptual Structure

A conceptual structure is the stabilized result of anchor interaction and boundary construction. It is characterized by:

* Low ambiguity
* High internal consistency
* Clear causal or logical relations
* Actionable implications

---

## Execute the Following Process

### Initial Sense Version (SV1 — Baseline Understanding)

Provide a brief, high-level description of your initial interpretation of the input before analysis.

---

### Phase 1 — Cognitive Anchor Extraction

Identify and list:

* Constraints (limits, requirements, boundaries)
* Key Insights (non-obvious implications)
* Structural Points (core components, relationships)
* Foundational Principles (assumptions, rules, axioms)
* Meaning-Nodes (central concepts and themes)

#### Sense Version 2 (SV2 — Anchor-Informed Understanding)

Update your understanding based on extracted anchors. Summarize how the input is now interpreted differently from SV1.

---

### Phase 2 — Perspective Checking

Analyze the input from multiple perspectives:

* Technical / Logical
* Human / User
* Strategic / Long-term
* Risk / Failure
* Resource / Feasibility
* Ethical / Systemic (if relevant)

Extract new anchors from each perspective.

#### Sense Version 3 (SV3 — Multi-Perspective Understanding)

Update your understanding based on perspective analysis. Highlight major shifts, expansions, or reframings.

---

### Phase 3 — Ambiguity Collapse

Ambiguity Collapse is the process of identifying confusions and converting each resolution into explicit structural commitments.

Identify:

* Vague terms
* Conflicting interpretations
* Unclear goals
* Hidden assumptions

Resolve or narrow them using strong anchors.

For each identified ambiguity, provide a structured entry:

#### Ambiguity:
[Describe the vague term, conflict, assumption, or unclear goal]

**Resolution:**
[Chosen interpretation or decision]

**What is now fixed?**
[Which parameters, meanings, or structures are now locked]

**What is no longer allowed?**
[Which interpretations, options, or behaviors are excluded]

**What now depends on this choice?**
[Which components, processes, or future decisions rely on this resolution]

**What changed in the conceptual model?**
[How this resolution reshapes the overall understanding]

Ensure that each entry results in a measurable reduction of ambiguity and interpretive freedom. Focus on irreversible or high-impact commitments.

#### Sense Version 4 (SV4 — Clarified Understanding)

Summarize the input after ambiguity resolution. Emphasize what is now clear and what is no longer viable.

---

### Phase 4 — Degrees-of-Freedom Reduction

Determine:

* What variables are now fixed
* What options are eliminated
* What paths remain viable

Constrain the solution space accordingly.

#### Sense Version 5 (SV5 — Constrained Understanding)

Present the stabilized problem structure. Show how solution space is now limited and organized.

---

### Phase 5 — Conceptual Stabilization

Synthesize results into:

* A coherent interpretation of the input
* A clear problem structure
* A stable action or solution framework

#### Final Sense Version (SV6 — Stabilized Model)

Present the final, high-level conceptual model. This should represent mature, low-ambiguity understanding.

Explain how it differs from SV1.
