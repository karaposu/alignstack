# Exploration: MVL+ Auto-Chain Without Context Loss

## User Input
Can `/MVL+` be run end-to-end without manual command entry, preserving full context richness, at full spec depth, without subagents?

## Mode & Entry Point
- **Mode:** Possibility exploration
- **Entry point:** Signal-first (manual loop friction is the known signal)

---

## Territory Overview

Six regions mapped across the design space for auto-chaining MVL+ disciplines:

### Region 1: Context Model — Three Layers

| Layer | What it is | Preservation |
|---|---|---|
| **A: Conversational** | Full conversation history in the LLM's working memory — everything said, every tool result, every output | Auto-preserved when disciplines run in the same session. Nothing special needed. |
| **B: File artifacts** | Saved discipline outputs (exploration.md, sensemaking.md, etc.) | Always preserved. Both manual and auto-chain produce the same files. |
| **C: Warm reasoning** | Implicit access to reasoning paths that didn't make it into saved output — hunches, tensions noticed, connections formed during generation | Exists ONLY in same-session execution. Cannot be persisted to files. This is the load-bearing distinction. |

**Key finding:** Layer C — "warm reasoning" — is automatically preserved when auto-chaining happens within the same conversation session. The user's concern about context loss dissolves for same-session auto-chaining. Context loss is a cross-session problem, not an auto-chaining problem.

### Region 2: Token Economy

| Metric | Estimate |
|---|---|
| Output per full E→S→D→I→C iteration | ~18,500–37,000 tokens |
| Fits in 1M context window? | Yes, comfortably |
| Compression risk within 1 iteration? | Low |
| Compression risk across 2+ iterations? | Moderate to high for complex problems |
| Output-per-response limit | ~16K-32K tokens — prevents all 5 disciplines in a single response |

**Key finding:** Token budget is NOT the binding constraint for one iteration. The 1M window holds it easily. The real constraint is output-per-response: each response can hold 1 discipline at full depth, not all 5.

### Region 3: Execution Models Assessed

| Model | Feasibility | Why |
|---|---|---|
| A. Single mega-command | Blocked | Output-per-response limits prevent all 5 in one response |
| B. Hook-based auto-chain | Blocked | Hooks run shell commands, can't invoke slash commands |
| C. "Continue" protocol | **VIABLE** | User says "go" instead of full command path. Minimal friction. |
| D. Auto-proceed with opt-out | Partially viable | Claude Code requires user input between responses |
| E. Bundled (2-3 per response) | **Testable** | Might work for short disciplines; attention degradation risk |
| F. Pre-loaded spec execution | **VIABLE** | When specs are already in context, skip slash commands entirely |

### Region 4: Steering Gap — What Human Provides Between Steps

| Human function | Automatable? |
|---|---|
| Quality judgment (telemetry) | Partially — designed but not built (inquiry reads telemetry) |
| Direction injection | No — requires human intent |
| Context addition | No — requires human knowledge |
| Scope correction | Partially — answer-goal alignment check exists |
| Abort/redirect | No — requires human judgment |

**Key finding:** Full auto-chain with ZERO human intervention sacrifices direction injection, context addition, and abort capability. A "proceed unless interject" model preserves them — human CAN intervene at any checkpoint without being REQUIRED to.

### Region 5: Spec Loading Insight

Slash commands serve two functions:
1. **Spec loading** — inject the discipline's full process specification into the conversation
2. **Execution trigger** — tell the LLM to run the process

In sessions where discipline specs are already in context (pre-read or from prior conversation), function (1) is redundant. The LLM can execute the discipline process directly. Slash commands are convenience wrappers for loading, not execution.

---

## Confidence Map

| Region | Level | Notes |
|---|---|---|
| Context model (3 layers) | Confirmed | Probed and validated |
| Token economy | Confirmed | Estimated against known limits |
| Execution models A-F | Confirmed | Each assessed individually |
| Pre-loaded spec insight | Confirmed | Validated against current session |
| Steering gap categories | Scanned | Categories identified, empirical validation pending |
| Attention degradation (bundled mode) | Unknown | Requires empirical testing |
| Multi-iteration context survival | Inferred | Likely okay for 2 iterations; 3+ may compress |

## Frontier State
Stable. Jump scan (cycle 6) confirmed existing territory rather than discovering new regions.

## Gaps & Next Steps
1. **Empirical:** Does bundled execution (2 disciplines per response) degrade quality?
2. **Empirical:** At what iteration count does context compression become noticeable?
3. **Design:** What should the "proceed unless interject" checkpoint format look like?

## Saturation Indicators
- Frontier: stable after 6 cycles
- Discovery rate: declining (cycles 4-6 refined, didn't discover)
- Bounded gaps: 3, all between explored regions
- Confidence: 5 confirmed, 1 scanned, 1 inferred, 1 unknown
