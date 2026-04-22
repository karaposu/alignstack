---
status: active
---
# Finding: Finding Document Audit — Produce a Better Writing Guide

## TL;DR

**The finding.md template extends from 4 sections to 6** — adding a pre-Question **TL;DR** (1-3 sentences stating the specific answer) and a **Next Actions** section (MUST/COULD/DEFERRED with per-item gates, required when finding proposes changes). **Open Questions** gains 4 typed subsections (Monitoring / Blocked / Research Frontiers / Refinement Triggers). Three **style rules** (hedging specificity, cross-reference format, gate specificity) and a **three-layer enforcement model** (/MVL+ prompt + `enes/finding_style.md` + author self-check) operationalize the template. Corpus audit of 18 findings across 2 projects validated 6 of 7 hypothesized problems; the 4-section argumentative core (from `value_extraction_design`) is preserved; additions are **size-adaptive** (short findings ≤100 lines may skip optional sections).

---

## Question

**What common problems exist across finding.md documents produced by the extended SIC loop (E→S→D→I→C) — specifically around language ambiguity, missing summaries, and unclear next-action guidance — and what structural improvements to the finding.md template would systematically fix them?**

### Goal

(1) Corpus-grounded problem identification; (2) pattern extraction across working and failing findings; (3) concrete template refinements with per-section purpose/format/content rules; (4) next-action clarity protocol; (5) backward compatibility (no retroactive rewrite); (6) updated `/MVL+` spec.

---

## Finding

### 1. The 6-section template

```markdown
---
status: active
refines: devdocs/inquiries/X/finding.md         [if applicable]
---
# Finding: [inquiry name]

## Changes from Prior                           [optional; only when refining/superseding]

**What's preserved:** ...
**What's changed:** ...
**What's new:** ...
**Migration:** ...

## TL;DR

[1-3 sentences stating the specific answer. Not the inquiry scope. Bold key terms.
Must pass the Slack test.]

## Question

[From _branch.md — the question and goal]

## Finding

[The answer. Complete, self-contained, non-compact. Subsections allowed
(numbered or named) when length >100 lines.]

## Next Actions                                  [required when finding proposes changes]

### MUST
[Items required for the finding to be realized. Each with what/who/gate.]

### COULD
[Items worth considering but not required. Same format.]

### DEFERRED
[Items deliberately deferred, with trigger specifying revival.]

## Reasoning

[Why this finding over alternatives. KILLs with reasoning. SURVIVEs
with why they held. Contradictions reconciled.]

## Open Questions

### Monitoring
[Observable after N inquiries / when Y completes.]

### Blocked
[Cannot be answered until X ships / Y happens.]

### Research Frontiers
[No known path; requires new investigation.]

### Refinement Triggers
[Specific conditions under which a locked decision re-opens.]
```

**Size-adaptive:** short findings (≤100 lines) may skip optional sections (Changes from Prior; Next Actions if not proposing changes; Open Questions subsections may flat-list when only one category applies). Long findings must include the applicable sections.

### 2. The three style rules

**Rule 1 — Hedging specificity**
Hedges must name WHAT is uncertain AND WHY.
- Acceptable: *"MEDIUM confidence — depends on empirical signal-independence test (P12)"*
- Unacceptable: *"mostly sound with caveats"* (no named condition)
- Failure detection: if a sentence contains a hedge and the reader can't identify the specific uncertainty, the hedge fails.

**Rule 2 — Cross-reference format**
Full path on first reference; bare name thereafter; relationship type when applicable.
- First reference: `devdocs/inquiries/thinking_space_primitives/finding.md`
- Subsequent: `thinking_space_primitives`
- With relationship: `REFINES: thinking_space_primitives (what specifically is load-bearing)`
- Frontmatter: use full path in `refines:` / `supersedes:` / `impacted_by:` fields.

**Rule 3 — Gate specificity**
Gates, triggers, deferred conditions must be time-bound OR condition-bound OR observable.
- Acceptable: *"after 30 inquiries accumulate,"* *"when /intuit Phase β ships,"* *"if calibration N ≥ 30"*
- Unacceptable: *"eventually,"* *"when appropriate,"* *"as needed"*
- Failure detection: if a reader can't tell whether the gate has fired, the gate is not specific enough.

### 3. The reader-extraction contract (framing principle)

The template's purpose is not "prescribe what authors include" — it is **"ensure what readers extract in specific time budgets."** Concretely:

- **30-second extraction:** reader should get the specific answer from TL;DR alone
- **60-second extraction:** reader should know the next-actions from Next Actions section alone (if present)
- **5-minute extraction:** reader should grasp the complete argument from the full finding

Template compliance passes or fails against these reader-extraction expectations. The Slack test ("if I posted only the TL;DR to Slack to a peer in this project with minimal inquiry-specific context, would it make sense?") operationalizes the 30-second check.

### 4. The three-layer enforcement model

| Layer | Location | Role |
|---|---|---|
| **1. Production** | `/MVL+` ITERATION COMPLETE section in `commands/MVL+.md` | Finding-production prompt generates 6-section structure; instructs TL;DR-first authorship |
| **2. Style reference** | `enes/finding_style.md` (new file) | 3 style rules + self-check rubric + principles (e.g., index-readiness) |
| **3. Self-check** | Author verification before finalizing | ≤10 binary items; mixes structure-compliance + read-side extraction tests |

Minimalism discipline within each layer: `/MVL+` prompt additions ≤6 directive lines; style rules = 3 rules + 1 rubric page; self-check ≤10 binary items. Bloat within any layer triggers prune.

### 5. Key craft principles

- **TL;DR-first authorship.** Write the TL;DR BEFORE the Finding body. The TL;DR becomes a commitment the Finding elaborates. If the Finding body reveals the TL;DR needs revision, revise it — but the starting discipline is commitment-first, not summary-after.
- **Index-readiness principle.** TL;DRs should be scannable and use canonical corpus terminology, so if a corpus-wide index is assembled, each TL;DR works as a standalone entry. Design-driver, not enforcement gate.
- **Changes-from-Prior for refinement findings.** When a finding refines/supersedes/corrects a prior, an optional pre-TL;DR block documents What's Preserved / What's Changed / What's New / Migration. Replaces the organic pre-Question-bold-paragraph pattern observed in the chatforge corpus.
- **Type-specific gate examples.** Next Actions items use common patterns (process change / spec change / monitoring / deferred / investigation), not an enumerative taxonomy. Off-pattern actions invent new gate forms.

### 6. Backward compatibility

Existing 18 findings remain valid under the old template. No retroactive rewrite required. New findings use the new template. Over time, authors may opt-in to TL;DR + Next Actions additions for their own old findings if useful.

### 7. Canonical locations

- **Template specification:** `commands/MVL+.md` (ITERATION COMPLETE section — the production-side source of truth)
- **Style rules + self-check rubric:** `enes/finding_style.md` (NEW — charter-compliant addition to `enes/`)
- **`enes/` charter update:** `enes/discipline_taxonomy.md` charter list adds `finding_style.md` with one-line description

### 8. Example finding demonstration

`devdocs/inquiries/post_completion_navigation/finding.md` serves as the demonstration base — medium-length (58 lines), clear next-actions currently scattered in Finding prose, close to the new template structure. A demonstration will show TL;DR added, Next Actions extracted from prose into typed subsections, Open Questions categorized (3 items become Monitoring / Refinement Trigger / Research Frontier).

### 9. Honest limits

- **What the MVP CAN do:** produce readable findings where answer extracts in 30s, next-actions extract in 60s, lineage is explicit for refinements, specificity rules filter lazy hedging/gates
- **What the MVP CANNOT do:** force authors to genuinely engage with rules (rubber-stamp risk persists); guarantee Slack-test consistency across all authors (interpretation variance); automatically detect violations (no lint tooling in MVP)
- **What requires work we don't have:** automated linting (deferred); corpus-wide TL;DR index (deferred); LLM-primary reader adaptations (deferred as premature)

---

## Next Actions

### MUST

- **What:** Create `enes/finding_style.md` with the 3 style rules + self-check rubric (binary items) + index-readiness principle
  **Who:** user or next session writing
  **Gate:** before the new template is claimed as "in effect" for new findings

- **What:** Rewrite `/MVL+` ITERATION COMPLETE YES-branch to produce the 6-section template with TL;DR-first directive + reference to `enes/finding_style.md`
  **Who:** edit `commands/MVL+.md`
  **Gate:** ships together with `enes/finding_style.md`

- **What:** Update `enes/discipline_taxonomy.md` charter list to include `finding_style.md`
  **Who:** edit `enes/discipline_taxonomy.md`
  **Gate:** ships with `enes/finding_style.md` creation

### COULD

- **What:** Produce an example finding demonstrating the new template, using `devdocs/inquiries/post_completion_navigation/finding.md` as the base
  **Who:** next session writing
  **Gate:** useful when onboarding users to the new template; not required for template to ship

- **What:** Opt-in retroactive update of selected existing findings to use the new template (e.g., add TL;DRs to the 2-3 longest findings for corpus-scanning benefit)
  **Who:** author judgment per finding
  **Gate:** only when an author is already editing an old finding for other reasons

### DEFERRED

- **What:** Automated linting (validation script for 6-section structure / binary self-check / style-rule compliance)
  **Gate:** if manual self-check proves insufficient after ~10 new-template findings show rubber-stamp pattern

- **What:** Corpus-wide TL;DR index (concrete artifact that the index-readiness principle currently references aspirationally)
  **Gate:** if corpus grows beyond ~30 findings AND cross-finding discovery becomes a bottleneck

- **What:** Process-lessons section per finding (meta-learning about the loop itself)
  **Gate:** if `devdocs/improvement_observations.md` proves insufficient for capturing process insights

- **What:** LLM-primary reader design (structured fields, machine-parseable markers beyond current frontmatter)
  **Gate:** when LLMs emerge as primary consumers of findings at significant scale

---

## Reasoning

### Why the conservatism bar is WEAKER here than in prior audits

The prior `thinking_disciplines_audit` applied strict conservation — HUGE OBVIOUS BENEFIT was the bar. This audit's conservatism bar is weaker because:

1. **User named specific problems explicitly** — "ambiguity of the language, lack of summary section, and ambiguity of proposed next actions." Specific complaints vs the discipline audit's "is there anything to change?"
2. **Corpus validated the complaints** — 6/7 hypotheses confirmed against 18 findings. Not stylistic preference; systematic gaps.
3. **Adjacent genres (RFCs, ADRs, release notes, git commits) universally lead with summary** — the current template is the outlier, not the norm.

The change is therefore not "reorganize if huge benefit" but "extend template where corpus evidence + reader-want + adjacent-genre convention converge." Three-way convergence is stronger than any single argument.

### Why the 4-section core is preserved

The original template (from `value_extraction_design`) established: Question → Finding → Reasoning → Open Questions. Each serves a distinct role; together they form the argumentative structure. The audit found NO structural flaw in this 4-section core; the problem is what surrounds and navigates it (TL;DR before; Next Actions between Finding and Reasoning; typed Open Questions). Refinement is ADDITIVE — the core stays; new sections extend.

### Why TL;DR goes BEFORE Question (not inside Finding as a subsection)

Two organic workaround patterns exist in the corpus: chatforge findings (3/4) use pre-Question bold paragraphs; VDD long findings (2/14) use `### 1. The short answer` as first subsection of Finding.

Pre-Question placement is canonical because:
- **Adjacent-genre convention** — RFCs, academic papers, ADRs, press releases, git commits all lead with summary BEFORE context
- **Reader-on-open** — the reader sees TL;DR immediately, not after locating Finding
- **Size-independence** — works for short and long findings equally (subsection-within-Finding only works for long findings with subsection structure)

The chatforge organic pattern is the evidence that authors WANT this placement. The audit formalizes what authors were already doing ad-hoc.

### Why Next Actions is required only when finding proposes changes

Prosecution considered making Next Actions mandatory. Rejected because some findings are pure analysis / definition / conservation verdicts where forcing "next actions" produces ceremonial items ("continue building the system"). Content-driven requirement prevents ceremony.

Prosecution also considered making it fully optional. Rejected because optional sections get silently skipped — the current problem. Content-driven requirement (when finding proposes changes, MUST include; otherwise optional) resolves both failure modes.

### Why descriptive, not prescriptive, admission criteria (for the Slack test specifically)

The Slack test is a SELF-CHECK, not an admission gate. It operationalizes "the TL;DR makes sense standalone" by forcing the author to simulate external reception. Critique's prosecution identified interpretation variance ("which colleague?"); defense narrowed the interpretation ("peer in this project with minimal inquiry-specific context"). Even with variance, the test filters gross failures (referential-only TL;DRs that describe the inquiry's topic without naming the answer).

### Why the index test was refined to the index-readiness principle

Prosecution in critique: the "index test" references an imaginary corpus-wide index. Authors can't validate against it. The test as stated is aspirational.

Defense: even aspirational, it biases wording toward scannability and canonical terminology.

Resolution: demote the test to a PRINCIPLE in the style doc. Principles don't require enforcement; they set the vibe. Keeps the design-driver value; removes the bogus test.

### Why three-layer enforcement with minimalism discipline

Prosecution: three layers × multiple checks = bureaucracy; authors rubber-stamp everything.

Defense: no single enforcement layer is reliable alone; three layers with minimalism caps provide degraded-but-robust coverage.

Resolution: minimalism within each layer (prompt ≤6 lines; style doc = 3 rules + 1 page rubric; self-check ≤10 binary items). Kill criterion on self-check: if rubber-stamp pattern emerges consistently, retire and fall back to prompt-only enforcement.

### Why TL;DR-first authorship with revision allowance

Prosecution: commitment-before-knowing produces wrong TL;DRs; authors drift silently.

Defense: the commitment is a STARTING DRAFT. Revision after writing the body is allowed; what's enforced is the STARTING DISCIPLINE — write TL;DR first, then elaborate. Final TL;DR must still pass Slack test.

This prevents the "buried answer" failure mode. If the answer is unclear at the start, the author has to clarify it THEN; they can't defer to "the reader will figure it out from the prose."

### Why size-adaptive at ~100 lines

Short findings (<100 lines) don't exhibit the problems that motivate the new template. Adding ceremony to short findings is burden without benefit. The ~100-line threshold is pragmatic, not structural — authors apply judgment. Findings that are 150+ lines without at least a TL;DR are smells; findings under 80 lines with a TL;DR are fine but not required.

### Why `enes/finding_style.md` as the canonical style location

Prosecution: adding another file to `enes/` expands the folder's charter.

Defense: the `enes/` charter ("curated stable-view files for architectural concepts — one file per concept") holds. Finding-document style IS an architectural concept. Alternative locations (inside `commands/MVL+.md`, or distributed across command specs) mix production with style OR create drift.

Resolution: `enes/finding_style.md` fits. Charter updated in `enes/discipline_taxonomy.md`'s charter list with one-line description.

### Killed candidates with seeds preserved

- **Hedges forbidden / binary-claim-with-percentage** (3c) — killed as too extreme; necessary hedges prevent overclaim. Seed: hedging specificity rule requires named uncertainty, which addresses the real concern (lazy hedging) without removing honest hedges.
- **Drop self-contained finding constraint** (4c) — killed; contradicts sensemaking LOCK from `value_extraction_design`. Seed: cross-references can carry SOME load (relationship annotations, pointers) but findings still stand alone for first-time readers.
- **LLM-primary reader design** (7c) — killed as premature. Seed: structured frontmatter already present; revisit when LLM-primary use case emerges.
- **Court rulings as lead transfer** (6c pure) — killed; wholesale adoption breaks backward-compat. Seed: release-notes transfer (6b) captures the useful subset (What's New / What Changed / Migration).
- **Academic paper as lead transfer** (6a) — demoted; accurate background, not novelty.
- **Automated linting** (2c) — deferred not killed; valuable but premature; revisit if rubber-stamp pattern emerges in self-check.
- **Corpus-level process-lessons section** (5a) — deferred; `devdocs/improvement_observations.md` handles meta-learning at the loop level, not the finding level.
- **Index test as self-check gate** — refined to principle; preserved value without bogus artifact.

### Reconciliation with prior meta-findings

Two prior findings defined the current template: `value_extraction_design` (4-section structure) and `finding_production_prompt` (the prompt that generates findings). This audit is iteration 2 on their work — ADDITIVE, not replacement. The `/MVL+` prompt rewrite (P4) updates `finding_production_prompt`'s prescribed prompt; the template addition (P1) extends `value_extraction_design`'s 4-section core. Both predecessors' load-bearing claims (argumentative-not-archival, reader-persona-prevents-compression, four-section-core) are preserved. What's added is scale-handling (TL;DR for fast extraction, Next Actions for actionability, typed Open Questions for navigation) plus style discipline (hedging, cross-references, gates).

---

## Open Questions

### Monitoring

- **Does the Slack test produce good TL;DRs in practice, or does author interpretation variance still produce poor TL;DRs?** Observable after ~5 findings use the new template.
- **Does TL;DR-first authorship feel natural, or does it become a ritual that authors dodge (write placeholder first, then write real TL;DR last)?** Observable after ~10 findings.
- **Do read-side extraction tests in self-check actually catch defects, or get rubber-stamped?** Observable after ~20 findings.
- **How often do authors use the Changes from Prior block?** Observable across refinement findings over time.
- **Does the optional reader-navigation metadata get used for long findings?** 20-finding adoption kill criterion (retire if unused).

### Blocked

(No currently-blocked items — all MUST actions are self-contained text edits.)

### Research Frontiers

- **Adjacent-genre patterns we may have missed** — the audit surveyed RFCs, ADRs, academic papers, release notes, git commits. Other genres (e.g., medical case reports, legal briefs, patent applications) might have structural patterns worth importing.
- **LLM-primary reader mode** — if LLMs become the dominant consumer of findings, what design shifts? Currently deferred as premature; worth monitoring as LLM capabilities scale.
- **Corpus-wide scannability artifacts** — what would an actual corpus-wide TL;DR index look like? Could it be auto-generated from findings? Currently aspirational principle.

### Refinement Triggers

- **If rubber-stamp pattern emerges in self-check (checks consistently pass everything without catching defects):** retire the self-check layer; fall back to /MVL+ prompt-only enforcement. Observable after ~10 findings where self-check items are consistently all-pass without corresponding quality improvements.
- **If optional reader-navigation metadata has 0 adoption for 20+ long findings:** retire the optional section from the template.
- **If any enforcement layer bloats beyond its minimalism cap:** prune back (/MVL+ prompt > 6 new directive lines; self-check > 10 items; style doc > 1 page rubric).
- **If the Slack test's colleague interpretation produces consistent misfires:** either sharpen the interpretation spec or retire the Slack test in favor of pure structural checks.
- **If the 100-line size-adaptive threshold proves wrong (short findings suffer without structure OR long findings skip structure):** re-examine the threshold with fresh corpus evidence.
- **If the TL;DR-first authorship with revision allowance is abused (authors write placeholders and defer the real TL;DR to after the finding):** enforce stricter starting discipline OR shift to system-level TL;DR generation from critique output.
