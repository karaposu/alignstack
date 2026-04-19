# Innovation: Value Extraction Design

## User Input
devdocs/inquiries/value_extraction_design/sensemaking.md

---

## Seed

The finalization doc is an ARGUMENT, not an ARCHIVE. Three open questions from sensemaking: (1) what to name it, (2) how to structure the argumentative content, (3) how evolution/journey content fits alongside cross-folder relationships in `_state.md`. Innovation question: what naming, structure, and cross-folder design best serves a forward-looking, prompt-ready finalization artifact?

---

## Key Innovations

### 1. `finding.md` as the name (1b + 2a + 6a)

`finding.md` is the structural pair to `_branch.md`. Branch asks, finding answers. The name passes the cold-read test: someone seeing `finding.md` for the first time knows it contains "what was found." Not compressed (that's summary). Not vague (that's value). Not generic (that's outcome). A finding is COMPLETE — you report the finding, you don't compress it.

Legal decision structure (Domain Transfer): Ruling → Finding. Reasoning → Reasoning. Dissent → built into Reasoning as killed alternatives.

**Convergence: 3 mechanisms**

### 2. Four-section argumentative structure (4b + 6b)

No evolution section — source files in docarchive/ ARE the journey. Method is implicit — SIC is always the method.

```markdown
## Question
[From _branch.md — the original question]

## Finding
[The answer — complete, non-compact, self-contained]

## Reasoning
[Why this finding, not the alternatives. What was killed and why.]

## Open Questions
[What this inquiry raised but didn't answer]
```

**Convergence: 2 mechanisms**

### 3. Status header — living metadata (5c + 7a)

```markdown
---
status: active
---
```

Three states: `active | superseded | challenged`. Updated post-creation when a later inquiry invalidates. One-line edit. At 50 inquiries, this is the fast path to know which findings still hold.

**Convergence: 2 mechanisms**

### 4. `_state.md` cross-folder relationships (S carryover + 2b)

Three typed relationships: SUPERSEDED BY, CONTINUES FROM, RELATED. Local updates in `_state.md`. TERMINATE proposes relationships when writing `finding.md`. Human confirms.

### 5. Assumptions section (5b) — REFINE

```markdown
## Assumptions
[What must remain true for this finding to hold]
```

Valuable at scale — makes finding dependencies explicit. But adds a section TERMINATE must populate. Worth testing after 10 inquiries, not mandated now.

### 6. The resolved `_branch.md` identity (1b)

| `_branch.md` | `finding.md` |
|---|---|
| Question | Question (repeated for self-containment) |
| Goal | Finding (what was achieved) |
| Scope Check | Reasoning (scope of what was evaluated) |
| — | Open Questions (new branches) |

The finalization doc IS a resolved branch. The folder lifecycle:

```
Start:  _branch.md + _state.md
During: + sensemaking.md + innovation.md + critique.md  
After:  _branch.md + _state.md + finding.md + docarchive/
```

---

## Assembly

**The complete design from combined survivors:**

```markdown
---
status: active
---
# Finding: [Inquiry Name]

## Question
[From _branch.md — the original question]

## Finding
[The answer — complete, non-compact, self-contained.
 Readable without any other file or context.]

## Reasoning
[Why this finding, not the alternatives.
 What was killed and why. What survived and why.]

## Open Questions
[What this inquiry raised but didn't answer.
 Seeds for future inquiries.]
```

`finding.md` = resolved `_branch.md`. Branch asks, finding answers.

---

## Verdicts

### SURVIVE
- **`finding.md` as the name** — 3 mechanisms converge. Pairs with `_branch.md`. Cold-read clear.
- **Four-section structure** — Question, Finding, Reasoning, Open Questions. Argumentative. Forward-looking.
- **Status header** — `active | superseded | challenged`. Living doc. Minimal maintenance.
- **Cross-folder relationships in `_state.md`** — Three types. Local updates. Read at resume.
- **No evolution section** — Journey lives in docarchive/. Finding is result-only.

### REFINE
- **Assumptions section** — Valuable but may be premature. Test after 10 inquiries.
- **Semi-automatic relationship discovery** — Good idea, defer to manual initially.
- **Finding as convergence test** — Interesting but conflates gate with format.

### KILL
- **Folder IS the doc** — Reading 4 files ≠ 1 self-contained doc. Killed by self-containment.
- **Incremental accumulation** — Merge complexity. One-shot TERMINATE is simpler.
- **Changelog format** — Killed by non-compact requirement.
- **`_state.md` becomes finding** — Conflates tracking with output.

---

## Mechanism Coverage
* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — 3 → finding.md name. 2 → four-section structure. 2 → status metadata.
* **Survivors:** 5 SURVIVE + 3 REFINE / 4 killed
* **Assembly:** YES — complete design from combined survivors
* **Overall: PROCEED**
