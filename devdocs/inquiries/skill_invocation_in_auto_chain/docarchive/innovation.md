# Innovation: Skill Invocation in Auto-Chain

## User Input
devdocs/inquiries/skill_invocation_in_auto_chain/sensemaking.md

## Seed
Skill tool works when AI self-invokes (proven). Straightforward fix is adding Skill(discipline) as a step. But: AI might skip it probabilistically. What's the most reliable mechanism beyond "add the step"?

---

## Survivors

| # | Survivor | Mechanism | Verdict |
|---|---|---|---|
| 1 | Self-check after Skill invocation (verify tag present) | Lens Shifting | SURVIVE |
| 2 | "Loaded via" output header (audit trail in every discipline output) | Lens Shifting + Constraint + Extrapolation | SURVIVE |
| 3 | Fused checkpoint+Skill invocation (one step, not two) | Combination | SURVIVE |
| 4 | Fallback chain: Skill → Read → HALT (never memory) | Combination | SURVIVE |
| 5 | Transition checklist (3-item protocol per transition) | Domain Transfer (aviation) | SURVIVE |
| 6 | Negative test: compare quality with/without Skill loading | Absence Recognition | SURVIVE (future monitoring) |
| 7 | Forward-compatible delegation design | Extrapolation | SURVIVE (directional) |

## Killed

| Candidate | Mechanism | Killed on | Seed |
|---|---|---|---|
| Gate pattern (can't execute without Skill) | Lens Shifting | Same recursion — relies on AI following the gate instruction | N/A |
| Directive-as-tool-call in _state.md | Combination | Couples state format to Claude Code tool API | N/A |
| Distributed auto-chain (each discipline invokes next) | Inversion | Violates separation of concerns; mixes cognition with orchestration | Revive if MVL+ is ever eliminated |
| "No execute without Skill" constraint | Constraint Manip. | Same reliability recursion | N/A |
| Skeleton-in-preamble (~500 tokens per discipline) | Constraint Manip. | Maintenance burden — skeleton must track spec changes | Revive if Skill invocation proves unreliable after 10+ runs |
| Sterile transition (no tangential reasoning) | Domain Transfer | Unenforceable for LLM | N/A |
| Double-load (Skill + Read as verification) | Domain Transfer | Over-engineered for negligible benefit | N/A |

---

## Assembly: The Discipline Transition Protocol

```
At each discipline boundary in MVL+ auto-chain:

1. CHECKPOINT
   - Present telemetry of completed discipline (2-3 lines)
   - Wait for user input (Enter = proceed, text = redirect)

2. LOAD
   - Invoke Skill(skill: "<next-discipline>", args: "<inquiry-path>")
   - If Skill fails → Read("<command-file-path>")
   - If Read fails → HALT ("Could not load spec. Load manually: /<discipline>")
   - Never execute from memory

3. VERIFY
   - Confirm spec loaded (command-name tag or file content present)

4. EXECUTE
   - Run loaded spec at full depth
   - Output begins with: "## Loaded via: Skill" (or "Read" if fallback)

5. SAVE + UPDATE
   - Save to inquiry folder
   - Update _state.md
```

Adds to prior finding: explicit Skill invocation, fallback chain, audit trail. Doesn't change prior architecture.

**Assembly verdict: SURVIVE**

## Telemetry
- Generators: 4/4, Framers: 3/3
- Convergence: YES (5+ mechanisms → same protocol)
- Survivors tested: 7 + 1 assembly
- Failure modes: none
- **PROCEED**
