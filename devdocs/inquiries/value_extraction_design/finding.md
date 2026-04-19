---
status: active
---
# Finding: Value Extraction Design

## Question
How should MVL's finalization output be named, structured, and connected across related inquiry folders — given that "summary" implies lossy compression (bad for prompt work), context spreads across multiple MVL runs, and one loop's findings can invalidate another's?

## Finding

The finalization output is called `finding.md` — the structural pair to `_branch.md`. A branch poses the question; a finding answers it. The name passes the cold-read test: someone encountering `finding.md` for the first time knows it contains "what was found." Unlike "summary" (which implies lossy compression) or "value" (which has three possible readings — monetary, data, or extracted worth), "finding" has exactly one interpretation.

The document is an ARGUMENT, not an ARCHIVE. Its purpose is to make the case for the extracted understanding — fully explained, non-compact, self-contained. A future session, different person, or different AI reads only this file and gets: what was asked, what was decided, why this over the alternatives.

**Structure — four sections:**

```markdown
---
status: active | superseded
---
# Finding: [Inquiry Name]

## Question
[The original question from _branch.md]

## Finding
[The answer — complete, non-compact, self-contained.
 Readable without any other file or context.]

## Reasoning
[Why this finding, not the alternatives.
 What was killed and why. What survived and why.
 This section IS the essential journey — the argumentative case.]

## Open Questions
[What this inquiry raised but didn't answer.
 Seeds for future inquiries.]
```

The first three sections map directly to the user's original request structure: original request → how the proposal solves it → why it was chosen among other options. The fourth section (Open Questions) adds forward links that connect one inquiry's end to the next inquiry's beginning.

**Status header** — two states only: `active` or `superseded`. Updated reactively when a later inquiry invalidates this finding. One-line edit. "Challenged" was considered and killed — it has no clear operational meaning.

**Cross-folder relationships** — `_state.md` gains a `## Relationships` section with three typed pointers:

```markdown
## Relationships
- SUPERSEDED BY: folder_name (reason — what changed)
- CONTINUES FROM: folder_name (context — what this builds on)
- RELATED: folder_name (connection — shares context but no directional dependency)
```

These are updated locally when relationships are discovered. Forward-only adoption — existing inquiry folders don't need retroactive updates. SUPERSEDED BY is the critical type that solves the invalidation problem: when one MVL loop produces a fact that disables another loop's findings, the disabled finding gets `status: superseded` and the disabling inquiry is recorded in `_state.md`.

**No evolution section.** The journey (how thinking evolved, every sense version, every mechanism application) lives in `docarchive/` as the raw SIC output files. The Reasoning section captures the essential journey — what alternatives existed and why they were killed. This keeps the finding argumentative and forward-looking rather than archival and backward-looking.

**Folder lifecycle:**

```
Start:  _branch.md + _state.md
During: + sensemaking.md + innovation.md + critique.md
After:  _branch.md + _state.md + finding.md + docarchive/
```

The folder tells its story through filenames alone: `_branch.md` is the question, `_state.md` is the metadata, `finding.md` is the answer, `docarchive/` is the preserved work.

## Reasoning

**`finding.md` over `value.md`:** The user proposed "value.md" because the concept IS value extraction — pulling the valuable output from a SIC discussion. That instinct is correct about the process, but the filename should describe the content, not the process. The content is a finding. "Value" has three possible readings on cold-read (monetary value, data value, extracted worth). "Finding" has one (what was found). In a system where files are read by different sessions, different AIs, and different people — unambiguous naming is a critical requirement, not a preference.

**`finding.md` over `summary.md`:** "Summary" implies lossy compression — a shortened version of something longer. In prompt engineering and AI methodology work, lossy compression is actively harmful. The finalization output is not a compressed version of the SIC discussion; it's the extracted result, explained fully. The name "summary" would signal the wrong reading behavior (skim) instead of the right one (study).

**Four sections over three:** The user's original structure (request → solution → why chosen) maps to Question → Finding → Reasoning. Open Questions was added as a fourth section because it connects the end of one inquiry to the beginning of the next — frontier seeds that may spawn future `_branch.md` files. It adds forward-linking at zero cost to the argumentative structure.

**No evolution section:** The prior inquiry (inquiry_finalization) designed an Evolution section for capturing the journey narrative. This was killed because: (1) Reasoning already captures the essential journey — what alternatives existed and why they lost, (2) the full journey is preserved in `docarchive/` as raw SIC output, and (3) an evolution section pushes the document toward archival purpose, conflicting with the argumentative purpose established by sensemaking.

**Two status states over three:** "Challenged" was proposed as a third status alongside "active" and "superseded." It was killed because there's no clear operational meaning — who resolves the challenge? how? when? Binary status (active/superseded) has clear semantics and clear triggers (a later inquiry explicitly invalidates this one).

**`_state.md` for relationships over new files or global index:** Cross-folder pointers go in `_state.md` because it's already the metadata file read at resume time. No new file types, no global index to maintain. Three relationship types (SUPERSEDED BY, CONTINUES FROM, RELATED) cover the observed patterns across the existing 19 inquiry folders. Forward-only adoption — old folders work fine without relationships.

## Open Questions
- Should MVL's TERMINATE step propose cross-folder relationship updates semi-automatically (by checking if the new finding contradicts known findings), or should relationship management always be manual?
- At 10+ finalized inquiries: does an Assumptions section become necessary to make finding dependencies explicit?
- How should the status update (`active` → `superseded`) and the `_state.md` SUPERSEDED BY update be coordinated — should they always happen together as an atomic operation?
