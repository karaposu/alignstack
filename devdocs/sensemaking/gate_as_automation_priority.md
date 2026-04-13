# Sensemaking: Which Protocol Is Most Important for Automation?

## SV6 — Stabilized Model

**GATE is the most important protocol for automation.**

### Why

The human currently makes ONE judgment at each discipline-to-discipline transition: "is this output good enough for the next step?" GATE formalizes this judgment. It's the only protocol that runs PER-TRANSITION, and transitions are the automation bottleneck.

### Key insight

GATE's quality criteria already exist inside each discipline's spec:
- Sensemaking: saturation indicators (perspective count, SV delta, anchor diversity)
- Innovation: minimum coverage (at least 1 generator + 1 framer)
- Critique: adversarial completeness (prosecution AND defense for each verdict)
- Comprehend: prediction accuracy at target depth
- Exploration: convergence criteria (frontier + discovery rate + bounded gaps)

GATE extracts and checks them. It's an aggregation protocol, not an invention.

### Design

```
GATE(discipline_output):
  PASS  → proceed to next discipline
  FLAG  → human review needed
  FAIL  → re-run discipline with feedback

Strictness: set by SCOPE
  exploratory → loose gate
  critical    → strict gate
```

### Automation flow with GATE

```
CONFIGURE → discipline 1 → GATE ✓ → discipline 2 → GATE ✓ → discipline 3 → GATE ✓ → STEER → [human decides direction]
```

Human drops from "judge + type at every step" to "decide direction at wayfinding checkpoints."

### Priority order

1. **GATE** — enables automation (transitions)
2. **SCOPE** — optimizes automation (depth calibration)
3. **VERSION** — makes automation traceable (iteration history)
