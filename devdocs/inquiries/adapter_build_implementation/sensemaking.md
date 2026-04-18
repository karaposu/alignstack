# Sensemaking: Adapter Build Implementation

## User Input
devdocs/inquiries/adapter_build_implementation/_branch.md

---

## SV6 — Stabilized Model

**Each discipline command reads `_adapter.md` from the inquiry folder and applies its own section. MVL copies the template. Start with default.**

### The Injection Mechanism

Self-service: each command reads the adapter itself. Independent of who triggered the command (human, MVL, auto-dispatch, autonomous loop). Forward-compatible with all build levels.

Why not MVL-level injection (passing content as arguments): breaks at auto-dispatch (Build 3+) because the adapter injection depends on the CALLER, not the CALLEE.

### The Implementation (three types of edits)

**1. Template files** at `thinking_disciplines/adapters/`:
- `default.md` — universal guidance for every inquiry
- `wayfinding.md` — steering-specific
- `comprehension.md` — understanding-specific
- `exploration.md` — mapping-specific
- `decomposition.md` — partitioning-specific

**2. Command edits** — one step added to each discipline command:
> "If the input is a file path, check for `_adapter.md` in the same folder. If found, read your section (`## S — Input Guidance` / `## I — Generation Guidance` / `## C — Evaluation Traps`) and apply as additional guidance. If not found, proceed with default behavior."

**3. MVL edit** — on NEW, copy `thinking_disciplines/adapters/default.md` to inquiry folder as `_adapter.md`.

### Default Adapter Content

```markdown
# Adapter: default

## S — Input Guidance
Check if devdocs/briefing.md exists. If yes, read for project context.
Check whether question scope matches strategic direction.

## I — Generation Guidance
Perform assembly check after testing: do survivors combine into 
something more valuable than any individual piece?
Generate at least one output that challenges the most comfortable assumption.

## C — Evaluation Traps
- [ ] TODO trap: recommending because undone, or because it advances the goal?
- [ ] Gate trap: real prerequisite, or just plan ordering?
- [ ] Insignificance trap: much higher-impact action being overlooked?
- [ ] Intervention trap: important, or MY intervention has high marginal impact?
After individual verdicts, perform assembly check on SURVIVE/REFINE candidates.
```

### Key Design Decisions

- **Self-service injection** — commands read adapter, not MVL passes it. Only mechanism that works across all contexts.
- **Conditional** — adapter absent = proceed with defaults. Graceful degradation.
- **Default adapter** — contains universal guidance (traps, assembly check, briefing). Not empty.
- **Progressive selection** — start with default always. Add user selection when templates exist. Auto-suggest from briefing at Level 2+.
- **Minimal command edits** — one instruction step per command. Non-disruptive.

### Forward Compatibility

| Build Level | How it works |
|---|---|
| Human-driven (now) | Human runs commands. Commands read `_adapter.md`. |
| Auto-dispatch (Build 3) | MVL invokes commands. Commands read `_adapter.md`. Same. |
| Multi-heading (Build 4) | Child branches inherit parent `_adapter.md`. Each branch's commands read from their own folder. |
| Autonomous (Build 5) | Loop invokes MVL. MVL dispatches commands. Commands read adapter. No human needed. Same mechanism. |

---

## Key Anchors
- **I3**: Self-service injection is independent of caller — works for human, MVL, auto-dispatch, autonomous
- **I7**: Conditional reading preserves backward compatibility — standalone commands work without adapters
- **I8**: Folder detection from input path — parent directory of file, or folder itself if folder given
- **I10**: Forward-compatible with all build levels (3-5) — no redesign needed
- **I11**: Progressive template selection: default now → user-selected → auto-suggested

## Saturation Indicators
- **Perspective saturation**: 5/5, all produced anchors. Saturated.
- **Ambiguity resolution ratio**: 3/3. Default content at LOW confidence (universal vs empty). Others HIGH.
- **SV delta**: Moderate — specification from question, not fundamental reframe.
- **Anchor diversity**: C(5), I(11), SP(2), FP(2), MN(3).
