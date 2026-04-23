# Critique: MVL+ Auto-Chain Without Context Loss

## User Input
devdocs/inquiries/mvl_plus_auto_without_context_loss/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Correctness** | CRITICAL | User never types a file path between disciplines. All three context layers preserved. |
| **Feasibility** | CRITICAL | Works within turn-based model. No non-existent dependencies. Implementable as spec change. |
| **Depth preservation** | CRITICAL | Each discipline's complete process runs. Output indistinguishable from manual. |
| **Coherence** | HIGH | Compatible with _state.md, inquiry folders, cross-session resume, classic /mvl, standalone use. |
| **Steering preservation** | HIGH | Human can redirect at every checkpoint via substantive text. |
| **Elegance** | MEDIUM | Minimal changes. No new infrastructure. No new concepts needing documentation. |

---

## Candidate Verdicts

### The Innovation Assembly — SURVIVE

**Design:** MVL+ as executor (not router) with checkpoint-as-preamble, telemetry gating, default auto-proceed, checkpoint mode (intent interpretation), threshold logging.

**Prosecution (strongest case against):**
LLM attention-degradation: by discipline 5, 15-30K tokens of own prior output compete for attention. Instruction-following fidelity decreases in long contexts when instructions are distant from generation point. Risk: later disciplines unconsciously compressed.

**Defense (strongest case for):**
1. Same attention load exists in manual mode — conversation history contains identical accumulated output regardless of invocation method.
2. Checkpoint-as-preamble provides structured re-orientation ("Sensemaking complete. [telemetry]. Now running Decomposition...") that manual command entry doesn't provide.
3. The design dissolves the problem (false coupling) rather than trading off between competing concerns.

**Collision:** Defense survives. Attention risk is shared with manual mode and mitigated by preamble. One caveat: checkpoint re-orientation content is load-bearing — cannot be trivialized.

| Dimension | Result |
|---|---|
| Correctness | PASS (strong) |
| Feasibility | PASS (strong) |
| Depth preservation | PASS (caveat: checkpoint content load-bearing) |
| Coherence | PASS |
| Steering preservation | PASS |
| Elegance | PASS |

---

### Bundled Execution (2-3 per response) — KILL

**Prosecution:** Output-length pressure forces abbreviation of second discipline. No mid-response re-orientation. Structural depth threat with no mitigation.
**Defense:** Reduces interactions from 5 to 2-3.
**Collision:** Prosecution wins. Assembly achieves similar friction reduction (Enter is trivial) without depth risk.

**Killed on:** Depth preservation. Seed: revive if output-per-response capacity doubles.

---

### Session Mode (no slash commands) — KILL

**Prosecution:** Ambiguous intent detection — "How should auth work?" could be inquiry or quick question. First message in session has no context to disambiguate.
**Defense:** Context usually resolves ambiguity.
**Collision:** Prosecution wins on critical edge (first message, context-free). Slash command costs 5 chars, provides unambiguous intent.

**Killed on:** Feasibility + Coherence. Seed: session-mode INSIDE active inquiry (already in assembly as checkpoint-mode).

---

## Fitness Landscape

```
                    Depth Preservation →
                    LOW                          HIGH
                    ┌──────────────────────────────────┐
         HIGH      │                    ┌────────────┐ │
                   │   Bundled ✗        │  Assembly  │ │
  Feasibility      │   (depth risk)     │  SURVIVES  │ │
         ↓         │                    │  (caveat:  │ │
                   │                    │  preamble  │ │
                   │                    │  is load-  │ │
                   │                    │  bearing)  │ │
         LOW       │   Session Mode ✗   │            │ │
                   │   (ambiguity)      └────────────┘ │
                   │                                    │
                   │   Zero-input ✗  Hook-chain ✗       │
                   │   (architecture) (can't invoke)    │
                   └──────────────────────────────────┘
```

Viable region: high feasibility + high depth preservation. Only the assembly occupies it.

---

## Coverage Map

| Region | Status |
|---|---|
| Executor-with-checkpoints | Evaluated → VIABLE |
| Bundled execution | Evaluated → DEAD |
| Session mode | Evaluated → DEAD |
| Zero-input automation | DEAD (architecture) |
| Hook-based chaining | DEAD (can't invoke) |
| Hybrid auto/manual | Subsumed by assembly (superset) |
| Progressive auto-chain | Subsumed by assembly (threshold logging) |

No unexplored regions likely to contain viable alternatives.

---

## Signal: TERMINATE

- Clean SURVIVE: YES (assembly, 1 non-critical caveat)
- All innovation outputs evaluated
- Unexplored regions subsumed
- Landscape stable

**Ranked survivors:**
1. The Innovation Assembly — MVL+ as executor with checkpoint-as-preamble, telemetry gating, default auto-proceed, checkpoint mode, threshold logging

---

## Convergence Telemetry

- Dimensions evaluated: 6/6, all critical covered: YES
- Adversarial strength: STRONG — prosecution's attention-degradation argument is the genuine strongest objection
- Landscape stability: STABLE — confirmed exploration/sensemaking shape
- Clean SURVIVE: YES — assembly (1 non-critical caveat)
- Failure modes observed: none
- **Overall: PROCEED**
