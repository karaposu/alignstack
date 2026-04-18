# Sensemaking: Search = Navigation + X

## User Input
devdocs/inquiries/search_equals_navigation_plus_x/_branch.md

---

## SV6 — Stabilized Model

**Search = Navigation + Goal.**

### The Definition

Navigation maps all possible directions without preference. Add a goal — a specific thing you're searching FOR — and navigation becomes search. The goal gives navigation PURPOSE.

- Navigation without goal = exploration (see everything)
- Navigation with goal = search (find something specific)

### The Search Architecture

```
DEFINITION:
  Search = Goal-directed navigation through a possibility space

IMPLEMENTATION:
  Search = Loop until Goal {
    SIC    → execute cognitive cycle
    R      → learn from the cycle
    N      → map the possibility space
    Select → choose directions to pursue
  }

COMPONENTS:
  Core disciplines:     S, I, C  (the cognitive step)
  Boundary disciplines: R, N     (learning + mapping)
  Architecture:         MVL      (loop runner, goal manager)
  Goal:                 question + success criteria
  Selection:            Human (now) / Autonomous (future)
```

### What This Means

1. **Navigation completed the search architecture.** Before N: SIC + narrow (limited search). With N: SIC + R + N + Select (full search). Navigation was the last piece.

2. **The old meta-search was this, decomposed.** Meta-search tried to be one discipline doing everything. The decomposition: N (mapping) + R (learning) + MVL (orchestration) + SIC (execution) + selection (choosing). Same vision, independently useful components.

3. **We built a search engine for cognitive work.** Searches for answers by understanding, generating, evaluating, learning, and mapping. The space is cognitive. The search is goal-directed. The navigation map is the index.

4. **The next frontier is selection.** All components exist. Formalizing selection (priority function, branch limits, dependency detection) is the next design problem.

### Search Is Not a Discipline

Search is a SYSTEM-LEVEL PROPERTY — the emergent behavior when all disciplines operate together toward a goal. Like intelligence isn't a single operation but the composition of perception, reasoning, memory, planning. Search is the composition of understanding (S), generating (I), evaluating (C), learning (R), and mapping (N) toward a goal.

---

## Key Insights

- **I1**: Search has 6 properties navigation lacks: goal, selection, movement, learning, persistence, memory. We already have ALL of them.
- **I2**: Search = N + Select + SIC + R + Goal + Iterate. All components exist.
- **I6**: Navigation was the LAST MISSING PIECE that completed the search architecture.
- **I7**: The loop is formally equivalent to a search algorithm (state space, initial state, goal test, successor function, heuristic).
- **I9**: The autonomous loop IS an autonomous search agent.
- **I10**: The old meta-search = the vision for this decomposed architecture. Same thing, better structure.

## Ambiguity Resolutions

1. X is one thing or many? → **GOAL at the definitional level.** SIC+R+Select+Iterate at the implementation level. **HIGH**
2. Search is a discipline? → **No — system-level emergent property.** **HIGH**
3. Architecture complete? → **Yes at component level. Selection mechanism is the next frontier.** **HIGH, OPEN on selection**

## How SV6 Differs from SV1

SV1: "X is probably iteration." SV6: "X = Goal. Search is the system-level behavior. Navigation completed the architecture. Meta-search = this, decomposed."

## Saturation Indicators
- **Perspectives**: 4/4. Saturated.
- **Ambiguity**: 3/3. 2 HIGH, 1 OPEN.
- **SV delta**: Very significant.
- **Anchors**: C(3), I(10), SP(3), FP(2), MN(3). I2, I6, I10 load-bearing.
