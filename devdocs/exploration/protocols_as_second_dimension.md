# Structural Exploration: Protocols as a Second Dimension

## Mode & Entry

**Mode:** Possibility exploration
**Entry:** Signal-first — "SYNTHESIZE is a protocol, not a discipline"

---

## The Two Dimensions

| | Thinking Discipline | Protocol |
|---|---|---|
| **Formalizes** | A cognitive operation (mental state A → B) | An operational procedure (connects/manages operations) |
| **Operates** | INSIDE thinking | BETWEEN thinking operations |
| **Components** | Core operation, failure modes, coverage strategy | Steps, quality test, failure modes |
| **Output** | Understanding, ideas, verdicts, models, maps | Deliverables, configurations, handoffs, state changes |

**A protocol is NOT:** a discipline (cognitive vs. operational), a convention (dynamic vs. static), a tool (spec vs. implementation), a command (procedure vs. invocation), a checklist (has decision logic and failure modes).

---

## Four Protocol Categories

### 1. Pipeline Protocols — How disciplines connect in sequence

| Protocol | What it does | State |
|----------|-------------|-------|
| **CONFIGURE** | Classify problem → select disciplines → sequence pipeline | Exists in /inquiry |
| **STEER** | Wayfinding checkpoint between iterations | Exists in /inquiry |
| **TERMINATE** | Assess convergence → decide to stop | Exists implicitly |
| **SCOPE** | Set depth target, time budget, aspect before starting | **MISSING** |
| **BRANCH** | Create parallel inquiry branches after decomposition | **MISSING** |
| **MERGE** | Combine results from parallel branches | **MISSING** |

### 2. Transfer Protocols — How outputs move between contexts

| Protocol | What it does | State |
|----------|-------------|-------|
| **SYNTHESIZE** | Discipline outputs → coherent deliverable for reader | Named, underspecified |
| **RESUME** | Saved state → continuation across sessions | Exists in /inquiry |
| **HANDOFF** | Transfer full context to a different agent | **MISSING** |
| **BRIEF** | Produce compact context for an agent who needs to act (not just read) | **MISSING** |

### 3. Quality Protocols — How outputs are verified

| Protocol | What it does | State |
|----------|-------------|-------|
| **Freshness check** | Verify context is current before analysis | Exists in CLAUDE.md |
| **Depth tests** | Verify comprehension level before advancing | Exists in comprehend.md |
| **Convergence checks** | Verify completeness before terminating | Exists in exploration + critique |
| **GATE** | Check previous discipline's output quality before next discipline runs | **MISSING** |

### 4. Persistence Protocols — How outputs are saved/maintained

| Protocol | What it does | State |
|----------|-------------|-------|
| **Folder convention** | Map thinking tree → file system tree | Documented, unused |
| **CV persistence** | Save comprehension versions as files | Described in comprehend.md |
| **Metadata injection** | Auto-inject provenance headers | Implemented as hook |
| **Archival** | Detect stale outputs, move to archive | Exists as /devdocs-archivist |
| **VERSION** | Save iteration history instead of overwriting | **MISSING** |

---

## System Architecture (Two Dimensions)

Disciplines = vertical columns (what cognitive operations exist)
Protocols = horizontal rows (how operations are managed)

Every intersection is a specific case. Protocols are generic across all disciplines.

---

## Cross-Domain Validation

Every mature practice system has both dimensions:
- **Agile:** Ceremonies (protocols) manage user stories/tasks (content)
- **Science:** Peer review/publication (protocols) manage experiments (content)
- **Law:** Procedure (protocols) manages substantive law (content)

---

## Existing: 8 | Missing: 7

**Priority for missing:**
1. SCOPE — affects every discipline run, currently ad-hoc
2. GATE — prevents bad outputs from cascading
3. VERSION — prevents history loss
4. SYNTHESIZE formalization — already named, needs spec
5. BRANCH + MERGE — for multi-agent future
6. HANDOFF + BRIEF — for multi-agent future

**Where protocols live:** Recommend separate `protocols/` directory, peer to `thinking_disciplines/`.
