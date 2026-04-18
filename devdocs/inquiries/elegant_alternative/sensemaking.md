# Sensemaking: Elegant Alternative to Adapters

## User Input
devdocs/inquiries/elegant_alternative/_branch.md

---

## SV6 — Stabilized Model

**The adapter file is unnecessary. `_branch.md` IS the adapter. Configuration IS input.**

### The Core Insight

In LLM systems, there's no runtime distinction between data and instructions — it's all tokens. A separate configuration file and its delivery mechanism solve a problem that doesn't exist. Instructions in `_branch.md` reach the disciplines the same way instructions in a separate adapter file would.

### The Elegant Architecture

```
Human asks a question
  ↓
MVL creates _branch.md (question + goal + scope + guidance + alignment labels)
  ↓
Disciplines read _branch.md (they already do)
  ↓
Done. No adapter files. No command edits. No cascade.
```

### Three Problems, Simple Solutions

| Problem | Solution | Mechanism |
|---|---|---|
| Scope awareness | Scope check in `_branch.md` | Already implemented |
| Project context | One line in S spec: "check for briefing if exists" | Universal conditional |
| Question-type guidance | In `_branch.md`'s L3 section | Human provides, or MVL suggests |

### What Dies

- `_adapter.md` file type — unnecessary
- 4 command edits — unnecessary (commands already read `_branch.md`)
- Cascade logic — unnecessary
- Project adapter vs inquiry adapter — unnecessary
- The entire adapter injection mechanism

### What Survives

- Three-layer CONCEPTS (spec / project / inquiry) — expressed as content in `_branch.md`, not as separate files
- Alignment-SIC identity — L3 alignment established in `_branch.md`'s approach section
- Question-type template CONTENT (traps, depth, frontiers) — as REFERENCE docs MVL/human consult, not as files commands read
- Build sequence — simplified: Build 1 = "enrich MVL's `_branch.md` creation"

### The Principle

In LLM systems, don't build a configuration delivery mechanism when the input delivery mechanism already works.

---

## Key Insights

- **I3**: Disciplines are RESPONSIVE to input, not configured. A well-phrased input produces the right behavior from generic disciplines. Adapters configure disciplines that don't need configuration.
- **I5**: Fundamental tension: adapters GUARANTEE delivery, `_branch.md` depends on LLM judgment. But both are text in context window — adapter files have no more "guarantee" than `_branch.md` instructions.
- **I7**: `_branch.md` IS the adapter. One file carries everything.
- **I8**: Mechanism works: discipline commands already read the inquiry folder. `_branch.md` is in the folder. Guidance reaches all disciplines without changes.
- **I10**: Forward-compatible: `_branch.md` is per-inquiry and already read by all commands. Works for Builds 3-5.
- **I11**: Guaranteed delivery is an illusion in LLM systems. Both files are just text. The adapter doesn't provide more guarantee — just more complexity.
- **I12**: Nothing built needs reverting. The adapter was designed but never implemented. Killing it is free.

## FP1: Configuration IS input in LLM systems

There's no runtime distinction between data and instructions. Everything is tokens. Designing a separate configuration mechanism for a system where configuration travels through input is overengineering.

## Ambiguity Resolutions

1. Complexity relocated, not eliminated? → YES but CONSOLIDATED (one place: MVL) vs DISTRIBUTED (5 places: MVL + 4 commands). Consolidated > distributed. **HIGH**
2. Project context without project adapter? → "Read briefing if exists" as one universal conditional line in S spec. **HIGH**
3. How MVL detects question type? → **OPEN**. Three options: (a) human tells, (b) MVL suggests, (c) no detection. Start with (c) — simplest.

## How SV6 Differs from SV1

SV1: "Is there a simpler alternative?" SV6: "YES — `_branch.md` IS the adapter because configuration IS input."

## Saturation Indicators
- **Perspective saturation**: 5/5, all produced anchors. Saturated.
- **Ambiguity resolution**: 2 HIGH, 1 OPEN.
- **SV delta**: Very significant — complete architecture replacement.
- **Anchor diversity**: C(5), I(12), SP(3), FP(3), MN(3). I3, I7, I11 load-bearing.
