# Critique: Finding Document Audit

## User Input
devdocs/inquiries/finding_document_audit/

---

## Phase 0 — Dimensions

Extracted from sensemaking SV6, decomposition's locks, and innovation's additions. The conservatism bar is load-bearing — sensemaking locked the 6-section template, 3 style rules, size-adaptive rule, 3-layer enforcement. Innovation refined within those bounds; critique tests whether the refinements hold up without re-opening locks.

| Dimension | Weight | Success criteria |
|---|---|---|
| **Reader utility** | CRITICAL | The refinement measurably helps a new reader extract answer + next-actions faster than current template |
| **Authorial practicality** | CRITICAL | Authors can actually follow the rule without confusion, ritual, or rubber-stamping |
| **Enforcement realism** | CRITICAL | The enforcement layer (prompt, style rule, self-check) produces compliance, not theater |
| **Coherence with locks** | CRITICAL | Additions extend sensemaking/decomposition locks; no silent re-scoping |
| **Backward compatibility** | HIGH | Old findings remain valid; new template doesn't require retroactive rewrite |
| **Scope discipline** | HIGH | Each innovation earns its place; no over-engineering |
| **Specificity** | HIGH | Rules are specific enough for authors to self-apply without interpretation drift |
| **Falsifiability** | HIGH | Self-check items are binary (pass/fail), not subjective assessments |
| **Novelty beyond decomposition** | MEDIUM | Each adds something beyond what decomposition already specified |
| **Low maintenance** | MEDIUM | Rule doesn't impose ongoing burden; has kill condition if erosion appears |

Validation: all 10 dimensions trace to explicit sensemaking anchors, decomposition locks, or innovation claims. No stray dimensions; no missing critical ones.

---

## Candidate Verdicts

### 1. Slack test for TL;DR validity [CRITICAL: reader utility, authorial practicality]

**Landscape position preview:** Viable on reader utility; boundary on authorial practicality (subjectivity).

**Prosecution:** The "Slack test" is subjective. "Would a colleague understand?" depends on WHICH colleague — a domain expert needs less context than a junior; a colleague in the same project vs an outsider differs; the author imagines their own idealized colleague. The test's apparent concreteness dissolves into author interpretation. Result: authors write TL;DRs that pass THEIR imagined Slack test but not actual readers'.

**Defense:** Operational heuristics don't require universal calibration — they're self-authored checks. The test still discriminates between TL;DRs that name the specific answer vs TL;DRs that merely reference the inquiry scope. Even applied loosely, it filters out the worst cases (the "This audit examined X" failure mode). Imperfect but meaningful.

**Collision:** Prosecution's subjectivity concern is real; defense's discriminative value holds for gross failures. Resolution: specify WHO the imagined colleague is.

**Verdict: SURVIVE (caveat)** — Slack test kept, WITH specification: "colleague = a peer working in this project with minimal prior context on THIS SPECIFIC INQUIRY (but familiar with the project's architecture)." Not a random stranger; not a deep expert on the exact topic. This narrows the interpretation variance.

---

### 2. Index test for TL;DR corpus-level readability [HIGH: reader utility; MEDIUM: novelty]

**Landscape position preview:** Boundary — principle-level guidance, not a concrete test.

**Prosecution:** The "index test" references an IMAGINARY corpus-wide index that doesn't exist. Authors can't actually validate against a real artifact. The test is aspirational — "imagine this TL;DR in a corpus index; does it work there?" — which collapses to style intuition. No operational grip.

**Defense:** Until a real corpus-wide index exists, the test is a DESIGN PRINCIPLE (use canonical terminology; be scannable) rather than a validation gate. It biases wording without requiring enforcement. Principle-level guidance is still useful.

**Collision:** Defense holds for principle framing; prosecution wins for test framing. The innovation conflated the two.

**Verdict: REFINE** — the "index test" is renamed to **"index-readiness principle"**: TL;DRs should be scannable and use canonical corpus terminology, so that IF a future corpus index is assembled, the TL;DRs work there. This is a principle in the style doc, not a self-check item. Removes the bogus test; keeps the design-driver value.

---

### 3. TL;DR-first authorship [CRITICAL: authorial practicality, reader utility]

**Landscape position preview:** Viable on utility; boundary on practicality (commitment-before-knowing concern).

**Prosecution:** Writing the TL;DR BEFORE the Finding body asks the author to commit to a specific answer before elaborating the reasoning. What if, during elaboration, the author realizes the answer needs qualification? The TL;DR is now wrong. Authors will either (a) drift silently from the TL;DR (commitment forgotten), (b) write a vague TL;DR to hedge against future revision, or (c) revise the TL;DR after writing Finding (defeating the "first-written" discipline).

**Defense:** The commitment is a STARTING DRAFT, not a final contract. If the finding body reveals the TL;DR was wrong, the TL;DR IS revised. The value of TL;DR-first is that it forces the author to state the answer explicitly BEFORE drifting into elaboration; revision after is expected. This is a craft discipline, not a rigid rule.

**Collision:** Both true. Resolution: state explicitly that TL;DR may be revised after finding body is written, as long as the final TL;DR is specific (Slack-test-passing) and the writing process STARTED with TL;DR.

**Verdict: SURVIVE (caveat)** — TL;DR-first authorship kept with explicit revision allowance. /MVL+ prompt directive: "Write TL;DR first as a commitment. If finding body reveals the TL;DR needs revision, revise it. The final TL;DR must pass the Slack test. First-written-then-revised is acceptable; written-only-after-finding is NOT."

---

### 4. Read-side extraction tests in self-check [CRITICAL: enforcement realism, falsifiability]

**Landscape position preview:** Boundary — valuable in concept; reliability-dependent on execution.

**Prosecution:** Author and reader are the SAME PERSON doing the self-check. The author just wrote the finding; their "30-second extraction" test is tainted by priming — they already know the answer. The test becomes a ritual ("yes, I can extract the answer in 30 seconds") without actual filtering. Rubber-stamping incentive is strong.

**Defense:** Mechanical tests reduce priming — "scan the TL;DR for a specific answer verb (not topic noun)" is a mechanical check that works even when the author is primed. Where the tests genuinely require fresh eyes (e.g., Slack test on the TL;DR), the author can delay 10 minutes and retry. Reduced priming > zero testing.

**Collision:** Rubber-stamping is the real risk; defense's mitigation (mechanical checks + time delay) is practical but requires discipline.

**Verdict: SURVIVE (caveat)** — read-side extraction tests kept with mechanical phrasing where possible:
- 30-second test → "Does the TL;DR contain a specific-answer sentence (not just inquiry-scope description)?" [mechanical]
- 60-second test → "Can you name 3 Next Actions from the Next Actions section without reading Finding?" [mechanical]
- Slack test → "If you paste just the TL;DR, does it make sense without the finding open?" [mechanical with self-test]
- Index-readiness principle → principle, not test (from refinement #2)

Rubber-stamping incentive persists; kill criterion: if self-check consistently passes everything without catching defects, revisit.

---

### 5. Type-specific gate examples in Next Actions [HIGH: specificity, authorial practicality]

**Landscape position preview:** Viable — examples aid rule application.

**Prosecution:** Four categories (process / spec / monitoring / deferred) may not cover all action types. What about "investigation" actions (spend time on a question without specifying an outcome)? Or "blocking" actions (must happen but have no clear agent yet)? The categories are enumerative; authors with off-pattern actions force-fit or skip.

**Defense:** The four categories are EXAMPLES, not an enumeration. Authors may invent new gate forms for off-pattern actions; the template provides common patterns. Examples reduce friction for common cases without forbidding uncommon ones.

**Collision:** Defense holds IF the template is explicitly framed as examples not exhaustive. Without that framing, prosecution wins.

**Verdict: SURVIVE (caveat)** — type-specific gate examples kept, explicitly framed as "common patterns, not exhaustive taxonomy." Authors may invent new gate forms for off-pattern actions. Five example categories covering: process change, spec change, monitoring, deferred, investigation (new — handles open-ended actions).

---

### 6. "Changes from Prior" metadata block [CRITICAL: coherence with locks; HIGH: backward compatibility]

**Landscape position preview:** Viable — clean addition for a specific case.

**Prosecution:** The block adds template complexity for a relatively rare case (findings that refine/supersede priors). For the 14/18 findings without a prior-refinement relationship, the block is absent — so authors reading the template wonder when they need it, conflate with TL;DR, or add it unnecessarily.

**Defense:** The block is EXPLICITLY OPTIONAL, triggered by the presence of `refines:` / `supersedes:` / `corrects:` in frontmatter. Authors who don't have those relationships don't add the block; authors who do have a canonical home for the lineage content that currently scatters into pre-Question paragraphs. Clean trigger (frontmatter field) prevents confusion.

**Collision:** Defense wins cleanly. The trigger mechanism (frontmatter field presence) eliminates interpretation drift.

**Verdict: SURVIVE** — CLEAN. The `Changes from Prior` block appears when frontmatter carries `refines:`, `supersedes:`, or `corrects:` relationship. Absent otherwise. Simple trigger; no ambiguity.

---

### 7. Corpus-level index framing (principle) [MEDIUM: novelty]

After refinement #2, this is now a PRINCIPLE in the style doc, not a self-check item.

**Prosecution:** Principles without enforcement are aspirational — they bias writing but don't compel it. Authors may nominally agree with "corpus-level scannability" but write TL;DRs that fail it anyway.

**Defense:** Style doc principles complement self-check rules — they set the vibe, not the gate. Useful for authors who internalize them; not load-bearing for those who don't. Low-cost principle.

**Collision:** Defense wins on low-cost-principle framing. Not every style rule needs a gate; some are just guidance.

**Verdict: SURVIVE (clean as principle)** — kept as style-doc principle (not self-check gate, per refinement #2). Biases TL;DR writing toward scannability + canonical terminology without enforcement burden.

---

### 8. Optional reader-navigation metadata header [MEDIUM: low maintenance, scope discipline]

**Landscape position preview:** Boundary — optional sections prone to erosion.

**Prosecution:** Optional sections that aren't used become noise over time. If authors skip the reader-navigation metadata (audience / read time / prerequisites) consistently for 10+ findings, the template section becomes decoration. Worse, the few findings that do use it become inconsistent across the corpus.

**Defense:** Optional ≠ unused. For long findings (200+ lines), the metadata is high-value. For short findings, skipping is correct. The section exists for the case when it helps; absence is the norm for short cases.

**Collision:** Erosion risk is real IF long findings ALSO skip the metadata. Test: do long findings currently have anything analogous?

**Kill criterion needed:** if no long finding uses the metadata for 20 findings after template deployment, retire the section.

**Verdict: SURVIVE (caveat)** — optional reader-navigation metadata kept for long findings, WITH kill criterion: if adoption stays at 0 for 20+ long-findings after deployment, retire. No mandate; opt-in adoption.

---

### 9. Three-layer enforcement with read-side tests [CRITICAL: enforcement realism]

**Landscape position preview:** Boundary — multi-layer enforcement risks bureaucratic overhead.

**Prosecution:** Three layers (prompt + style doc + self-check) × multiple checks per layer = bureaucratic overhead. Authors follow the letter (all boxes checked) without the spirit (TL;DRs still vague). Compliance theater without quality gain.

**Defense:** Layers work together; no single layer carries the full load. If prompt fails, style doc catches; if style doc fails, self-check catches. Degraded multi-layer enforcement is still better than perfect single-layer enforcement (which doesn't exist). The critique of multi-layer is really a critique of compliance theater, which applies to ANY enforcement.

**Collision:** Prosecution is correct that theater is possible; defense is correct that layers add robustness. Resolution: minimalism within each layer. Prompt = ≤6 lines of new directive. Style doc = 3 rules + 1 page rubric. Self-check = ≤10 items binary-checkable.

**Verdict: SURVIVE (caveat)** — three-layer enforcement kept, WITH minimalism discipline:
- /MVL+ prompt additions: concise directives, not exhaustive explanation
- Style doc: 3 rules + 1 self-check rubric; no elaborate style guide
- Self-check: ≤10 binary items (not subjective assessments)

If any layer bloats beyond these caps, prune. Bureaucratic overhead is the named failure mode.

---

## Assembly Check

The 9 survivors (as refined) form the **reader-extraction contract** architecture. Do they assemble under all critical dimensions?

| Dimension | Assembly result |
|---|---|
| Reader utility | YES — TL;DR + Slack test + read-side extraction tests + typed Open Questions all serve reader-extraction |
| Authorial practicality | YES (with caveats applied) — TL;DR-first with revision allowance + type-specific gate examples framed as patterns + minimalism within each enforcement layer |
| Enforcement realism | YES (with caveats) — three layers with minimalism caps; mechanical read-side tests; rubber-stamping kill criterion on self-check |
| Coherence with locks | YES — sensemaking LOCKS preserved (6-section structure, 3 style rules, size-adaptive, backward compat); innovation refined within bounds |
| Backward compatibility | YES — old findings valid; new template for new findings; no retroactive rewrite |
| Scope discipline | YES — each addition earns its place; optional metadata has kill criterion; index-test refined to principle (doesn't bloat self-check) |
| Specificity | YES with caveats — Slack test's "colleague" specified; TL;DR-first revision allowance explicit; gate examples framed as patterns |
| Falsifiability | YES — read-side tests phrased mechanically; self-check items binary |
| Novelty beyond decomposition | YES — read-side tests + TL;DR-first + Changes from Prior + corpus-readiness principle + type-specific examples all beyond decomposition's base |
| Low maintenance | YES (with kill criteria) — optional metadata has 20-finding kill criterion; self-check has rubber-stamp kill criterion; principles don't require maintenance |

**Assembly verdict: SURVIVE.** No phased build required — all additive, lightweight, with documented kill conditions if erosion appears. Ship together.

---

## Confirming Innovation's Kills

### K1. Hedges forbidden (3c) — KILLED by innovation as too extreme
**Check:** holds. Structurally necessary hedges (honest uncertainty) shouldn't be removed linguistically; specificity rule covers the real concern. **KILL CONFIRMED.**

### K2. Drop self-contained finding constraint (4c) — KILLED
**Check:** holds. Contradicts sensemaking lock; cross-references shouldn't replace first-time readability. **KILL CONFIRMED.**

### K3. LLM-primary reader design (7c) — KILLED as premature
**Check:** holds. Current reader is human; designing for LLM-extractability now distorts decisions. Structured frontmatter already present. **KILL CONFIRMED.**

### K4. Court rulings as lead transfer (6c pure) — KILLED
**Check:** holds. Wholesale adoption breaks backward-compat (renaming sections). Release-notes transfer captured the useful subset. **KILL CONFIRMED.**

### K5. Academic paper as lead transfer (6a) — DEMOTED
**Check:** holds. Accurate background framing; not novelty. **DEMOTION CONFIRMED.**

---

## Coverage + Convergence

**Accumulator update:**
- 9 candidates evaluated: 7 SURVIVE with caveats; 1 clean SURVIVE (Changes from Prior); 1 REFINE (index test → index-readiness principle). 0 critique-level KILLs.
- 5 innovation kills confirmed.
- Assembly SURVIVE (no phased build; self-pruning via kill criteria).

**Coverage assessment:**
- All 4 CRITICAL dimensions tested against every candidate
- All 4 HIGH dimensions tested
- 2 MEDIUM dimensions
- Unexplored region check: "what if the /MVL+ prompt becomes unwieldy?" — addressed via minimalism discipline in enforcement
- Unexplored region check: "what if authors drift from TL;DR-first?" — addressed via revision allowance clarification
- Unexplored region check: "what if short findings feel ceremonial with new template?" — size-adaptive rule (locked in sensemaking) handles this

**Convergence signal:**
- Clean SURVIVE: 1 (Changes from Prior metadata block — no caveats on critical dimensions)
- Other 7 survivors have engineering-gate caveats that are achievable (specificity clarifications, minimalism caps, kill criteria)
- Landscape STABLE — candidates landed in predicted regions; REFINE for index test was expected adjustment

**Overall: PROCEED** with documented engineering caveats:
- Slack test: specify "colleague = peer in this project with minimal inquiry-specific context"
- Index test → index-readiness principle (style-doc level)
- TL;DR-first: revision after body-writing allowed; final TL;DR must pass Slack test
- Read-side tests: mechanical phrasing; rubber-stamp kill criterion
- Type-specific gate examples: framed as patterns, not taxonomy
- Optional metadata: 20-finding adoption kill criterion
- Three-layer enforcement: minimalism caps per layer

---

## Convergence Telemetry

* **Dimensions evaluated:** 10 / 10, all critical covered: YES
* **Adversarial strength:** STRONG — prosecution named specific structural concerns per candidate (subjectivity of Slack test, imaginary index, commitment-before-knowing, rubber-stamp priming, enumeration-not-exhaustive, template bloat, aspirational-principles, erosion, bureaucratic overhead). Each would give the candidate's strongest advocate pause.
* **Landscape stability:** STABLE — candidates landed in predicted regions; 7/9 SURVIVE with caveats + 1 clean SURVIVE + 1 REFINE (anticipated refinement).
* **Clean SURVIVE:** YES — candidate 6 (Changes from Prior) passes all critical dimensions without engineering caveats. Other survivors have achievable caveats.
* **Failure modes observed:** None from the 7. Self-reference collapse was tested (this critique uses the existing finding template to critique a new template) — mitigated by empirical corpus evidence and adjacent-genre reference (RFCs, ADRs, release notes).
* **Overall: PROCEED** — dimensions covered, adversarial STRONG, clean SURVIVE exists, assembly passes all critical dimensions under documented caveats. Ready for finding.
