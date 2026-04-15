# Sensemaking: Should the Loop Be SICR?

## SV6 — Yes. R completes the cognitive agentic loop.

### What R is

R (Reflect) is a meta-cognitive step that examines HOW S, I, and C performed — not the problem, but the process. It's second-order: S/I/C operate on the problem, R operates on S/I/C.

### What R reads

- S output (sensemaking.md)
- I output (innovation.md)
- C output (critique.md)
- Human interventions (where did the human redirect or correct?)
- The original question (_branch.md)

### What R examines (five things)

1. **Human interventions** — where the system missed something the human caught
2. **Cross-step leaks** — where a later step found what an earlier step should have
3. **Step quality** — was each step thorough or thin?
4. **Surprises** — what was unexpected? (learning signal)
5. **Answer quality** — does the answer actually address the goal?

### What R produces

1. **Per-step observations** — "S missed compliance perspective, human added it"
2. **Proposed memory cells** — "for auth questions, include compliance" (human confirms)
3. **Process frontier** — "why didn't S include compliance? check the spec"

### R is NOT a separate discipline

It's a lightweight meta-step built into the MVL command. Reads existing files, produces structured observations. Much cheaper than a full discipline run.

### SICR + memory cells = the learning loop

```
Run N: SICR → answer + lessons
Run N+1: loads relevant lessons → S/I/C better primed → SICR → better answer + new lessons
```

Specs don't change (safe). Context grows (incremental). Self-improvement through context enrichment.

### Maps to Homegrown

intent → plan → act → interpret → REFLECT → ↺
S      → I    → C   → (answer)  → R       → ↺

R was the missing reflect step. SICR is the complete cognitive agentic loop.

### User Input Recording

For R to see human interventions, it needs to know what the human ASKED at each step — not just what the AI produced. Without the human's input, R can't detect where the human redirected or corrected.

Fix: each discipline command (S, I, C, Comprehend) now records the user's $ARGUMENTS at the top of its output file as `## User Input`. This means when R reads sensemaking.md, it sees both what the human asked for AND what S produced. The gap between input and output reveals where the human had to compensate.

This was added to: commands/sense-making.md, commands/innovate.md, commands/td_critique.md, commands/comprehend.md — as an instruction in each command's numbered list.
