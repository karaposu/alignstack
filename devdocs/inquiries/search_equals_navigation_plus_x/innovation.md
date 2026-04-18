# Innovation: Search = Navigation + X

## User Input
devdocs/inquiries/search_equals_navigation_plus_x/sensemaking.md

---

## Seed

Search = Navigation + Goal. Architecture complete at component level. Innovation question: what designs emerge for search configuration, navigation file storage, branch creation from navigation items, and selection formalization?

---

## Key Innovations

### 1. Navigation files saved per iteration (5b + 2b + 3b)

Each iteration produces its own `navigation_N.md` — a snapshot of the possibility space at that point. The sequence of files IS the search trajectory:

```
navigation_1.md: 15 items — broad, unfocused
navigation_2.md: 10 items — narrowing
navigation_3.md: 6 items — converging
navigation_4.md: 2 items — near answer
navigation_5.md: TERMINATE
```

Readable as a story. R can analyze trajectory for patterns. Cross-inquiry comparison reveals what navigation patterns lead to good outcomes.

**Convergence: 3 mechanisms**

### 2. Navigation item → branch folder (4a)

When the human selects a navigation item, MVL creates a branch sub-folder. The item's direction becomes the branch's question. Its guidelines become the branch's guidelines section. One selection = one branch.

```
Selected: ■ DEEPEN "X's mechanism"
→ Creates: branch_deepen_x/
  _branch.md: Question = "X's mechanism", Guidelines from navigation item
```

No extra step. The navigation item IS the branch specification.

### 3. Explicit search configuration (5a + 1a)

Search parameters made explicit (section in `_branch.md`):

```
## Search Configuration
Strategy: depth-first
Max iterations: 5
Max parallel branches: 3
Convergence: answer covers goal criteria
```

Makes unconscious choices conscious. Enables strategy comparison across inquiries.

### 4. Evolving goal (3c)

The goal can refine during search. This session proved it: "adapter pattern" → "adapters unnecessary" → "navigation + search." The search DISCOVERS its goal. Track goal evolution alongside the search trajectory.

### 5. MCTS mapping (6b — REFINE)

| MCTS | Cognitive Loop |
|---|---|
| Select | Choose from N's map |
| Expand | Run SIC |
| Simulate | I generates possibilities |
| Backpropagate | R reflects + N updates |

Formal algorithm mapping. Needs its own inquiry.

### 6. Optimal foraging (6c — REFINE)

Switch directions when current direction's marginal return < average return of remaining navigation items. Selection heuristic for when to stop deepening and start exploring.

---

## Assembly

**Navigation files + search config + item→branch + evolving goal = SEARCH OPERATIONS MODEL**

```
SETUP: _branch.md with goal + search config
EXECUTE: SIC → R → N → save navigation_N.md → select → create branches
HISTORY: sequence of navigation files = search trajectory
EVOLVE: goal may refine as understanding deepens
CONVERGE: goal met, or max iterations, or human decides
```

---

## Verdicts

### SURVIVE
- **Navigation files per iteration** — 3 mechanisms converge. Search trajectory preservation.
- **Item → branch folder** — Direct mapping. No extra step.
- **Explicit search config** — Conscious parameters. Strategy comparison.
- **Evolving goal** — Proven by this session.

### REFINE
- **MCTS mapping** — Clean structure. Needs own inquiry.
- **Optimal foraging** — Selection heuristic. Needs formalization.

### KILL
- **Algorithmic optimization** — Premature. Use first, optimize from data.

---

## Mechanism Coverage

* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — 3 → navigation files as trajectory. 2 → loop is search algorithm. 2 → explicit config enables comparison.
* **Survivors:** 4 SURVIVE + 2 REFINE / 1 killed
* **Assembly:** YES — search operations model
* **Overall: PROCEED**
