# Sensemaking: Value Extraction Design

## User Input
devdocs/inquiries/value_extraction_design/_branch.md

---

## SV6 — Stabilized Model

**The finalization output is an ARGUMENT, not an ARCHIVE.**

The doc's purpose is to make the case for the extracted finding — what was the question, what was found, why this answer over alternatives. It's designed to be READ as input for future work, not SKIMMED as a compressed record.

### The Doc Structure

```
# [Inquiry Name]

## Question
[The original question from _branch.md — what problem was this inquiry solving?]

## Finding
[The answer — fully explained, non-compact. 
 What was decided/understood/designed. 
 Self-contained: readable without any other file.]

## Reasoning
[Why this finding over the alternatives that were considered.
 What was killed and why. What survived and why.]

## Open Questions
[Frontier — what this inquiry raised but didn't answer.
 Seeds for future work.]
```

### Cross-Folder Relationships in `_state.md`

```markdown
## Relationships
- SUPERSEDED BY: elegant_alternative (adapters killed — configuration IS input)
- CONTINUES FROM: sic_as_wayfinder (spawned from wayfinding question)
- RELATED: universal_vs_configurable (same topic, different angle)
```

Three types. Text fields. Updated locally when relationships are discovered. Read at resume to understand context.

### How SV6 Differs from SV1

SV1 assumed this was primarily a naming problem ("summary" → "value"). SV6 reveals it's a structural problem: the finalization doc was designed as archival (recording what happened) but needs to be argumentative (making the case for the finding). The naming follows the structural shift — once you know it's an argument, the name should signal "this is what was found," not "this is a compressed version." Cross-folder relationships turned out to be a clean, minimal addition to `_state.md` rather than a separate mechanism.

---

## Key Insights

- **I1**: "Summary" implies lossy compression — the opposite of what prompt work needs
- **I2**: The finalization doc is an ARGUMENT (forward-looking input), not an ARCHIVE (backward-looking record)
- **I5**: The user's proposed structure is fundamentally argumentative — request → solution → why chosen
- **I6**: `_state.md` is the natural carrier for cross-folder pointers — already read at resume
- **I7**: The doc name shapes reading behavior — "summary" → skim, better name → study
- **I10**: Including the original request makes the doc MORE self-contained than the prior design

## Ambiguity Resolutions
1. Argumentative vs archival → Argumentative primary, evolution secondary. **HIGH**
2. Cross-folder pointers → `_state.md` with typed relationships. **HIGH**
3. Relationship types → Three: SUPERSEDED BY, CONTINUES FROM, RELATED. **MEDIUM** — may need expansion.
4. The doc name → Not "summary." Must pass cold-read test. Name TBD for innovation. **HIGH**

## Saturation Indicators
- **Perspectives**: 5/5. All produced new anchors. Technical (I6), Human (I7), Strategic (I8), Risk (I9), Definitional (I10).
- **Ambiguity**: 4/4 resolved. 3 HIGH, 1 MEDIUM (relationship types may need expansion).
- **SV delta**: Significant — shifted from naming problem to structural problem (archival → argumentative).
- **Anchor diversity**: C(5), I(10), SP(3), FP(3), MN(3). Multi-type, multi-perspective.
