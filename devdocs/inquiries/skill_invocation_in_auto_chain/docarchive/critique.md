# Critique: Skill Invocation in Auto-Chain

## User Input
devdocs/inquiries/skill_invocation_in_auto_chain/

---

## Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Reliability** | CRITICAL | Maximizes Skill tool firing probability. Doesn't depend on AI "remembering." |
| **Detectability** | CRITICAL | Skipped invocation is immediately visible to user and reviewable in output. |
| **Correctness** | CRITICAL | Skill-loaded execution = manual user-invoked execution. |
| **Graceful degradation** | HIGH | Tool errors degrade to next-best mechanism, never to memory. |
| **Simplicity** | HIGH | Protocol is simple enough that the AI reliably follows it. No checklist fatigue. |
| **Coherence** | MEDIUM | Fits the existing MVL+ auto-chain design additively. |

---

## Candidate: Full 5-Step Protocol (Innovation Assembly) — REFINE

**Prosecution:** 5 named steps with sub-steps = 10 actions per transition × 5 transitions = 50 actions per iteration. The more steps designed to prevent one skip, the more steps available to be skipped. Checklist fatigue. The Verify step and "Loaded via" header are the first casualties — meta-cognitive checks that LLMs skip in execution mode.

**Defense:** The CORE is one structured tool call (Skill invocation) — the most reliable action type. Detectability is platform-inherent (tool calls visible), not protocol-dependent. The verify step and header are defense-in-depth, not critical path.

**Collision:** Defense survives on core + detectability. Prosecution wins on complexity. Strip to core.

**Refinement:** Remove Verify step and "Loaded via" header from MUST. Move to COULD.

---

## Candidate: Refined Core Protocol — SURVIVE (clean)

```
At each discipline boundary:

1. CHECKPOINT
   Telemetry (2-3 lines) + wait for user input

2. LOAD + EXECUTE
   Skill(discipline, path)
   If fail → Read(command file) then execute
   If fail → HALT
   Execute loaded spec at full depth
   Save + update _state.md
```

| Dimension | Result |
|---|---|
| Reliability | PASS — one structured tool call per transition |
| Detectability | PASS (strong) — platform-inherent, no protocol step needed |
| Correctness | PASS — empirically verified in this session |
| Graceful degradation | PASS — Skill → Read → HALT, never memory |
| Simplicity | PASS — two logical steps, one tool call |
| Coherence | PASS — slots into prior finding's checkpoint pattern |

---

## COULD Items (survived but not critical)

- **"Loaded via" output header** — audit trail in discipline output. Useful for retrospective comparison of loading mechanisms across inquiries. Not needed for real-time detection.
- **Verify step** — confirm spec loaded before executing. Defense-in-depth. Skill tool either succeeds (visible) or errors (fallback fires). Explicit verification is redundant given platform visibility.

---

## Coverage

| Region | Status |
|---|---|
| Skill + fallback protocol | VIABLE (survivor) |
| Full verification protocol | Overcomplicated (refined) |
| Memory-based | DEAD by definition |
| Over-engineered | DEAD from innovation |
| Read-only (no Skill) | Subsumed (Read is fallback) |

## Signal: TERMINATE

- Clean SURVIVE: YES (core protocol, no caveats)
- Landscape: STABLE
- Coverage: complete, no unexplored viable regions

## Convergence Telemetry
- Dimensions: 6/6, all critical: YES
- Adversarial: STRONG (forced substantive refinement)
- Landscape: STABLE
- Clean SURVIVE: YES
- Failure modes: none
- **PROCEED**
