# Innovation: Finding Document Audit

## User Input
devdocs/inquiries/finding_document_audit/

---

## Seed

Write the propagation work at quality-bar level. Sensemaking and decomposition LOCKED the 6-section template, 3 style rules, 4 Open Questions categories, size-adaptive threshold, 3-layer enforcement, canonical location (`enes/finding_style.md`). What remains is CRAFT: how to make TL;DR content unambiguous in practice; how to format Next Actions items concretely; how the `/MVL+` prompt lands without bloat; which example finding best demonstrates the template; how the self-check rubric stays binary. Biggest failure risk: the template ships but authors write vague TL;DRs / ungated Next Actions anyway — template is necessary but not sufficient without craft rules.

---

## Mechanism Applications (7 × 3 = 21 candidates)

### 1. Lens Shifting (Framer)

**1a (generic):** View the template as INSTRUCTIONS FOR WRITERS. Standard documentation framing.

**1b (focused):** **Treat the template as A TEST the document must pass.** A finding passes when: (a) a reader can extract the answer from TL;DR in ≤30 seconds, (b) actionable items are findable without reading prose, (c) cross-references navigate cleanly. The template describes the passing state; writers produce documents that pass the test. Not "include these sections"; "produce a document that satisfies these reader-extraction properties."

**1c (contrarian):** View the template as A CONTRACT with the reader. Reader expects TL;DR to name the specific answer; if it doesn't, the contract is breached. Breach is a defect comparable to a bug. This frames author compliance as owed obligation, not stylistic preference.

### 2. Combination (Generator)

**2a (generic):** Template + style rules + self-check = unified "finding-writing guide." Standard.

**2b (focused):** **Combine TL;DR with Popperian-hypothesis framing from prior work.** TL;DR states a testable claim, not just a summary. Format: `[claim]. [specific answer mechanism]. [who is affected / what acts on it].` The TL;DR is effectively the finding's Popperian hypothesis statement. Integrates with the discipline's prior Popperian commitments (from `intuition_as_discipline`).

**2c (contrarian):** Combine template with AUTOMATED LINTING. Lightweight script that checks for TL;DR section presence, MUST/COULD/DEFERRED subsections when Next Actions present, typed Open Questions categories, cross-reference format. Validation shifts from author self-check to mechanical check.

### 3. Inversion (Framer)

**3a (generic):** Instead of prescribing what writers INCLUDE, prescribe what readers EXTRACT. Read-side rubric: "a reader should get the answer in 30s, next actions in 60s, full context in 5min." Template sections follow from reader-extraction requirements.

**3b (focused):** **Instead of TL;DR written LAST (as a summary after the finding), write TL;DR FIRST.** Author commits to the headline before elaborating; the finding's body elaborates the TL;DR. This prevents "buried answer" failure — if the TL;DR is the starting commitment, it can't get lost in prose later. TL;DR-first is a craft discipline, not a section-ordering rule.

*Depth check (invert again):* at a system level — instead of authors writing TL;DRs at all, the `/MVL+` prompt generates the TL;DR programmatically from the critique's "The Answer" block. Remove authorial TL;DR drift. Component-level vs system-level: system-level relieves the author of TL;DR craft entirely. Worth considering but sensemaking locked "author self-check" as one enforcement layer — programmatic generation is complementary, not replacement.

**3c (contrarian):** **Invert "hedges must name specific uncertainty" → "hedges are forbidden; claims carry reliability percentages."** Replace "MEDIUM confidence — depends on X test" with "confidence: 0.6; test: X". Remove linguistic hedging entirely; use numeric reliability. Aggressive but eliminates lazy-author hedging by removing the option.

### 4. Constraint Manipulation (Framer)

**4a (generic):** Add constraint — every finding must have a TL;DR. Already in plan.

**4b (focused):** **Add constraint: TL;DR must pass the "Slack test."** If you posted ONLY the TL;DR to Slack (no other context, no link), would it make sense to a colleague? If it requires reading the finding to make sense, it fails. This forces the TL;DR to be self-contained at the sentence level — not just short, but understandable standalone.

**4c (contrarian):** **Remove the constraint "finding is self-contained."** Acknowledge that findings exist in a corpus with accumulated shared understanding. Require cross-references to carry load rather than inlining all prerequisites. A finding can say "refines X's Y claim" without re-explaining X's Y claim. Reduces length; increases corpus-navigation dependency.

### 5. Absence Recognition (Generator)

**5a (generic):** The template has no section for **process lessons from running this SIC loop** — each finding reveals something about the loop itself (the loop took 2 iterations; innovation's mechanisms #N was load-bearing; etc.). Meta-lessons are silently dropped.

**5b (focused):** **No reader-navigation metadata header** — no "who is this for" / "estimated read time" / "prerequisite findings." The reader opens the finding and has to infer context. Missing: an optional header block for reader orientation.

**5c (contrarian):** **No changelog within multi-iteration findings.** When a finding goes through multiple iterations (e.g., chatforge's self_focus_dynamics is iteration-3.1 of a theory), the document provides no in-document tracking of what changed from prior iterations. Readers reconstruct lineage from frontmatter alone.

### 6. Domain Transfer (Generator)

**6a (generic):** Transfer from academic papers — abstract, introduction, methods, etc. Standard.

**6b (focused):** Transfer from **SOFTWARE RELEASE NOTES**. Release notes have: "What's New" / "Breaking Changes" / "Deprecations" / "Migration Guide" / "Known Issues." Findings that refine or correct prior findings resemble software releases — import this structure. A finding's impact on prior findings is EXACTLY a release-notes concern. Proposed addition: **optional "Changes from Prior" metadata block** at top when finding has `refined_by` / `supersedes` / `corrects` relationships.

**6c (contrarian):** Transfer from **COURT RULINGS**. Court opinions have: Holding (the answer) / Rule of Law (the principle) / Reasoning (why) / Concurrences (refinements) / Dissent (rejected alternatives). Findings map cleanly: Holding=TL;DR, Rule=Finding, Reasoning=Reasoning, Dissent=Reasoning's rejected list. Court opinions also have formal citation format and precedential weight. Import citation conventions + precedent-tracking.

### 7. Extrapolation (Generator)

**7a (generic):** Corpus will grow; findings will reference each other more densely. Standard forward-projection.

**7b (focused):** **If findings accumulate to 100+, TL;DRs become a corpus-level index.** Reader scans TL;DRs across all findings to understand the system without reading full docs. Design TL;DR for CORPUS-LEVEL READABILITY — each TL;DR a standalone entry in an imaginary system-wide index. This extends the "Slack test" (4b) to "index test."

**7c (contrarian):** As LLMs improve, they'll be the primary reader. Design for **LLM-extractability**: structured fields, YAML metadata, machine-readable markers. A finding's TL;DR becomes a structured claim; Next Actions become machine-parseable items; Open Questions have typed metadata. Readable by human and machine alike.

---

## Convergence Analysis

Four independent convergences:

**Convergence 1: READ-side design (not write-side)**
Mechanisms: 1b (test the doc must pass), 1c (contract with reader), 3a (what reader extracts), 4b (Slack test), 5b (reader-navigation metadata), 7b (corpus-level index)
→ Design the template around what READERS need to extract in specific time budgets, not what authors are required to include. Passes/fails by reader-extraction tests, not by author compliance checklist.

**Convergence 2: TL;DR-first authorship (not TL;DR-last summary)**
Mechanisms: 3b (write TL;DR first), 4b (Slack-test standalone), 6b (release-notes headline-first), 6c (court ruling Holding first)
→ Writing TL;DR BEFORE the finding body is a craft discipline that prevents "buried answer" failure. The TL;DR becomes a commitment the finding elaborates, not a summary derived after.

**Convergence 3: Corpus-level thinking**
Mechanisms: 5b (reader-navigation metadata), 7a (corpus grows), 7b (TL;DR as corpus index), 6b (release-notes across corpus)
→ Findings aren't individual documents — they're entries in an accumulating corpus. Design TL;DRs for corpus-level scanning; design cross-references for corpus navigation.

**Convergence 4: Release-notes-style lineage for multi-version findings**
Mechanisms: 5c (changelog within iterations), 6b (release-notes structure), 6c (court ruling with concurrences)
→ When findings REFINE or CORRECT prior findings, readers benefit from explicit "Changes from Prior" metadata. The chatforge pattern (iteration-3.1 pre-Question paragraph) was the organic workaround; release-notes-style structure is the canonical form.

---

## Key Innovations

### 1. "Slack test" for TL;DR validity (Convergence 1, 4b) — REFINEMENT for P1 TL;DR content rule

Operational test: "If I posted only the TL;DR to Slack (no link, no context), would a colleague understand the answer?" If yes → valid TL;DR. If no → TL;DR is referential-only (describes the inquiry topic), not substantive.

Examples applied to corpus:

- **INVALID** (refers-only): "This audit examined primitive completeness." [Reader has no idea what was found.]
- **VALID** (substantive): "The current 4-primitive model is internally contradictory and incomplete. The correction is a typed 11-primitive set admitted via a four-criterion primitivity test." [Reader extracts the claim and the correction.]

The Slack test is a concrete self-check item; embeds in P3 self-check rubric.

### 2. TL;DR-first authorship craft discipline (Convergence 2, 3b) — REFINEMENT for P4 /MVL+ prompt

The `/MVL+` prompt instructs the author to **write the TL;DR BEFORE the Finding body**. The TL;DR becomes a commitment that elaborating prose must satisfy. Prevents the "buried answer" failure mode — if the TL;DR is the first thing written, the finding is structured around it.

Prompt directive:
> "Before writing the Finding section, write the TL;DR. State the specific answer in 1-3 sentences. Then elaborate in Finding. The TL;DR is the commitment; the Finding expands it."

### 3. Read-side extraction tests (Convergence 1) — NEW enforcement layer in P3 self-check

Self-check rubric includes read-side tests, not just structure-compliance checks:

- [ ] **30-second answer extraction:** a new reader opens the finding; can they name the answer after reading only the TL;DR?
- [ ] **60-second next-actions extraction:** can they list what must happen next after reading only Next Actions?
- [ ] **Slack test:** TL;DR makes sense posted alone without context
- [ ] **Index test:** TL;DR reads as a valid entry in an imaginary corpus-wide index (corpus-level readability)

These complement the structure-compliance items (TL;DR is 1-3 sentences; Next Actions has MUST/COULD/DEFERRED; etc.).

### 4. Next Actions per-item format with type-specific gate examples (decomposition follow-through)

Next Actions items use the standard what/who/gate format, with type-specific gate examples to prevent vague gates:

**Process change actions:**
```
- What: Update /MVL+ prompt to include TL;DR directive
  Who: edit commands/MVL+.md
  Gate: ships with the 6-section template deployment
```

**Spec change actions:**
```
- What: Rewrite section 7 to reflect refined architecture
  Who: edit devdocs/inquiries/X/finding.md
  Gate: before finding marked active
```

**Monitoring actions:**
```
- What: Track how often authors write INVALID TL;DRs
  Who: review during post-inquiry Observation step
  Gate: after 10 findings using new template
```

**Deferred actions:**
```
- What: Add automated lint checker
  Who: TBD
  Gate: if manual self-check proves insufficient after N findings
```

Each type has its own natural gate form (ship-dependency / file-edit / count-threshold / escape-valve). Template provides examples so authors don't have to invent gate forms from scratch.

### 5. Release-notes-style "Changes from Prior" metadata (Convergence 4, 6b) — NEW optional block for refinement findings

When a finding refines/corrects/supersedes a prior finding, an optional pre-TL;DR metadata block documents the changes:

```markdown
---
status: active
refines: devdocs/inquiries/X/finding.md
---
# Finding: [name]

## Changes from Prior           [optional; when refining/superseding/correcting]

**What's preserved:** [from prior finding]
**What's changed:** [the specific refinement]
**What's new:** [material not in prior]
**Migration:** [how existing uses of the prior finding adapt]

## TL;DR
[as before]
```

This is the canonical form for the chatforge pattern (iteration-3.1 pre-Question paragraph). Structured metadata; readable in isolation.

Applies to findings that have `refines:`, `supersedes:`, `corrects:`, or `refined_by:` relationships. Skipped when finding is a first-of-its-kind.

### 6. Corpus-level index framing (Convergence 3) — PRINCIPLE for P1 TL;DR content rule

TL;DRs are designed not just as per-finding summaries but as **entries in an imaginary corpus-wide index**. A reader scanning all TL;DRs in `devdocs/inquiries/*/finding.md` gets a system overview. This constrains TL;DR writing:

- Must stand alone (4b Slack test)
- Must be scannable (not a paragraph; 1-3 sentences)
- Must use canonical terminology (so cross-TL;DR scanning finds related findings)

Reinforces existing TL;DR rules; adds corpus-scanning as a design driver.

### 7. Optional reader-navigation metadata (5b) — OPTIONAL addition

For findings that are long or have complex prerequisites, an optional header block aids navigation:

```markdown
## For the reader

- **Audience:** [discipline authors / spec maintainers / general]
- **Estimated read time:** [TL;DR only: 30s | + Next Actions: 2min | full: 15min]
- **Prerequisite findings:** [if any are load-bearing]
- **Related findings:** [non-blocking context]
```

Optional because short findings don't need it. When included, provides orientation without requiring the reader to reconstruct context.

### 8. Example finding choice: use `post_completion_navigation` (P5 decision)

Decomposition flagged `post_completion_navigation` as the best demonstration base. Confirmed by innovation: it's medium-length (58 lines), has clear next-actions already scattered in Finding, and the transformation to new template is clean. The example will show:

- **TL;DR added** (extracted from Finding section's opening)
- **Next Actions section extracted** from the scattered prose ("The pointer is added to TERMINATE's flow..." etc.) into MUST/COULD/DEFERRED subsections
- **Open Questions typed** (currently flat 3 items; categorize into Monitoring / Refinement Trigger / Research Frontier)
- **Minimal disruption** — original Finding/Reasoning preserved

---

## Assembly

```
REFINED MVP (convergence-assembled):

TEMPLATE SPECIFICATION (P1):
  - 6 sections: TL;DR / Question / Finding / Next Actions / Reasoning / Open Questions
  - TL;DR passes "Slack test" (standalone readable) AND "index test" (corpus-level scannable)
  - TL;DR written FIRST by author (craft discipline enforced via /MVL+ prompt)
  - Next Actions items use what/who/gate format with type-specific gate examples
  - Open Questions typed into 4 categories (flat lists forbidden)
  - Optional reader-navigation metadata for long findings
  - Optional "Changes from Prior" block for refining/superseding findings
    (replaces chatforge organic pre-Question-paragraph pattern)

STYLE RULES (P2, 3 rules):
  - Hedging specificity (name what's uncertain)
  - Cross-reference format (full path first; bare name thereafter)
  - Gate specificity (time-bound OR condition-bound OR observable)

SELF-CHECK RUBRIC (P3):
  Structure-compliance items:
  - [ ] TL;DR 1-3 sentences, specific answer
  - [ ] Next Actions has MUST/COULD/DEFERRED (if proposing changes)
  - [ ] Open Questions typed
  - [ ] Cross-references canonical
  - [ ] Hedges specific
  - [ ] Gates specific

  Read-side extraction tests:
  - [ ] 30-second answer extraction (from TL;DR alone)
  - [ ] 60-second next-actions extraction (from Next Actions alone)
  - [ ] Slack test (TL;DR standalone)
  - [ ] Index test (TL;DR as corpus-level entry)

/MVL+ PROMPT (P4):
  - Directive: write TL;DR BEFORE Finding body
  - Produces 6-section structure in correct order
  - References style rules doc and self-check rubric
  - Preserves existing coverage self-check (every KILL in Reasoning; every SURVIVE in Finding)
  - Size-adaptive guidance (skip optional sections for short findings)
  - Optional Changes-from-Prior block triggered by refines/supersedes relationships

EXAMPLE FINDING (P5):
  - Base: post_completion_navigation
  - Demonstrates: TL;DR added, Next Actions extracted and typed, Open Questions categorized
  - Minimal disruption to existing Finding/Reasoning

LOCATION + ENES/ CHARTER (P6):
  - enes/finding_style.md (3 style rules + self-check rubric)
  - commands/MVL+.md (6-section template + production prompt)
  - enes/discipline_taxonomy.md's charter list adds finding_style.md
```

**Emergent value:** the template refinement stops being a STRUCTURE PRESCRIPTION and becomes a READER-EXTRACTION CONTRACT. Every rule traces to "what does the reader need to extract, how fast, from which section?" — and the self-check rubric tests both structure-compliance AND read-side extraction. The Slack test + index test + TL;DR-first-authorship collectively prevent "buried answer" failures more reliably than structure checks alone.

---

## Verdicts

### SURVIVE (MVP)

- **Slack test for TL;DR validity** (Convergence 1, 4b) — P1 refinement; concrete operational test
- **TL;DR-first authorship craft** (Convergence 2, 3b) — P4 /MVL+ prompt directive
- **Read-side extraction tests in self-check** (Convergence 1) — P3 rubric extension
- **Type-specific gate examples in Next Actions** (P1 refinement) — prevents vague gates by type
- **Release-notes "Changes from Prior" block** (Convergence 4, 6b) — P1 optional addition for refinement findings
- **Corpus-level index framing for TL;DR** (Convergence 3) — principle in P1 TL;DR rule
- **Optional reader-navigation metadata** (5b) — P1 optional addition for long findings
- **Example base: post_completion_navigation** (P5 decision) — confirmed
- **Standard 3-layer enforcement with read-side tests** (P3+P4 refinement) — structure + extraction together

### REFINE (deferred)

- **Automated linting** (2c) — valuable but premature; self-check + /MVL+ prompt are MVP; revisit if self-check proves insufficient after N findings
- **Process lessons section** (5a) — valuable meta-learning but adds template complexity; tracked in `devdocs/improvement_observations.md` instead
- **Changelog within multi-iteration findings** (5c) — partially subsumed by Changes-from-Prior block; standalone changelog deferred
- **System-level TL;DR generation (3b depth-check)** — programmatic TL;DR from critique output; complementary to author TL;DR; defer until author-written quality proves insufficient

### KILL

- **Hedges forbidden; binary-claim-with-percentage** (3c) — too extreme. Some hedges are structurally necessary (honest uncertainty); removing linguistic hedging entirely produces false confidence or awkward numeric claims. Seed preserved: hedging specificity rule already requires named uncertainty.
- **Drop self-contained finding constraint** (4c) — contradicts sensemaking LOCK (core argumentative structure from value_extraction_design). Cross-references carry SOME load but findings still must stand on their own for a first-time reader.
- **LLM-primary reader design** (7c) — premature. Current bar is human readers. Designing for LLM-extractability now distorts decisions toward machine-parseable structures (YAML everywhere) that harm human readability. Revisit when LLM-primary use case emerges. Seed preserved: structured fields already present in frontmatter.
- **Court rulings as lead transfer** (6c pure) — interesting analogy but adopting wholesale (Holding/Rule/Reasoning/Dissent) requires renaming sections, breaks backward-compat with existing template. Seed preserved: release-notes transfer (6b) captures the useful subset.
- **Academic paper as lead transfer** (6a pure) — demoted. Background framing, not novelty.

---

## Mechanism Coverage

- **Generators applied:** 4/4 (Combination, Absence, Domain Transfer, Extrapolation all produced load-bearing survivors)
- **Framers applied:** 3/3 (Lens Shifting, Constraint Manipulation, Inversion all produced load-bearing survivors)
- **Convergence:** YES — 4 independent convergences (read-side design; TL;DR-first authorship; corpus-level thinking; release-notes lineage)
- **Survivors tested:** 9 MVP survivors — each tested against novelty / scrutiny / fertility / actionability / mechanism-independence; critique will formalize
- **Failure modes observed:** None. The conservatism bar (sensemaking's LOCKS) held; innovation refined within the locked boundaries.
- **Overall: PROCEED** — sufficient coverage + 4 convergences + 9 tested survivors + assembly produces emergent value (reader-extraction contract framing)

---

## Innovation-Level Changes to Decomposition (for Critique to validate)

Structural additions/changes beyond decomposition's plan:

- **Slack test** for TL;DR validity — new self-check item
- **Index test** for TL;DR corpus-level readability — new self-check item
- **TL;DR-first authorship** as /MVL+ prompt directive — not just content rule but WRITING ORDER
- **Read-side extraction tests** (30-second / 60-second) added to P3 self-check — not just structure-compliance
- **Type-specific gate examples** (process/spec/monitoring/deferred) — P1 refinement for Next Actions
- **"Changes from Prior" metadata block** — NEW optional section for refinement findings; canonical form replacing chatforge organic pattern
- **Optional reader-navigation metadata** (audience / read time / prerequisites) — NEW optional header for long findings
- **Corpus-level index design driver** — principle; affects TL;DR wording choices

Critique should test:
- Does the Slack test actually produce good TL;DRs, or do authors interpret it inconsistently?
- Does TL;DR-first authorship feel natural, or does it become a ritual that authors dodge?
- Are read-side extraction tests self-verifiable, or do authors rubber-stamp them?
- Does the Changes-from-Prior block help readers, or create template bloat for the few findings that need it?
- Do type-specific gate examples prevent vague gates, or just give authors more ways to be vague?
- Does the optional reader-navigation metadata get used, or get skipped and eventually killed?
