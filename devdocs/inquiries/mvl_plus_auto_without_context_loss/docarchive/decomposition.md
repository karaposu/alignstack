# Decomposition: MVL+ Auto-Chain Without Context Loss

## User Input
devdocs/inquiries/mvl_plus_auto_without_context_loss/_branch.md

## The Whole
The design for MVL+ auto-chaining: modifying the command to execute disciplines directly with checkpoint pauses, covering pre-loaded and cold sessions, with telemetry-based quality gates and optional human steering.

---

## Coupling Map

Four clusters identified. Three with high internal coupling, one standalone (unchanged discipline execution — decoupled by sensemaking finding P2).

```
HIGH COUPLING (keep together)          LOW COUPLING (boundaries)

┌─────────────────────┐                 
│ Cluster A:          │                 
│ MVL+ behavior +     │─ ─ ─weak─ ─ ─ ─┐
│ user input handling  │                 │
└─────────┬───────────┘                 │
          │moderate                      │
┌─────────▼───────────┐                 │
│ Cluster B:          │                 │
│ checkpoint format + │─ ─ ─weak─ ─ ─ ─┤
│ telemetry reading + │                 │
│ quality gate        │                 │
└─────────────────────┘                 │
                                        │
┌─────────────────────┐                 │
│ Cluster C:          │─ ─ ─weak─ ─ ─ ─┤
│ spec availability + │                 │
│ cold bootstrap      │                 │
└─────────────────────┘                 │
                                        │
┌─────────────────────┐                 │
│ Elements 5,6:       │─ ─ ─weak─ ─ ─ ─┘
│ file saving +       │
│ state tracking      │
│ (minor adjustments) │
└─────────────────────┘

(Discipline execution is fully decoupled — unchanged by design)
```

---

## Question Tree

### Piece 1: Auto-Chain Command Flow
**Question:** How should MVL+'s command spec change so it executes disciplines directly instead of telling the user what to type — and how does it handle user input at checkpoint pauses?

**Verification:**
- [ ] MVL+ NEW creates inquiry and immediately begins Exploration
- [ ] MVL+ RESUME reads state, determines next discipline, executes it directly
- [ ] Between each discipline, MVL+ pauses with a checkpoint
- [ ] User Enter → continues. User text → treated as redirection.
- [ ] Covers E→S→D→I→C sequentially
- [ ] Iteration-complete logic (finding or re-loop) preserved

### Piece 2: Checkpoint Design
**Question:** What should the checkpoint between disciplines look like — what telemetry, how is quality gated, what happens on flag?

**Verification:**
- [ ] Shows: discipline completed + 2-3 telemetry metrics + next discipline
- [ ] Telemetry extracted from actual output
- [ ] Below-threshold metrics flagged with specific guidance
- [ ] Flag gives human enough info to: proceed / re-run / redirect
- [ ] Checkpoint is 3-5 lines (dense, not verbose)

### Piece 3: Spec Loading Strategy
**Question:** How does the LLM ensure it has the full discipline spec before executing — in pre-loaded sessions and cold sessions?

**Verification:**
- [ ] Pre-loaded detection mechanism
- [ ] Cold session: loads spec via Read tool
- [ ] No double-loading
- [ ] Faithfulness: same depth regardless of loading method

### Piece 4: State & File Adjustments
**Question:** What minor changes to `_state.md` and file-saving behavior support auto-chaining?

**Verification:**
- [ ] "Next Command" field reflects auto-chain (not "type this slash command")
- [ ] File saving paths unchanged
- [ ] Cross-session resume works from cold
- [ ] History records auto-chain execution

---

## Interface Map

| Source | Target | What flows | Direction |
|---|---|---|---|
| Piece 1 → Piece 2 | Command triggers checkpoint | "Discipline X complete" signal | → |
| Piece 2 → Piece 1 | Checkpoint returns decision | PROCEED or REDIRECT:[text] | → |
| Piece 1 → Piece 3 | Before executing, request spec | "Need /sense-making spec" | → |
| Piece 3 → Piece 1 | Spec ready confirmation | "Available" | → |
| Piece 2 → Piece 3 | Telemetry format per discipline | Reference (which metrics exist) | → |
| Piece 1 → Piece 4 | After discipline, update state | Discipline name + status | → |
| Piece 4 → Piece 1 | On RESUME, provide state | Progress, next, iteration | → |

---

## Dependency Order

```
Piece 4 ──▶ Piece 3 ──▶ Piece 2 ──▶ Piece 1
(state)     (specs)     (checkpts)  (command)
```

Strictly sequential. Each piece's output feeds the next. No parallelism.

- **Piece 4 first:** Defines state format that Piece 1 reads/writes
- **Piece 3 second:** Spec loading mechanism needed before command flow design
- **Piece 2 third:** Checkpoint format defined before command flow references it
- **Piece 1 last:** Integration piece consuming all three

---

## Self-Evaluation

| Dimension | Result | Evidence |
|---|---|---|
| **Independence** | PASS | Each question answerable without siblings. Interfaces carry all needed info. |
| **Completeness** | PASS | Four pieces exhaust the design space from SV6. No elements uncovered. |
| **Reassembly** | PASS | State(4) + specs(3) + checkpoint(2) + flow(1) = complete auto-chain design. |
| **Tractability** | PASS | Each piece answerable in one focused pass. |
| **Interface clarity** | PASS | 7 interfaces explicit with direction and content. |
| **Balance** | PASS | Pieces 2-4 moderate. Piece 1 larger (integration) but not dominant. |
| **Confidence** | PASS | Top-down and bottom-up agree on all boundaries. |

All 7/7 dimensions pass.
