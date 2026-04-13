# Sensemaking: How Is This Different From Existing AI Agent Loops?

## SV6 — We're building the curriculum, not the classroom.

### The distinction

| | Agent frameworks (LangGraph, CrewAI, etc.) | Thinking disciplines system |
|---|---|---|
| **What it solves** | How to chain LLM calls reliably | What each step should THINK about |
| **Layer** | Execution infrastructure | Cognitive methodology |
| **Provides** | Routing, state, retry, tool calling | Formalized cognitive operations, quality standards, failure modes, frontier questions |
| **Missing** | What each node should actually do (ad-hoc prompts) | Execution infrastructure (human types commands) |

They're complementary. Agent frameworks are engines with no curriculum. Thinking disciplines are the curriculum.

### What's genuinely new (not in any framework)

1. Formalized cognitive operations — 7 disciplines with components, processes, failure modes
2. Discipline-specific quality standards — telemetry with thresholds per discipline
3. Frontier questions — unanswered questions as first-class output
4. Wayfinding — search steering with 3-layer awareness + reachability
5. Universal output anatomy — transform, progression, telemetry, frontier

### The minimum viable loop is a prototype

Testing the methodology with primitive tools (human + slash commands + inquiry). Once proven and calibrated, the methodology plugs into agent frameworks:

```
Production architecture:
  Agent framework node → discipline prompt (the cognitive methodology)
  Agent framework edge → telemetry thresholds (the quality standard)
  Agent framework reflection → wayfinding (the steering logic)
```

### Growth path

1. **Prototype** — human-driven MVL, test methodology in isolation
2. **Calibrate** — refine thresholds from real usage
3. **Integrate** — plug into agent framework for automated execution
4. **Compound** — system improves itself through disciplined self-application
