# Sensemaking: Finding Production Prompt

## User Input
devdocs/inquiries/finding_production_prompt/_branch.md

---

## SV6 — Stabilized Model

**The prompt is a directed synthesis recipe that maps SIC outputs to finding.md sections.**

### Source → Section Mapping

| finding.md section | Primary source | Secondary source | What to extract |
|---|---|---|---|
| **Question** | `_branch.md` | — | Question + Goal (verbatim or near-verbatim) |
| **Finding** | `critique.md` "The Answer" | `innovation.md` Assembly, `sensemaking.md` SV6 | The converged answer. Critique's answer is most mature — use it as base. Enrich with SV6 understanding and innovation design details if critique was terse. |
| **Reasoning** | `critique.md` verdicts | `innovation.md` KILL/REFINE verdicts | ALL alternatives considered + why each was killed/refined/survived. Critique's prosecution arguments ARE the reasoning for kills. Innovation's kills show pre-adversarial rejections. |
| **Open Questions** | `critique.md` frontier | `innovation.md` REFINE candidates, `sensemaking.md` unresolved ambiguities | Collect from all three. Deduplicate. Seeds for future work. |

### The Anti-Compression Directive

The prompt must explicitly state: "Write for a reader who has NOT read the SIC output files. Every decision must include enough context that the reader understands WHY without referencing other files. Do not compress — explain fully. The test: could someone read ONLY this file and understand the complete answer?"

### Coverage Self-Check

After writing, the prompt instructs: "Review critique.md's candidate verdicts. Is every KILL represented in the Reasoning section? Is every SURVIVE represented in the Finding section? Are frontier questions from all three files collected in Open Questions?"

### finding.md Replaces TERMINATE Conversation Output

finding.md IS the TERMINATE output. The conversation gets: "finding.md written to [path]. Review it." No duplication. Current "SIC Loop Complete" conversation block is replaced.

### How SV6 Differs from SV1

SV1 framed this as "what prompt to use." SV6 reveals it's a DIRECTED SYNTHESIS RECIPE with explicit source-to-section mapping, an anti-compression directive, and a coverage self-check. The prompt is a transformation specification from four input files to one output file, with quality controls built in.

---

## Key Insights

- **I1**: Content for Finding lives in three places (SV6, Assembly, The Answer) — critique's is most mature
- **I5**: The prompt is a synthesis instruction, not a summarization instruction
- **I7**: Directed per-file extraction prevents AI from being overwhelmed by SIC output volume
- **I10**: Must explicitly counter AI's compression tendency — define "non-compact" as writing for zero-context reader
- **I11**: finding.md replaces TERMINATE's conversation output — no duplication

## Ambiguity Resolutions
1. Per-file extraction vs generic "read all" → Per-file with specific targets. **HIGH**
2. "Non-compact" definition → Write for reader with zero prior context. **HIGH**
3. finding.md vs conversation output → finding.md replaces, conversation gets pointer only. **HIGH**

## Saturation Indicators
- **Perspectives**: 5/5. All produced new anchors.
- **Ambiguity**: 3/3 HIGH.
- **SV delta**: Significant — from "what prompt" to "directed synthesis recipe with source mapping + anti-compression + coverage check."
- **Anchor diversity**: C(6), I(11), SP(3), FP(3), MN(3). Multi-type, multi-perspective.
