# Decomposition: Finding Document Audit

## User Input
devdocs/inquiries/finding_document_audit/_branch.md

Sensemaking's SV6 is the partition seed. LOCKED by sensemaking:
- 6-section template: TL;DR / Question / Finding / Next Actions / Reasoning / Open Questions
- TL;DR pre-Question, 1-3 sentences, specific answer
- Next Actions required when finding proposes changes; optional otherwise; MUST/COULD/DEFERRED subsections; per-item gates
- Open Questions: 4 typed categories (Monitoring / Blocked / Research Frontiers / Refinement Triggers); authors pick applicable
- 3 style rules: hedging specificity, cross-reference format, gate specificity
- Size-adaptive: ~100 lines threshold
- 3-layer enforcement: /MVL+ prompt + style rules doc + author self-check
- Backward compatible: no retroactive rewrite
- /MVL+ prompt + template ship together

What decomposition partitions is the **concrete writing and integration work**.

---

## 1. Coupling Map

```
CLUSTER A: Template Specification (FOUNDATION)
  └─ P1: 6-section template — exact wording, format, content rule per section
         (TL;DR / Question / Finding / Next Actions / Reasoning / Open Questions)

CLUSTER B: Style Rules (referenced by template)
  └─ P2: 3 style rules codified (hedging specificity + cross-reference format + gate specificity)

CLUSTER C: Enforcement Artifacts
  ├─ P3: Self-check rubric (what the author verifies before finalizing)
  └─ P4: /MVL+ prompt rewrite (production-side — how the template gets produced)

CLUSTER D: Demonstration
  └─ P5: Example finding using the new template (concrete illustration)

CLUSTER E: Integration
  └─ P6: Style rules document location + charter update for enes/

Valleys (natural cut points):
  A ─ B     (template spec vs style rules — template REFERENCES rules; rules defined separately)
  A ─ C(P3) (template spec vs self-check rubric — rubric verifies template compliance; one-way read)
  A ─ C(P4) (template spec vs /MVL+ prompt — prompt PRODUCES template; one-way read)
  A ─ D     (template vs example — example demonstrates template; one-way read)
  B ─ C(P3) (style rules vs self-check — rubric references rules; one-way read)
  core ─ E  (content vs integration — location/charter is coordination work)
  P3 ─ P4   (self-check vs prompt — different enforcement layers; no cross-coupling)

Shared dependencies (flagged):
  - Template sections referenced by P2/P3/P4/P5 (stable contract once P1 defined)
  - 3 style rules referenced by P3/P4/P5 (stable once P2 defined)
  - Existing /MVL+ spec in commands/MVL+.md (external dependency; P4 edits it)
  - Existing finding.md corpus (external reference; P5 uses one as model)
```

### Coupling confidence assessment

| Boundary | Confidence | Why |
|---|---|---|
| A ↔ B | HIGH | Template references rules as a stable contract; rules don't constrain template structure |
| A ↔ C/D | HIGH | Enforcement + example read FROM template; no feedback |
| B ↔ C | HIGH | Self-check references rules; one-way read |
| P3 ↔ P4 | HIGH | Different enforcement layers operating independently |
| core ↔ E | HIGH | Location/charter is coordination layer; no content feedback |

### What is NOT being decomposed

LOCKED by sensemaking; carried as constraints:
- Which 6 sections exist
- Section order (TL;DR / Question / Finding / Next Actions / Reasoning / Open Questions)
- 4 Open Questions categories (Monitoring / Blocked / Research Frontiers / Refinement Triggers)
- MUST/COULD/DEFERRED structure in Next Actions
- Size-adaptive threshold (~100 lines)
- Backward compatibility policy (no retroactive rewrite)
- 3-layer enforcement model
- Which style rules exist (3: hedging specificity + cross-reference format + gate specificity)

---

## 2. Question Tree (6 pieces)

### P1: 6-Section Template Specification [FOUNDATION]

- **Question:** What is the exact specification for each of the 6 sections — format, content rule, and rule for what content does NOT belong?
- **Sub-questions (per section):**
  - **TL;DR:**
    - Format: 1-3 sentences; bold key terms; placed pre-Question
    - Content rule: names the specific answer (not inquiry scope)
    - Not allowed: describing the inquiry's topic without answering it; exceeding 3 sentences; placed inside Finding
    - Example valid TL;DR: "The current 4-primitive model is internally contradictory and incomplete. The correction is a typed 11-primitive set organized into operations/buffers/drivers/modulators, admitted via a four-criterion primitivity test with corpus audit."
    - Example invalid: "This audit examined the primitive set for completeness."
  - **Question:**
    - Format: from `_branch.md`; the question + goal; unchanged from current template
    - Content rule: preserves original question text; adds goal section
  - **Finding:**
    - Format: complete, self-contained, non-compact; subsections allowed (numbered or named)
    - Content rule: the answer, explained fully; enough that reader grasps it without other files
    - When long (>100 lines total in this section), encourage numbered subsections with descriptive titles
  - **Next Actions** (required when finding proposes changes; optional otherwise):
    - Format: three subsections: `### MUST`, `### COULD`, `### DEFERRED`; each item with what/who/when-or-gate
    - Content rule: concrete actionable items with specific gates; vague aspirational items are defects
    - Not allowed: bare imperatives without gates ("eventually we should..."); placing actions in Reasoning or Open Questions
    - Per-item format:
      ```
      - **What:** [specific action]
        **Who:** [discipline / agent / file / person]
        **Gate:** [time-bound OR condition-bound OR observable trigger]
      ```
  - **Reasoning:**
    - Format: subsections per major decision; "Why X over Y" framing; every KILL with reasoning; every SURVIVE with why it held
    - Content rule: the argumentative case; unchanged in structure from current template
    - Not allowed: repeating the Finding's answer without the why; burying kill reasons
  - **Open Questions** (typed):
    - Format: four subsections (authors populate what applies): `### Monitoring`, `### Blocked`, `### Research Frontiers`, `### Refinement Triggers`
    - Content rule per category:
      - **Monitoring:** questions observable after N inquiries / when Y completes
      - **Blocked:** questions gated on specific upstream completion
      - **Research Frontiers:** no known path; future inquiry seeds
      - **Refinement Triggers:** specific conditions under which a locked decision re-opens (specificity rule applies)
    - Not allowed: flat mixed bullet lists (the current pattern); questions with vague triggers
- **Verification criteria:**
  - [ ] all 6 sections have format + content rule + "not allowed" specified
  - [ ] TL;DR format passes reverse-test (given format, author can produce valid TL;DR without ambiguity)
  - [ ] Next Actions format includes what/who/gate per item
  - [ ] Open Questions 4 categories each have a concrete description distinguishing them
  - [ ] Example valid / invalid shown for at least TL;DR (the most failure-prone section)

### P2: Style Rules (3 codified) [REFERENCED by template]

- **Question:** What are the exact style rules for hedging, cross-reference format, and gate specificity?
- **Sub-questions:**
  - **Hedging specificity:**
    - Rule: hedges must name WHAT is uncertain AND WHY
    - Acceptable: "MEDIUM confidence — depends on empirical signal-independence test (P12)"
    - Unacceptable: "mostly sound," "with caveats," "generally works," "potentially useful" (no named condition)
    - Failure detection: if a sentence contains a hedge and the reader can't identify the specific uncertainty, it fails
  - **Cross-reference format:**
    - Rule: full path on first reference within the finding; bare name thereafter; relationship type when applicable
    - First reference format: `devdocs/inquiries/thinking_space_primitives/finding.md`
    - Subsequent: `thinking_space_primitives` or `the primitives audit`
    - With relationship: `REFINES: thinking_space_primitives (what specifically from that finding is load-bearing for this one)`
    - Frontmatter references: use full path in `supersedes:`, `refined_by:`, `impacted_by:` fields
  - **Gate specificity:**
    - Rule: gates, triggers, deferred conditions must be time-bound OR condition-bound OR observable
    - Acceptable: "after 30 inquiries accumulate," "when /intuit Phase β ships," "if calibration N ≥ 30"
    - Unacceptable: "eventually," "when appropriate," "as needed," "if issues arise"
    - Failure detection: if a reader can't tell whether the gate has fired, it's not specific enough
- **Verification criteria:**
  - [ ] 3 rules each have: rule statement, acceptable example, unacceptable example, failure-detection criterion
  - [ ] rules collectively prevent the hedging/deferral/reference ambiguities observed in corpus

### P3: Self-Check Rubric [ENFORCEMENT LAYER 3]

- **Question:** What is the author's pre-finalization self-check rubric — specific items the author verifies before finishing?
- **Sub-questions:**
  - **Rubric format:** checklist of specific verifications; not aspirational questions
  - **Rubric items:**
    - [ ] TL;DR is 1-3 sentences and names a specific answer (not inquiry scope)
    - [ ] If finding proposes changes, Next Actions section exists with MUST/COULD/DEFERRED subsections
    - [ ] Every Next Actions item has what/who/gate
    - [ ] Open Questions entries are categorized (each item is under Monitoring/Blocked/Research Frontiers/Refinement Triggers)
    - [ ] Every hedge in the document names specific uncertainty
    - [ ] Cross-references to other findings use full path on first reference; bare name thereafter
    - [ ] Every Refinement Trigger entry is specific (time-bound/condition-bound/observable)
    - [ ] Size-adaptive check: if finding is ≤100 lines AND is not proposing changes, Next Actions may be absent
  - **When to run:** after writing finding.md, before invoking TERMINATE / completing iteration
  - **Failure mode:** if a check fails, the author revises the corresponding section before finalizing
- **Verification criteria:**
  - [ ] rubric has ≤10 items (not a sprawl)
  - [ ] each item is binary (pass/fail; not "adequately")
  - [ ] items map 1:1 to template sections + style rules

### P4: /MVL+ Prompt Rewrite [ENFORCEMENT LAYER 1]

- **Question:** What is the new prompt text for the ITERATION COMPLETE section of `commands/MVL+.md` — the production-side specification for generating finding.md?
- **Sub-questions:**
  - **Location:** the YES branch of ITERATION COMPLETE in `commands/MVL+.md`
  - **Prompt structure:** reader-persona directive + 6-section template + per-section instruction + verification step + style-rules reference
  - **Key changes from current prompt:**
    - Add TL;DR section with content rule
    - Add Next Actions section with content rule (required-when-proposing-changes; MUST/COULD/DEFERRED format)
    - Change Open Questions to typed 4-category format
    - Reference style rules doc (hedging, cross-references, gate specificity)
    - Add self-check rubric reference
  - **What stays:**
    - Reader-persona framing ("write for a reader who has NOT seen the SIC output")
    - Coverage self-check (every critique KILL in Reasoning; every SURVIVE in Finding)
    - Archive step (move 5 discipline files to docarchive/)
    - `_state.md` update + conversation-summary print + post-completion pointer
  - **Prompt produces the 6-section template in the right order with style-rule compliance**
- **Verification criteria:**
  - [ ] prompt text specified verbatim (copy-paste ready for `commands/MVL+.md` edit)
  - [ ] preserves reader-persona framing + coverage self-check + archive + state update
  - [ ] produces 6-section structure in correct order
  - [ ] references style rules doc for hedging/cross-ref/gate compliance
  - [ ] size-adaptive guidance included (skip optional sections for short findings)

### P5: Example Finding [DEMONSTRATION]

- **Question:** What concrete example finding illustrates the new template in operation?
- **Sub-questions:**
  - **Source choice:** use one of the existing findings as the BASE, show the new template applied to it. Candidates:
    - `thinking_disciplines_audit/finding.md` (long, complex, has scattered next-actions — high-value demonstration)
    - `value_extraction_design/finding.md` (short, meta-relevant, simple template application)
    - `post_completion_navigation/finding.md` (medium, clear actions — clean demonstration)
  - **Demonstration scope:** show TL;DR + Next Actions for the example; reference existing Finding/Reasoning/Open Questions (don't rewrite the whole thing — too much work)
  - **Format:** snippet illustrating each new/modified section, with commentary annotating what the new template adds
  - **Decision on base:** `post_completion_navigation` is the best demonstration target — medium size, clear next-actions, already written in a form close to the new template. The demonstration adds TL;DR + converts Next Actions scattered in Finding into the dedicated section + categorizes Open Questions.
- **Verification criteria:**
  - [ ] example shows TL;DR + Next Actions + typed Open Questions applied to a real finding
  - [ ] commentary highlights WHAT the new template adds vs the old
  - [ ] example is short enough to serve as a reference (not a full finding rewrite)

### P6: Style Rules Document Location + enes/ Charter Integration [INTEGRATION]

- **Question:** Where does the style rules document live, and how does it integrate with the existing `enes/` charter?
- **Sub-questions:**
  - **Location options:**
    - `enes/finding_style.md` — parallel to `enes/discipline_taxonomy.md`; fits enes/ charter (curated stable-view of an architectural concept — finding document style IS a concept)
    - Section within `commands/MVL+.md` — mixes production with style; less clean
    - Separate top-level file — misfit with existing organization
  - **Decision:** `enes/finding_style.md`
  - **enes/ charter update:** the existing charter ("curated stable-view files for architectural concepts — one file per concept") holds. `finding_style.md` is a concept file — "finding.md documentation style" is an architectural concept. Add to `enes/discipline_taxonomy.md`'s charter list:
    ```
    - `finding_style.md` — style rules + self-check rubric for finding.md documents (new)
    ```
  - **Content of `enes/finding_style.md`:**
    1. 3 style rules (from P2)
    2. Self-check rubric (from P3)
    3. Reference to the 6-section template spec (from P1, canonical location: `/MVL+` ITERATION COMPLETE section)
  - **Reference structure:** `/MVL+` is the canonical location for the TEMPLATE; `enes/finding_style.md` is the canonical location for STYLE + self-check. Cross-references between them.
- **Verification criteria:**
  - [ ] location decision documented with reasoning
  - [ ] enes/ charter updated to include `finding_style.md`
  - [ ] cross-reference structure clear (template at /MVL+; style + self-check at enes/finding_style.md)
  - [ ] backward compatibility note included (old findings remain valid)

---

## 3. Interface Map

| Source | Target | What flows | Direction |
|---|---|---|---|
| P1 (template) | P2, P3, P4, P5 | Section specifications | Read (stable contract) |
| P2 (style rules) | P3, P4, P5 | Style-rule text | Read |
| P1 + P2 | P4 (/MVL+ prompt) | Template + style rules feed prompt | Read |
| P1 + P2 | P3 (self-check) | Template + style rules feed rubric | Read |
| P1 + P2 | P5 (example) | Template + style rules feed demonstration | Read |
| P3 (self-check) | P4 (/MVL+ prompt) | Prompt references rubric | Read |
| P4 (/MVL+ prompt) | `commands/MVL+.md` | Replaces YES branch of ITERATION COMPLETE | Write (downstream, not in this inquiry) |
| P6 (location) | P2 + P3 + P4 | Canonical locations documented | Contract |
| P6 (location) | `enes/discipline_taxonomy.md` | Charter addition | Write (downstream) |

### Hidden interfaces (external dependencies)

- **Existing `commands/MVL+.md`** — P4 rewrites the YES branch. Current prompt content is the base.
- **Existing finding corpus** — P5 uses one as the demonstration source; reference only.
- **`enes/` charter** — from prior `thinking_disciplines_audit` finding; P6 extends it.
- **Markdown + frontmatter conventions** — consumed by P1, P4, P5.

All external dependencies are stable.

---

## 4. Dependency Order

```
FOUNDATION (must go first):
  P1 (6-section template specification)
  P2 (3 style rules) — can proceed in parallel with P1 once sensemaking LOCKS are stable

BUILDS ON P1 + P2:
  P3 (self-check rubric) — references both
  P5 (example finding) — demonstrates both

BUILDS ON P1 + P2 + P3:
  P4 (/MVL+ prompt rewrite) — integrates all three into production-side directive

INTEGRATION (after content is specified):
  P6 (style rules doc location + charter update) — depends on P1 (for /MVL+ reference) + P2 (for content)
```

**Critical path:** P1 → P2 → P3 → P4. P5 + P6 parallel branches.

**Parallelizable:** P1 and P2 can proceed concurrently (template and style rules are loosely coupled). P5 and P6 can start once P1+P2 are drafted.

**No circular dependencies.**

**Deferred (not in this decomposition):**
- Actually applying the new template to old findings — explicitly out of scope (backward compatibility rule)
- Writing the next 18 findings in the new template — downstream operation work
- Enforcement tooling beyond self-check rubric (post-hoc audit, lint checker, etc.) — premature

---

## 5. Self-Evaluation

| Dimension | Result | Notes |
|---|---|---|
| **Independence** | PASS | P1/P2 parallelizable; P3/P4/P5 build on them cleanly; P6 is integration layer. Each piece has a single, answerable question. |
| **Completeness** | PASS | 6 pieces cover: template spec (P1), style rules (P2), author-side enforcement (P3), production-side enforcement (P4), demonstration (P5), integration + location (P6). All sensemaking locks addressed. |
| **Reassembly** | PASS | P1+P2+P3+P4+P5+P6 → complete finding.md template refinement: template defined, style rules codified, rubric written, /MVL+ prompt updated, example demonstrates, style rules doc located and enes/ charter updated. Given all pieces answered, the inquiry's goal (corpus-grounded + pattern-extracted + concrete template + next-action clarity + backward compat + /MVL+ update) is satisfied. |
| **Tractability** | PASS | Each piece is writing work, not speculative exploration. P1 is the largest (6 section specs) but highly structured. |
| **Interface clarity** | PASS | 9 interfaces named; external dependencies (commands/MVL+.md, finding corpus, enes/ charter, markdown conventions) flagged. |
| **Balance** | PASS | P1 is the largest (6 section specs ≈ 400 words of template content) but proportionate; others are smaller but each has clear deliverable. No single piece is 80% of effort. |
| **Confidence** | PASS | Top-down clusters (A-E) and bottom-up pieces (6) agree. The foundation role of P1 matches the "template defines everything downstream" intuition. |

**All 7 dimensions pass. Decomposition ready for Innovation.**

### Innovation should focus on:

- **P1 TL;DR content rule** — how to make "names the specific answer" operationally unambiguous; prevent readers from writing TL;DRs that still dodge the answer
- **P1 Next Actions per-item format** — what/who/gate is the skeleton; innovation can sharpen gate specificity examples per action type (process change / spec change / code change)
- **P2 hedging rule failure-detection** — how the author/reader tells a hedge is vague; operational test
- **P4 /MVL+ prompt craft** — the prompt needs to balance structure enforcement + reader-persona framing + style-rule reference without becoming unwieldy
- **P5 example finding choice** — which finding best illustrates the template's value at minimum demonstration cost
- **P3 self-check rubric design** — binary checklist vs gradient; enforcement level

### Innovation should avoid re-litigating:

- Which 6 sections exist (LOCKED)
- Section order (LOCKED)
- 4 Open Questions categories (LOCKED)
- MUST/COULD/DEFERRED structure (LOCKED)
- Size-adaptive threshold (LOCKED)
- Backward compatibility policy (LOCKED)
- 3-layer enforcement (LOCKED)
- Which 3 style rules exist (LOCKED)
- Canonical location: `enes/finding_style.md` (decided here in P6)

### Deliberately NOT decomposed further

- **Content-writing style consistency** across the new template's sections (authorial craft; not decomposition territory)
- **Per-section length norms** beyond size-adaptive threshold (pragmatic; authors decide)
- **Migration path for opting-in old findings** (explicitly out of scope)
- **Enforcement tooling** (post-hoc audit, lint checker — deferred; self-check is sufficient for MVP)
