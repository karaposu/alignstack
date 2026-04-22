# Sensemaking: Finding Document Audit

## User Input
devdocs/inquiries/finding_document_audit/_branch.md

---

## SV1 — Baseline Understanding

The current finding.md template (Question / Finding / Reasoning / Open Questions) underspecifies at scale. Long findings suffer from missing summary, scattered next-actions, uncategorized open questions, hedging, inconsistent cross-references. Template improvements are corpus-validated, not stylistic.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

- **Corpus-validated problems.** 6/7 hypotheses confirmed across 18 findings. Not stylistic complaints — systematic gaps.
- **Preserve the 4-section structural core.** `value_extraction_design` finding established Question/Finding/Reasoning/Open Questions. Override requires structural justification (like definitional-internal contradiction), not preference.
- **Short findings don't suffer.** Template works at <100 lines; breaks at >200. Changes must help long findings WITHOUT adding overhead to short ones.
- **Backward compatibility required.** 18 existing findings don't get retroactively rewritten. New template is opt-in for new findings; old findings remain valid.
- **Couples with `/MVL+` prompt.** The finding-production prompt in `commands/MVL+.md` specifies the template. Changes to template → changes to prompt.
- **Reader-first (from `thinking_disciplines_audit` convergence).** Artifacts serve future readers, not current authors.
- **Specificity test (from `thinking_disciplines_audit`).** Triggers, gates, admissions must be specific; vague aspirations don't pass.

### Key Insights

- **I1:** Problems scale-dependent. Short findings DON'T need TL;DR / Next Actions / categorized Open Questions (the document is small enough that readers can extract structure themselves). Long findings DO. Template should distinguish.
- **I2:** Two organic TL;DR workarounds exist (pre-Question bold paragraph; "### 1. The short answer" subsection). Inconsistency is the problem. Picking ONE canonical location fixes it.
- **I3:** Current template order (Question → Finding → Reasoning → Open Questions) buries the answer. Reader-want order leads with TL;DR + Next Actions. Adjacent genres (RFCs, ADRs, papers, git commits) universally lead with summary.
- **I4:** The Question section is OFTEN KNOWN TO THE READER (they came to the finding looking for the answer to THAT question). Front-loading Question adds low value; Question-as-reference belongs after the summary.
- **I5:** Finding section is 2-5× larger than Reasoning. The scale problem is inside Finding, not Reasoning. Any navigation aid must operate within or BEFORE Finding.
- **I6:** Next Actions aren't a new kind of content — they're content that already exists but is scattered. Consolidating them into a dedicated section doesn't add material; it relocates it.
- **I7:** Open Questions categorization (Monitoring / Blocked / Research / Refinement Triggers) is a typology imposed on existing content. Most findings already carry this distinction implicitly in bullet wording.
- **I8:** Hedging is partially necessary (honest uncertainty) and partially lazy (authorial padding). Rule needed: hedges must name the specific uncertainty, not aspirational softening.
- **I9:** Cross-reference format is low-cost to standardize. Full path on first reference, bare name thereafter (documentation convention).
- **I10:** `finding.md` genre has mature adjacent analogs. Importing abstract-first convention from RFCs/ADRs is cheap.
- **I11:** Template change has three enforcement layers: (a) `/MVL+` prompt (what the writer produces), (b) style rules (what the writer follows), (c) self-check (what the writer verifies). All three work together.
- **I12:** "Ambiguous next actions" is the user's most painful problem — it's what makes findings hard to USE (not just read). Next Actions section is the highest-leverage change.

### Structural Points

- **4-section core preserved:** Question / Finding / Reasoning / Open Questions (from `value_extraction_design`)
- **Additions to consider:** TL;DR section, Next Actions section, typed Open Questions
- **Style rules to add:** hedging discipline, cross-reference format, specificity for gated/deferred work
- **Size-adaptive rule:** short findings can skip new sections; long findings must include them
- **Coupling:** template ↔ `/MVL+` finding-production prompt (update together)

### Foundational Principles

- **FP1: Reader-first, not author-first.** Documentation choices serve the reader who needs to extract the answer and next actions.
- **FP2: Size-adaptive.** Apply heavier structure to findings that need it; don't burden short findings with ceremony.
- **FP3: Additive changes preferred over restructure.** Add sections; don't move existing ones unless justified.
- **FP4: Specificity required.** Gates, triggers, deferred items name the specific condition — not "eventually," "when appropriate," "if needed."
- **FP5: Conventions over freedom.** Cross-reference format, hedging discipline, TL;DR placement get canonical forms. Author freedom invited drift.
- **FP6: Backward compatible.** Old findings remain valid; new findings adopt refined template.
- **FP7: Enforcement in three layers.** Prompt (what produced), style rules (what followed), self-check (what verified).

### Meaning-Nodes

- **TL;DR (headline):** the 1-3 sentence answer a reader wants FIRST, before any analysis
- **Next Actions:** concrete work items with MUST/COULD/DEFERRED distinction and per-item gates
- **Typed Open Questions:** questions categorized by follow-up kind (Monitoring / Blocked / Research / Refinement Trigger)
- **Size-adaptive template:** same 4-section core; new sections optional for short findings, required for long
- **Specificity rule:** gates, triggers, conditions named concretely (time-bound OR condition-bound OR observable)
- **Style discipline:** canonical forms for hedging, cross-references, section placement

---

## SV2 — Anchor-Informed Understanding

The problem is **scale-dependent underspecification**. The 4-section core works at short findings; long findings need navigation aids (TL;DR, Next Actions, typed Open Questions) and style discipline (hedging, cross-refs). Changes are additive to the existing template; the core 4 sections stay. Size-adaptive rule prevents burdening short findings.

---

## Phase 2 — Perspective Checking

| Perspective | What it revealed |
|---|---|
| **Technical / Logical** | The 4-section structure is logically sound. Adding sections (TL;DR, Next Actions) is additive. Open Questions typology is a categorization of existing content. No structural contradiction. |
| **Human / User** | User's three complaints (language ambiguity, missing summary, ambiguous next actions) map directly to H1/H5/H6 confirmed in corpus. User wants to USE findings, not just read them. Next Actions is the highest-leverage change. |
| **Strategic / Long-term** | As the inquiry corpus grows, findings accumulate. Reader-cost of each finding compounds. Template improvements today pay off across hundreds of future findings. Conservative template change with high multiplier. |
| **Risk / Failure** | Risks: (a) over-specification (authors fight template), (b) short-finding burden, (c) author-writes-vague-TL;DR-anyway (style rule insufficient). Mitigations: size-adaptive rule, specificity discipline, multi-layer enforcement. |
| **Resource / Feasibility** | All proposed changes are text-spec. No new tooling. `/MVL+` prompt update is a text edit. Low cost. |
| **Definitional / Consistency (INTERNAL)** | *Does the current template have internal contradictions?* Partially. The template's stated purpose ("argumentative document readable without any other file") conflicts with its actual form (no surfacing of answer until paragraph deep into Finding). Gap between stated purpose and mechanism. Override justified. |
| **Definitional / Consistency (EXTERNAL)** | `value_extraction_design` + `finding_production_prompt` define current template. Refinement is iteration 2; they established principles ("argumentative, not archival," "readable without context," "reader persona prevents compression") that EXTEND to proposed changes — TL;DR serves readable-without-context; Next Actions serves argumentative-and-actionable. Consistent. |
| **Reader-first convergence (from thinking_disciplines_audit)** | Artifacts serve future readers. This audit extends that principle to findings specifically. Same convergence, different target. |

### Key convergence

Technical + Human/User + Definitional-Internal converge: **template underspecifies at scale (internal gap); user's problems validate this (corpus evidence); additive changes preserve structural core.** Override justified by internal contradiction, not preference.

### Key tension

Resource + Risk perspectives: additions are low-cost but risk over-specification. Mitigation: size-adaptive rule (sections optional for short findings) + author discretion within bounds.

---

## SV3 — Multi-Perspective Understanding

The 4-section core is preserved; three additive sections are proposed (TL;DR, Next Actions, typed Open Questions); three style rules are added (hedging discipline, cross-reference format, specificity rule). Size-adaptive application: short findings (<100 lines) may skip new sections; long findings (>200 lines) must include them. Backward compatibility preserved. `/MVL+` prompt updates alongside template. Override justified by the current template's internal gap (stated purpose: readable-without-context; actual form: answer buried).

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: TL;DR — pre-Question placement vs subsection of Finding?

**Counter-interpretation:** put TL;DR inside Finding as first subsection (pattern B from exploration). Keeps Question first (traditional order).

**Why the counter partially holds:** preserves current template order; doesn't rearrange.

**Counter-counter:** a TL;DR inside Finding is BURIED — reader must locate "## Finding" then scan for the first subsection. Pre-Question placement is visible on open (first content after title).

**Defense:** adjacent genres (RFCs, academic papers, ADRs) universally lead with abstract/summary. Readers trained to look first. Pre-Question placement is the dominant convention.

**Resolution:** **TL;DR goes BEFORE `## Question` as an explicit section.** Format:

```markdown
---
status: active
---
# Finding: [inquiry name]

## TL;DR

[1-3 sentences stating the answer. Must name the specific answer,
not the inquiry scope. Bold key terms.]

## Question

[existing structure]
```

HIGH CONFIDENCE.

- **Fixed:** TL;DR is pre-Question, explicit section, 1-3 sentences max
- **Not allowed:** TL;DR placed within Finding (buried); TL;DR as bold paragraph without header (chatforge pattern A is deprecated in favor of explicit header); TL;DR describing the inquiry scope instead of the answer
- **Depends:** section-order rule; `/MVL+` prompt update; style rule on what constitutes a valid TL;DR

### Ambiguity 2: Next Actions — mandatory, optional, or size-adaptive?

**Counter-interpretation (mandatory):** every finding needs next actions; if a finding doesn't have them, that's a defect.

**Why this fails:** some findings are pure analysis (e.g., `autonomous_consciousness_goal` — a definition; no "next actions" in the operational sense beyond "build toward the goal"). Forcing next actions produces ceremonial "continue building" items.

**Counter-interpretation (optional):** author chooses; omit if not applicable.

**Why this partially fails:** omission becomes the norm; the section doesn't appear when it SHOULD appear. Exactly the current state.

**Resolution:** **Size-adaptive + content-driven.** Next Actions section is:
- **Required** for findings that propose changes to specs, code, or process
- **Optional** for findings that are pure definition, analysis, or conservation verdicts (where the "action" is internal to the finding itself)
- **When included:** must have MUST / COULD / DEFERRED subsections, each with concrete items and per-item gates

HIGH CONFIDENCE.

- **Fixed:** Next Actions required when finding proposes changes; MUST/COULD/DEFERRED subsections; per-item gates (who/when/trigger)
- **Not allowed:** Next Actions that are aspirational ("eventually we should..."); Next Actions without gates; omitting Next Actions when finding proposes changes
- **Depends:** style rule on specificity; template guidance on when to include

### Ambiguity 3: Open Questions — categorize how?

**Counter-interpretation:** keep flat list; categorization is over-engineering.

**Why this fails:** corpus evidence shows categorization is MISSING from all 18 findings AND readers can't distinguish urgent-monitoring vs research-frontier in flat lists.

**Resolution:** **Four category subsections** (flexible — use what applies):

```markdown
## Open Questions

### Monitoring
[Observable after N inquiries / when Y completes. These questions
become testable through accumulated operation.]

### Blocked
[Cannot be answered until X ships / Y happens. Gated on specific
upstream conditions.]

### Research Frontiers
[No known path; requires new investigation. Future inquiry seeds.]

### Refinement Triggers
[Specific conditions under which a locked decision re-opens.
Specificity test applies: time-bound OR condition-bound.]
```

Not every category must be populated. Authors use what applies. The TYPING is what matters, not the 4-way split.

HIGH CONFIDENCE.

- **Fixed:** Open Questions has typed subsections; 4 canonical categories; each item has category membership
- **Not allowed:** flat-mixed-bullets lists (the current pattern); category without specificity (e.g., Monitoring items without "after N inquiries")
- **Depends:** style rule on specificity; authors pick applicable categories

### Ambiguity 4: Section order

**Counter-interpretation:** keep current order (Question → Finding → Reasoning → Open Questions) with TL;DR prepended.

**Why this holds:** additive change; backward compatible; low disruption.

**Counter-interpretation (reorder):** move Next Actions before Reasoning (reader wants actions before justification).

**Why this partially holds:** reader-want order supports Next Actions early.

**Resolution:** **Additive ordering with Next Actions after Finding:**

```
TL;DR
Question
Finding
Next Actions (when applicable)
Reasoning
Open Questions
```

Rationale:
- TL;DR first: answer on open
- Question second: reference for reader who doesn't know it
- Finding third: full answer
- Next Actions fourth: what to DO (right after understanding the answer)
- Reasoning fifth: why (needed by skeptics; optional for actors)
- Open Questions last: frontier

HIGH CONFIDENCE.

- **Fixed:** 6-section order as above; Next Actions between Finding and Reasoning when applicable
- **Not allowed:** re-ordering Question/Finding/Reasoning/Open Questions (the core 4); placing Next Actions in Reasoning or scattered
- **Depends:** `/MVL+` prompt reflects new order

### Ambiguity 5: Size-adaptive rule

**What counts as "short" vs "long"?**

**Resolution:** **≤100 lines is short; >100 lines is long.**

- Short findings: TL;DR + core 4 sections. Next Actions and typed Open Questions are optional.
- Long findings: TL;DR + core 4 sections + Next Actions (when applicable) + typed Open Questions + style discipline required.

Line count is a rough heuristic — authors can apply long-form structure to shorter findings if complexity warrants.

MEDIUM CONFIDENCE (threshold is pragmatic, not structural).

- **Fixed:** rough threshold at 100 lines; authors apply judgment
- **Not allowed:** claiming a finding is "short" to skip structure when it's clearly long (>150 lines without structure is a smell)

### Ambiguity 6: Hedging discipline

**What rule distinguishes honest uncertainty from lazy hedging?**

**Resolution:** **Hedges name specific uncertainty.**

- Acceptable: "MEDIUM confidence — depends on empirical signal-independence test (P12)"
- Unacceptable: "mostly sound with caveats" (no named caveat; no named condition)
- Rule: if a hedge appears, the reader must be able to identify WHAT is uncertain and WHY

HIGH CONFIDENCE.

- **Fixed:** hedging must specify what's uncertain; vague hedges are defects
- **Not allowed:** blanket softeners ("mostly," "generally," "potentially" without named condition)

### Ambiguity 7: Cross-reference format

**Which format is canonical?**

**Resolution:** **Full path on first reference; bare name thereafter.**

- First reference: `devdocs/inquiries/thinking_space_primitives/finding.md`
- Subsequent references in same finding: `thinking_space_primitives`
- When referenced with relationship: `REFINES: thinking_space_primitives (explanation)`

HIGH CONFIDENCE.

- **Fixed:** full path first; bare name thereafter; relationship type when applicable
- **Not allowed:** mixed formats; folder-only references (`thinking_space_primitives/` without `finding.md`)

### Ambiguity 8: Enforcement mechanism

**How is the new template enforced?**

**Resolution:** **Three-layer enforcement:**

1. **`/MVL+` prompt** — production-side. The finding-generation prompt specifies the 6-section structure + style rules.
2. **Style rules document** (new; in `enes/finding_style.md` or similar) — reference for authors.
3. **Self-check** — before finalizing, author verifies: TL;DR is 1-3 sentences; Next Actions (if included) has gates; Open Questions are typed; hedges name specific uncertainty; cross-references use canonical format.

No post-hoc audit infrastructure. Authors are the gate.

HIGH CONFIDENCE.

- **Fixed:** three-layer enforcement; `/MVL+` prompt update; style rules doc; self-check rubric
- **Not allowed:** silent enforcement (no documented rules); single-layer enforcement (prompt only without self-check); post-hoc audit as primary gate

### Ambiguity 9: Backward compatibility

**What happens to the 18 existing findings?**

**Resolution:** **No retroactive rewrite required.** Existing findings remain valid under the old template. New findings use the new template. Over time, authors may opt-in to TL;DR + Next Actions additions for their own old findings if useful. No mandatory migration.

HIGH CONFIDENCE.

- **Fixed:** opt-in retroactive; mandatory forward
- **Not allowed:** mandatory retroactive rewrite (cost >> value)

### Ambiguity 10: `/MVL+` prompt coupling

**How is the `/MVL+` prompt updated?**

**Resolution:** **Coupled change.** Updating the template requires updating the `/MVL+` finding-production prompt. Both ship together. The prompt documentation in `commands/MVL+.md` is source of truth for production; the style-rules doc is source of truth for style.

HIGH CONFIDENCE.

- **Fixed:** template + prompt update together
- **Not allowed:** template change without prompt update (drift)

---

## SV4 — Clarified Understanding

The finding template extends from 4 sections to 6 (TL;DR + Question + Finding + Next Actions + Reasoning + Open Questions). Next Actions is required when finding proposes changes; optional otherwise. Open Questions gains typed subsections (Monitoring / Blocked / Research / Refinement Triggers). Style rules added (hedging specificity, cross-reference format, gate specificity). Size-adaptive: short findings (≤100 lines) can skip new sections; long findings must include them. Enforcement is three-layer (prompt + style rules + self-check). `/MVL+` prompt updates with template. Backward compatibility: no retroactive rewrites required.

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed (locked; decomposition/innovation cannot move these)

- 6-section structure: TL;DR / Question / Finding / Next Actions / Reasoning / Open Questions
- TL;DR is pre-Question, explicit section, 1-3 sentences, names the specific answer
- Next Actions required when finding proposes changes; optional otherwise; MUST/COULD/DEFERRED subsections; per-item gates
- Open Questions has 4 typed categories (Monitoring / Blocked / Research Frontiers / Refinement Triggers); not all categories must be populated
- Section order: TL;DR → Question → Finding → Next Actions → Reasoning → Open Questions
- Hedging discipline: name specific uncertainty; vague hedges are defects
- Cross-reference format: full path first; bare name thereafter
- Size-adaptive threshold: ~100 lines (authors apply judgment)
- Three-layer enforcement: `/MVL+` prompt + style rules doc + self-check rubric
- Backward compatibility: no retroactive rewrite; opt-in for old findings
- `/MVL+` prompt and template ship together
- Core 4-section argumentative structure from `value_extraction_design` preserved

### Eliminated (no longer viable)

- Flat-list Open Questions
- Scattered Next Actions (across Finding / Reasoning / Open Questions)
- TL;DR buried inside Finding
- Pre-Question bold paragraph (chatforge organic pattern — replaced by explicit TL;DR section)
- Vague hedging without named uncertainty
- Mixed cross-reference formats
- Template change without `/MVL+` prompt update
- Mandatory retroactive rewrite of existing findings
- Post-hoc audit as primary enforcement

### Remaining viable (decomposition territory)

- Exact TL;DR prompt wording (what makes a valid TL;DR)
- Exact Next Actions template with MUST/COULD/DEFERRED subsections + per-item gate format
- Exact Open Questions category subsection wording + category selection rule
- Hedging specificity rule (how to state uncertainty precisely)
- Gate specificity rule (time-bound OR condition-bound OR observable)
- Self-check rubric format
- `/MVL+` prompt text (new directive for the 6-section structure)
- Style rules document location (`enes/finding_style.md` or section within existing enes file)
- Example finding illustrating the new template

---

## SV5 — Constrained Understanding

The architectural decisions are stable. What decomposition partitions is the concrete WRITING: exact template wording per section, `/MVL+` prompt rewrite, style rules document, self-check rubric, and an example finding demonstrating the new template. These are bounded writing tasks.

---

## Phase 5 — Conceptual Stabilization

### SV6 — Stabilized Model

**The finding.md template extends from 4 sections to 6 — adding TL;DR (pre-Question, 1-3 sentences, specific answer) and Next Actions (between Finding and Reasoning, MUST/COULD/DEFERRED subsections, per-item gates, required when finding proposes changes). Open Questions gains 4 typed subsections (Monitoring / Blocked / Research Frontiers / Refinement Triggers). Three style rules are added (hedging specificity, cross-reference format, gate specificity). Size-adaptive application at ~100 lines: short findings may skip new sections, long findings must include them. Enforcement is three-layer (`/MVL+` prompt + style rules doc + author self-check). Backward compatible: no retroactive rewrite required. The core 4-section argumentative structure from `value_extraction_design` is preserved; the refinement extends that structure for scale rather than replacing it.**

### The 6-section template

```markdown
---
status: active
---
# Finding: [inquiry name]

## TL;DR

[1-3 sentences stating the specific answer. Not the inquiry scope.
Bold key terms. Reader extracts the headline on open.]

## Question

[From _branch.md — the question and goal]

## Finding

[The answer. Complete, self-contained, non-compact.]

## Next Actions                    [required when finding proposes changes]

### MUST
[Items that must happen for the finding to be realized. Each with:
- What: specific action
- Who: agent / discipline / file
- When / Gate: specific condition or time-bound trigger]

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

Not all subsections must be populated. Authors include what applies. Size-adaptive: short findings may use a flat Open Questions list and omit Next Actions if not applicable.

### Three style rules

1. **Hedging specificity** — hedges must name what's uncertain. "MEDIUM confidence — depends on signal-independence test (P12)" passes; "mostly sound" fails.
2. **Cross-reference format** — full path (`devdocs/inquiries/X/finding.md`) on first reference; bare name (`X`) thereafter; relationship type when applicable.
3. **Gate specificity** — gates, triggers, deferred items name specific conditions (time-bound OR condition-bound OR observable). "If X happens" with X specific; not "when appropriate."

### Three-layer enforcement

1. **`/MVL+` prompt** (production-side) — generates the 6-section structure; specifies style rules
2. **Style rules document** — reference for authors; lives at `enes/finding_style.md` (or equivalent)
3. **Author self-check** — before finalizing: TL;DR ≤3 sentences specific-answer; Next Actions (if included) has gates; Open Questions typed; hedges specific; cross-references canonical

### How SV6 differs from SV1

SV1 framed this as "template underspecifies; add summary + next actions." SV6 grounds it: **corpus validated the problems (6/7 hypotheses); the current template has an internal gap (stated purpose vs actual form) that justifies override; additions are size-adaptive so short findings don't get burdened; enforcement is three-layer to prevent silent drift; backward compatibility is preserved.** The substantive answer (extend template with TL;DR + Next Actions + typed Open Questions + style rules) is unchanged from SV1; what SV6 adds is the JUSTIFICATION RIGOR (why these specific changes, why size-adaptive, why three-layer enforcement) and the specific structural commitments (6-section order, gate specificity, hedging discipline).

---

## Saturation Indicators

- **Perspectives:** 8/8 run (technical, human/user, strategic, risk, resource, definitional-internal, definitional-external, reader-first-convergence); definitional-internal produced the load-bearing anchor (current template's stated purpose vs actual form gap justifies override)
- **Ambiguity resolution:** 10/10 resolved, 9/10 HIGH confidence, 1/10 MEDIUM (size-adaptive threshold is pragmatic)
- **SV delta:** moderate — SV1 "add summary + next actions" → SV6 "6-section size-adaptive template + 3 style rules + 3-layer enforcement + backward compat." The substantive answer is stable; the movement is in justification rigor.
- **Anchor diversity:** Constraints (7), Insights (12), Structural Points (5), Foundational Principles (7), Meaning-Nodes (6). Balanced.
- **Accommodation trigger:** no. Perspectives integrated without destabilizing the model.
- **Status quo bias check:** the current template was the established structure; override justified by definitional-internal contradiction (stated purpose: readable-without-context; actual form: answer buried 40+ lines deep) + corpus evidence (6/7 hypotheses confirmed). Not status-quo bias.

**Overall: sufficient for Decomposition.** The architectural decisions are stable. Decomposition partitions the concrete writing tasks — exact template wording per section, `/MVL+` prompt rewrite, style rules document, self-check rubric, and an example finding.
