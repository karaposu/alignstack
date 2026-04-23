# Sensemaking: Skill Invocation in Auto-Chain

## User Input
devdocs/inquiries/skill_invocation_in_auto_chain/_branch.md

---

## SV1 — Baseline
Can AI self-invoke Skills for auto-chain? Empirical test (Skill tool invoked programmatically in this conversation) answered: yes. Remaining: how to verify, what it means for design.

## Key Anchors

### Empirical
- **C1:** Skill tool CAN be invoked by AI without user typing slash command. Tested and confirmed.
- **C3:** Skill invocation loads spec as `<command-name>` tagged directive — system-level authority. Different from Read-tool-loaded text.
- **C4:** Tool calls are visible to user → passive verification built in.

### Three-Level Fidelity Hierarchy
| Level | Mechanism | Authority |
|---|---|---|
| 1 (highest) | Skill tool invocation | System directive — freshly loaded, authoritative |
| 2 (medium) | Read tool on command file | Tool result — verbatim but not tagged as directive |
| 3 (lowest) | Memory/recollection | May drift, compress, folk-version |

### Design Implications
- **S1:** Skill tool is the CORRECT mechanism — matches user manual invocation exactly
- **S3:** MVL+ spec must instruct: "Invoke the skill via Skill tool before executing" as explicit numbered step
- **R1:** Instruction must be PROXIMATE to execution point, not distant general rule
- **D1:** Cross-skill invocation (MVL+ invoking /sense-making) is allowed — different skills, no rule violation

## Ambiguity Resolutions

1. **AI invocation = user invocation?** YES — empirically identical. Same tagged format, same authority. HIGH confidence.
2. **Will AI reliably invoke every time?** Probabilistic — good spec design increases reliability, passive detection catches misses. MEDIUM confidence.
3. **Does this change the auto-chain design fundamentally?** NO — additive one-step insertion, not redesign. HIGH confidence.

## SV6 — Stabilized Model

The fix is a one-step insertion into the auto-chain flow:

```
For each discipline in E → S → D → I → C:
  1. Checkpoint (telemetry of prior discipline)
  2. User input (Enter = proceed, text = redirect)
  3. Invoke Skill(skill: "<discipline>", args: "<path>")  ← THE FIX
  4. Execute loaded spec at full depth
  5. Save to inquiry folder
  6. Update _state.md
```

Verification: tool calls visible in output. If Skill invocation absent → user catches pantomime. Residual risk: AI might skip Step 3 probabilistically. Mitigated by spec proximity + passive detection.

## Saturation
- Perspectives: 4 checked, all convergent
- Ambiguities: 3/3 resolved (2 HIGH, 1 MEDIUM)
- SV delta: significant (uncertain → verified protocol)
- Anchors: 5C + 4K + 3S + 2P + 3M + 6 perspective = good diversity
