---
status: active
refines: devdocs/inquiries/mvl_plus_auto_without_context_loss/finding.md
---
# Finding: Skill Invocation in Auto-Chain

## Changes from Prior
**What's preserved:** The entire auto-chain design from `mvl_plus_auto_without_context_loss` — executor model, informational checkpoint displays, telemetry gating, continuous execution, context preservation argument. All unchanged.

**What's changed:** The "Spec Loading Strategy" (Decomposition Piece 3 from the prior inquiry) was underspecified — it treated all loading mechanisms as equivalent. This finding specifies the CORRECT mechanism (Skill tool invocation) and adds a fallback chain.

**What's new:** The Discipline Transition Protocol — a 2-step protocol for each discipline boundary that ensures the platform's Skill system fires, with a defensive fallback. Also: empirical proof that AI self-invocation of the Skill tool works identically to user invocation.

**Migration:** Update the MVL+ spec rewrite (the prior finding's MUST action) to include the Skill tool invocation at each discipline boundary. No other changes needed to the prior finding's design.

## Question

When the AI auto-chains disciplines in MVL+ (the extended cognitive loop — Exploration → Sensemaking → Decomposition → Innovation → Critique), can it programmatically invoke the Skill tool (Claude Code's platform mechanism for loading command specifications) to ensure each discipline's full spec is loaded with system-directive authority — rather than executing from memory, which risks a "folk version" of the discipline? How can the user verify this happens? What does it mean for the auto-chain design?

**Goal:** A tested (not theoretical) answer about whether the Skill tool can be self-invoked, the observable difference between Skill-loaded and memory-based execution, and spec guidance for the MVL+ auto-chain.

## Finding Summary

- **The AI CAN programmatically invoke the Skill tool.** Empirically tested in this conversation: `Skill(skill: "sense-making", args: "...")` fired successfully when called by the AI (not typed by the user). The full command spec loaded as a system-level `<command-name>` tagged directive — identical to what happens when the user types the slash command.
- **Self-invocation produces identical results to user invocation.** The loaded spec arrives in the same tagged format, at the same authority level. The AI's tool call and the user's typed command are functionally indistinguishable to the system.
- **Verification is built into the platform.** Every Skill tool call is visible in the conversation output. If the AI pantomimes (executes from memory without invoking the Skill), the tool call is ABSENT — immediately detectable by the user. No custom verification mechanism is needed.
- **There is a three-level fidelity hierarchy for spec loading:** (1) Skill tool invocation — highest authority, system directive; (2) Read tool on command file — verbatim text but not tagged as directive; (3) Memory/recollection — risk of drift, compression, and "folk version" execution. The auto-chain design must use Level 1 and fall back to Level 2, never Level 3.
- **The Discipline Transition Protocol** is a continuous-flow protocol per discipline boundary: display checkpoint telemetry (no pause), invoke the Skill tool for the next discipline (with Read-tool fallback if Skill fails, HALT if Read fails), then execute the loaded spec — all without waiting for user input. Since discipline outputs go to files via the Write tool (not to conversation text), response output limits are not a constraint — all five disciplines can run in a single response. The user can interrupt at any time to redirect. This is an additive insertion into the prior auto-chain design, not a redesign.
- **Residual risk:** The AI might probabilistically skip the Skill invocation, especially deep in long conversations. This risk is mitigated by: placing the invocation instruction proximate to the execution point in the MVL+ spec (not as a distant preamble rule), and by platform-inherent detection (missing tool call is visible). Prevention is probabilistic; detection is deterministic.

## Finding

### 1. The Empirical Test

During this inquiry, the AI (this very conversation) attempted to invoke the Skill tool programmatically:

```
Skill(skill: "sense-making", args: "devdocs/inquiries/skill_invocation_in_auto_chain/_branch.md")
```

Result: `Launching skill: sense-making` — the full sensemaking command spec loaded into the conversation as a `<command-name>` tagged directive. This is the same mechanism that fires when the user types `/sense-making` in Claude Code (the blue-highlighted slash command). The spec arrived at system-directive authority level — the AI is structurally oriented toward following it, not merely "aware" of it.

This test resolved the question definitively: AI self-invocation of Skills works and produces the same result as user invocation. This is not theoretical — it happened in this session and can be reproduced.

### 2. The Three-Level Fidelity Hierarchy

Not all spec-loading mechanisms are equal. The investigation identified three levels:

| Level | Mechanism | How it loads | Authority | Risk |
|---|---|---|---|---|
| **1 (highest)** | **Skill tool invocation** | Platform injects full spec as `<command-name>` tagged system directive | System-level — the AI is structurally oriented to follow it | Lowest — fresh, complete, authoritative |
| **2 (medium)** | **Read tool on command file** | File content appears as tool result in conversation | Conversation-level — verbatim text but not tagged as directive | Medium — text may receive less "compliance weight" than a tagged directive |
| **3 (lowest)** | **Memory/recollection** | The AI follows what it "remembers" from earlier in conversation or from training data | None — no fresh loading occurred | Highest — drift, compression, folk-version execution. The "pantomime" risk |

The prior auto-chain finding (`mvl_plus_auto_without_context_loss`) treated all three as roughly equivalent ("if the spec is in context, it's fine"). The user correctly identified that they are NOT equivalent: Level 1 carries system-directive authority that Level 2 and Level 3 do not.

**The auto-chain design must use Level 1 (Skill invocation) as primary and Level 2 (Read) as fallback. Level 3 (memory) is never acceptable for auto-chain execution.**

### 3. The Discipline Transition Protocol

The innovation phase produced a 5-step protocol. Critique refined it to a 2-step core, identifying that the full protocol had "checklist fatigue" — too many meta-cognitive verification steps that the AI would skip, creating the same reliability problem the protocol was designed to prevent.

**The surviving protocol:**

```
At each discipline boundary in MVL+ auto-chain (continuous — no pause):

1. DISPLAY checkpoint telemetry (2-3 lines, informational — no wait)
2. Invoke Skill(skill: "<next-discipline>", args: "<inquiry-path>")
   If Skill fails → Read the command file, then execute
   If Read fails → HALT ("Could not load spec. Run manually: /<discipline>")
3. Execute the loaded spec at full depth
4. Save output to inquiry folder + update _state.md
→ immediately continue to next discipline boundary
```

Continuous flow. One tool call per transition. No pauses — the user can interrupt at any time to redirect, but the model does not wait. Since discipline outputs are saved to files via the Write tool (which does not count against the response output token limit), all five disciplines can run in a single response — the conversation-visible output is only the checkpoint telemetry (~1,000-2,500 tokens total). The fallback chain (Skill → Read → HALT) ensures the system never falls to Level 3 (memory). Detection is platform-inherent — tool calls are visible in the output regardless of whether the AI follows any verification protocol.

### 4. Why Prosecution Stripped the Verification Steps

The innovation phase proposed additional steps: a formal "Verify" check (confirm the `<command-name>` tag is present after Skill invocation) and a "Loaded via: Skill" header at the start of every discipline output (audit trail).

Critique's prosecution argued these create "checklist fatigue" — 10 actions per transition, 50 per iteration. The more verification steps, the more steps available to be skipped. The verification steps designed to catch one failure introduce their own failure modes.

The defense countered that the CORE is one tool call (the most reliable action an LLM takes — structured, not free-text) and that detectability is platform-inherent (tool calls visible without any protocol step).

Collision result: strip to core. The Verify step and "Loaded via" header survive as COULD items — useful for audit but not required for the protocol to work.

### 5. The Residual Risk

The AI might skip the Skill invocation and execute from memory. This is a probabilistic risk inherent to LLM instruction-following — no protocol can guarantee 100% compliance. Two mitigations:

**Preventive (probabilistic):** Place the Skill invocation instruction as an explicit step in the per-discipline execution flow of the MVL+ spec, PROXIMATE to the execution point. Not a general rule at the top of the spec ("always invoke Skills"), but a concrete numbered step in each transition ("Step: invoke Skill(sense-making)"). Proximity to the execution point increases the probability of compliance.

**Detective (deterministic):** The Skill tool call is visible in conversation output. If the AI skips it, the user sees the absence — no `Skill(skill: "sense-making") → Launching skill` line in the output. The user can say "you skipped the Skill invocation — re-run." Detection doesn't depend on the AI's compliance. It's a platform property.

This two-mechanism approach (probabilistic prevention + deterministic detection) is the realistic answer. Claiming "the protocol guarantees Skill invocation" would be dishonest — LLM instruction-following is inherently probabilistic. What the protocol guarantees is that FAILURES ARE VISIBLE.

## Next Actions

### MUST

- **What:** Update the MVL+ spec rewrite to include the Discipline Transition Protocol — Skill invocation as Step 2 of each discipline boundary, with Read fallback and HALT
- **Who:** Human (edits `commands/MVL+.md`)
- **Gate:** Same as the prior finding's spec rewrite — before next MVL+ inquiry
- **Why:** Without this, the auto-chain design's spec-loading step is underspecified and the AI may pantomime

### COULD

- **What:** Add a "Loaded via: Skill/Read" header to the top of each discipline output as an audit trail
- **Who:** Add to each discipline's output template (one line per command spec)
- **Gate:** After the core protocol is working — don't add complexity before the basic mechanism is tested
- **Why:** Creates a retrospective audit trail across inquiries — useful for the empirical quality comparison (monitoring item below)

### DEFERRED

- **What:** Empirical quality comparison — run the same inquiry twice (once with Skill loading, once with memory-only) and compare output depth
- **Gate:** After 5+ auto-chain inquiries provide a baseline of Skill-loaded output quality
- **Why (if revived):** Would definitively answer whether Skill-loaded execution is measurably better than memory-based, or whether the fidelity difference is theoretical

## Reasoning

### Refined: Full 5-Step Discipline Transition Protocol
The innovation assembly (checkpoint → load → verify → execute-with-header → save) was refined by critique to a 2-step core (checkpoint → load+execute). Prosecution argued checklist fatigue — 10 actions per transition creates its own reliability problem. Defense showed the core is one tool call + platform-inherent detection. The Verify step and "Loaded via" header were stripped from MUST to COULD because they add complexity without adding critical detection capability (tool call visibility already provides detection).

### Killed: Distributed auto-chain (each discipline invokes the next)
Innovation explored having each discipline spec end with "invoke the next discipline's Skill." Killed on separation of concerns — disciplines do cognitive work, MVL+ does orchestration. Mixing creates maintenance burden (change pipeline order → edit 5 specs).

### Killed: Directive-as-tool-call in _state.md
Innovation explored encoding the literal `Skill(sense-making, args)` call in `_state.md`. Killed on coupling — ties the state file format to Claude Code's tool API. State files should be readable by any system.

### Killed: Double-load verification (Skill + Read)
Innovation explored invoking both Skill AND Read and comparing results. Killed on over-engineering — they will always agree, and the token/latency cost buys nothing.

### Survived: Core Discipline Transition Protocol
The 2-step core passes all six evaluation dimensions (reliability, detectability, correctness, graceful degradation, simplicity, coherence) with no caveats on critical dimensions. One tool call per transition. Fallback chain prevents pantomime. Platform visibility provides detection.

## Open Questions

### Monitoring
- After 5+ auto-chain inquiries: how often does the AI skip the Skill invocation? Track by checking whether the `Skill(...)` tool call appears in each transition. If skip rate exceeds 20%, the proximity of the instruction in the MVL+ spec needs revision.

### Refinement Triggers
- If the "Loaded via" audit header proves practically useful during the first 10 auto-chain inquiries (user actually checks it, it catches a loading issue), promote from COULD to MUST.
- If Skill invocation skip rate exceeds 20% after spec proximity optimization, re-evaluate the killed "Verify" step — it may be worth the complexity cost if skips are frequent.
- If Claude Code's Skill system adds a "programmatic invocation" mode (explicitly designed for AI-initiated calls rather than user-typed commands), revise the protocol to use it.
