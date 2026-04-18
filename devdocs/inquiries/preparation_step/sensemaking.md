# Sensemaking: Preparation Step

## User Input
devdocs/inquiries/preparation_step/_branch.md

---

## SV1 — Baseline Understanding

The user wants to know if there should be a step before the SIC loop that establishes scope and strategic context. Intuition: run a mini-MVL on "what's the current scope?" before the task's MVL.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints
- **C1**: No persistent strategic context crosses inquiry boundaries. Each `_branch.md` is self-contained.
- **C2**: The scope check catches question-vs-goal mismatches but can't provide context the human didn't embed.
- **C3**: Context window limits mean preparation must produce COMPRESSED output.
- **C4**: Related commands exist (`/elaborate`, `/align`, archaeology commands) but aren't connected to MVL.
- **C5**: The adapter's S guidance was designed to specify which files to read for context. A preparation step could PRODUCE the context the adapter LOADS.

### Key Insights
- **I1**: The human naturally does preparation in their HEAD — contextualizing the question against project state. The system doesn't because it has no persistent project-level awareness.
- **I2**: The preparation step is NOT another SIC loop. It's a CONTEXT ASSEMBLY operation — gathering and compressing project state.
- **I3**: What it would produce: current state, strategic direction, recent findings, open frontiers. This is a PROJECT BRIEFING.
- **I4**: The briefing persists as a FILE that gets updated — not per-inquiry but periodically.
- **I5**: `where_we_left.md` IS the briefing prototype. Currently informal, inconsistently maintained, not connected to MVL.
- **I6**: Benefits beyond scope: adapter selection, goal refinement, dependency identification, redundancy detection, cross-inquiry coherence, session continuity.
- **I7**: Two distinct operations: initial creation (heavy) and ongoing maintenance (light — R appends after each inquiry).
- **I8**: The briefing is a ROLLING SUMMARY — maintains recency, sheds completed work.
- **I9**: The preparation step should be a COMMAND or maintenance convention, not a mandatory SIC loop.
- **I10**: The briefing is the CONNECTIVE TISSUE between the adapter pattern, scope check, and autonomous loop.
- **I11**: Must be OPTIONAL to create/maintain, automatically consumed if present.
- **I12**: `where_we_left.md` IS the briefing — just needs formalization and workflow connection.

### Structural Points
- **SP1**: Two operations disguised as one: initial creation (heavy) vs. ongoing maintenance (light).
- **SP2**: The briefing is a PERSISTENT FILE — project-level, consumed by all inquiries.
- **SP3**: Briefing feeds adapter, adapter feeds S, S feeds the scope check. They're designed to work together.

### Foundational Principles
- **FP1**: File system IS the thinking structure. The briefing is a file.
- **FP2**: Graduated autonomy: Level 0 human maintains briefing, Level 2+ system maintains it via R.
- **FP3**: The briefing is the layer ABOVE individual inquiries — project-scoped, not inquiry-scoped.

---

### SV2

The "preparation step" is two things: creating a project briefing initially, and maintaining it over time. The briefing is `where_we_left.md` formalized — a persistent file every inquiry reads for strategic context.

---

## Phase 2 — Perspective Checking

### Technical
Briefing format: Current State, Strategic Direction, Recent Findings, Open Frontiers, Completed Inquiries. Rolling summary — accumulates but maintains recency.

### Human
For initial creation: SIC appropriate. For maintenance: R appends 1-3 lines. 30 seconds. Not a SIC loop.

### Strategic
The briefing is the connective tissue — feeds scope check, adapter, R, and eventually autonomous loops. Not a separate feature; the missing piece that makes other features work together.

### Risk
Staleness (detectable via date), bloat (managed by compression/archival), over-preparation (solved by being optional).

### Definitional
`where_we_left.md` is the prototype. `/elaborate` clarifies, doesn't contextualize. Archaeology reads code, not cognitive state. Gap is real.

---

### SV3

The preparation step is NOT a new SIC loop before every inquiry. It's a PERSISTENT FILE that gets created once, maintained incrementally, and consumed automatically. `where_we_left.md` formalized.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: SIC loop or something lighter?
**Resolution:** Two operations. Create (heavy, occasional — SIC or compilation). Update (light, per-inquiry — R appends 1-3 lines).
**Confidence:** HIGH

### Ambiguity 2: Where does the briefing live?
**Resolution:** `devdocs/briefing.md` — project-level, not inquiry-level. All inquiries read it, R updates it.
**Confidence:** HIGH

### Ambiguity 3: Mandatory or optional?
**Resolution:** Optional. MVL reads if present, works without. No friction for simple questions.
**Confidence:** HIGH

### Ambiguity 4: Benefits beyond scope?
**Resolution:** Seven benefits: scope enrichment, adapter selection, goal refinement, dependency identification, redundancy detection, cross-inquiry coherence, session continuity.

---

### SV4

A maintained project briefing file — optional, project-scoped, incrementally updated by R, auto-consumed by MVL/S. Provides seven benefits beyond scope. Is `where_we_left.md` formalized.

---

## Phase 4 — Degrees-of-Freedom Reduction

**Fixed:** Briefing is a file. Project-scoped. Optional. Two operations (create/update). R proposes updates. Seven benefits.

**Eliminated:** SIC before every inquiry. Per-inquiry copies. Mandatory preparation.

**Remaining:** Define format, connect to MVL (reads), connect to R (writes), create initial briefing.

---

### SV5

The preparation step collapses into: a file format + three connection points (MVL reads, R writes, adapter references).

---

## Phase 5 — Conceptual Stabilization

### SV6 — Stabilized Model

**The "preparation step" is not a step — it's a FILE. The file IS the preparation.**

A project briefing (`devdocs/briefing.md`) that persists across inquiries:

```markdown
# Project Briefing
Updated: [date]

## Current State
[What's built, in progress, stuck — 3-5 bullets]

## Strategic Direction
[Primary goal, current phase, key constraints — 3 bullets]

## Recent Findings
[Last 3-5 inquiry results with implications — 1 line each]

## Open Frontiers
[Unanswered questions from recent inquiries]

## Completed Inquiries
[Answered questions with dates]
```

**Connections:**

| Component | Connection | When |
|---|---|---|
| **MVL** | Reads briefing if present, provides to S | Every inquiry start |
| **S** | Uses for strategic perspective + scope checking | During sensemaking |
| **R** | Proposes 1-3 line updates after each SICR | After each loop |
| **Adapter** | S guidance references: "Read the project briefing" | When attached |
| **Scope Check** | Goal enriched by briefing → catches narrow goals | During MVL creation |

**Seven benefits:** scope enrichment, adapter selection, goal refinement, dependency identification, redundancy detection, cross-inquiry coherence, session continuity.

**Two operations:** Create (occasional, heavy). Update (per-inquiry, light — R proposes, human approves).

**Optional:** Works without. Better with.

**Replaces:** `where_we_left.md` — formalized with defined format and workflow connections.

**How SV6 differs from SV1:** SV1: "run MVL before MVL." SV6: "maintain a file; the file IS the preparation." Step → artifact.

---

## Saturation Indicators

- **Perspective saturation**: 5/5, all produced new anchors. Saturated.
- **Ambiguity resolution ratio**: 4/4 at HIGH confidence.
- **SV delta**: Very significant — step became artifact.
- **Anchor diversity**: C(5), I(12), SP(3), FP(3), MN(3). I5, I10, I11 load-bearing.
