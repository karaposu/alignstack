# Innovation: Thinking Disciplines Audit

## User Input
devdocs/inquiries/thinking_disciplines_audit/

---

## Seed

Write the propagation work at quality-bar level. Sensemaking locked the taxonomy (4 categories), placements (all disciplines placed), and the scope of changes (7 specification pieces). What remains is CRAFT: how to word admission criteria so they're testable, how to describe composition patterns so they sharpen self-understanding, how to write rejection reasoning so it prevents relitigation, where to locate the canonical taxonomy so it doesn't drift. Biggest failure risk: the audit's outputs become documentation bureaucracy — rigorous on paper, unused in practice.

---

## Mechanism Applications (7 × 3 = 21 candidates)

### 1. Lens Shifting (Framer)

**1a (generic):** View the taxonomy as a CATEGORIZATION SYSTEM — labels for existing disciplines. Standard framing.

**1b (focused):** View the taxonomy as a **DISCOVERY AID for future disciplines**. Its primary value isn't labeling what exists — it's helping authors of NEW disciplines find their natural home. Under this lens, the admission criteria need to produce a USEFUL ANSWER for hypothetical future candidates, not just classify current ones.

**1c (contrarian):** View the whole audit as a **DOCUMENTATION UPDATE** — most of what's "new" is writing up what we already knew implicitly. The conservation verdict is the headline; the Primitive Profiles are alignment exercises. Don't over-architect the documentation; treat it as documentation and ship.

### 2. Combination (Generator)

**2a (generic):** Taxonomy + primitive profiles = disciplined compound-to-atom mapping. Standard.

**2b (focused):** **TESTABLE CATEGORY ADMISSION** — combine Cross-cutting criteria + primitive-compound concept + Popperian falsifiability. Category admission becomes a HYPOTHESIS: "This discipline IS Cross-cutting because it passes criteria 1-4." Future candidates submit this hypothesis; the criteria make it testable; pass/fail is observable. No bureaucratic admission committee.

**2c (contrarian):** Combine taxonomy spec + rejected-list + admission criteria + revival triggers into a **single FALSIFIABLE CATEGORY OBJECT**. Each category is an object with: members, inclusion criteria, rejected candidates with reasoning, and revival triggers (conditions under which rejections would be re-examined). Single artifact; inspectable; testable; evolvable.

### 3. Inversion (Framer)

**3a (generic):** Instead of "define categories → place disciplines," invert: "for each discipline, derive its natural category from its primitive profile + invocation pattern." Bottom-up placement.

**3b (focused):** **DESCRIPTIVE NOT PRESCRIPTIVE admission.** Instead of "admission criteria restrict what can enter Cross-cutting" (prescriptive gate), invert to "admission criteria DESCRIBE what MAKES something Cross-cutting" (descriptive observable properties). Falsifiable: if a discipline meets the descriptions, it IS Cross-cutting; if it doesn't, it isn't. No gatekeeping ritual.

*Depth check (invert again):* at a deeper level — maybe categories shouldn't exist at all; disciplines should have PROPERTIES (multi-location / pipeline-sequential / boundary / situational) and users look up by property, not by category. System-level inversion. But: sensemaking LOCKED the 4-category structure; don't relitigate. Revert to component-level inversion.

**3c (contrarian):** Invert "conservation verdict prevents relitigation." Instead, the rejected list is an **INVITATION for STRUCTURED re-examination**. Future candidates can legitimately challenge placements by showing the REVIVAL CONDITIONS have changed. Not "this was rejected, move on" — "this was rejected for reason X; under condition Y, reason X no longer holds." Relitigation becomes structured and productive, not forbidden.

### 4. Constraint Manipulation (Framer)

**4a (generic):** Add constraint — every discipline must have a Primitive Profile. Already in plan.

**4b (focused):** Add constraint — **Cross-cutting candidates must PASS a CORPUS-LOCATED AUDIT** (mirroring the primitive Phase A admission gate from `thinking_space_primitives`). Before a discipline is admitted to Cross-cutting, someone must locate an instance where the discipline's claimed multi-location property actually operated in existing outputs. Empirical grounding; no theoretical admissions.

**4c (contrarian):** Remove the constraint "4 categories" — allow arbitrary categories to emerge AS NEEDED, with admission criteria specified per category. The current 4 are the starting set; the framework allows 5+ when a candidate genuinely doesn't fit. This is structurally clean but invites category-bloat. Mitigated by: category admission requires SIC-loop rigor (a new category is itself a proposal that passes the four-criterion primitivity-test-equivalent).

### 5. Absence Recognition (Generator)

**5a (generic):** The audit has no mechanism for RE-AUDITING existing placements if the primitive set changes or a discipline's primitive profile drifts. Placement could go stale.

**5b (focused):** The audit proposes **no TOOLING or owner for consistency checks**. P7 is a punch list; who maintains it? When a new discipline is added, who updates the taxonomy? Without an owner or tooling, the consistency erodes over time.

**5c (contrarian):** **No CATEGORY-DISCOVERY MECHANISM.** Currently, a 5th category is introduced only when a candidate is discovered that doesn't fit the 4. This is passive. What's missing: an active check — at inquiry close, or at discipline-spec revision, ask "does the taxonomy still cover what the system does?" Missing-category detection as a regular check.

### 6. Domain Transfer (Generator)

**6a (generic):** Transfer from SOFTWARE ARCHITECTURE — disciplines as services; taxonomy as service catalog. Standard.

**6b (focused):** Transfer from **BIOLOGICAL CLASSIFICATION (biological taxonomy)**. Species (disciplines) belong to genera (categories); new species get placed by observable characters (admission criteria). Biology handles edge cases: convergent evolution (two unrelated disciplines evolving similar properties); hybrid organisms (a discipline that spans categories — like /intuit); ring species (continuous variation that resists discrete classification).

Lessons for our taxonomy:
- Categories are DESCRIPTIVE frameworks; re-classification happens when observations change
- Character-based admission is falsifiable (species placement can be wrong and correctable)
- Edge cases DRIVE re-classification, not forced fits
- The taxonomy includes its own CHANGE MECHANISM (new species discoveries update genera)

**6c (contrarian):** Transfer from **MUSEUM CURATION**. Taxonomy primarily serves VIEWERS (users, readers, future Claude instances), not SPECIMENS (the disciplines themselves). The Cross-cutting category should be designed for the reader encountering it, not for architectural elegance. Under this transfer: every category has a "visitor card" — one sentence for the non-expert reader: "This is X category; these disciplines live here because Y." Reader-first documentation.

### 7. Extrapolation (Generator)

**7a (generic):** As more disciplines are added over time, categories fill; plan for growth. Standard.

**7b (focused):** **If the typed primitive set evolves**, Primitive Profiles evolve too. The profiles need VERSIONING paired with primitive set version. When a new primitive is admitted (e.g., Mood becomes operational in Phase C+), existing profiles may need to note it under "deliberately absent" or "secondary." Profile updates become a Baldwin-cycle-style refinement — profile refinements are SIC-loop candidates when primitives change materially.

**7c (contrarian):** If LLMs improve substantially, the discipline specs themselves may become **smaller** (less scaffolding needed; more primitive operations delegated to substrate). Taxonomy rigor might become overkill. Plan for EVENTUAL SIMPLIFICATION, not just growth. Mitigation: substrate-versioned delegation (from `/intuit`'s model) already captures this pattern; apply to discipline specs too. When substrate maturity increases, some discipline scaffolding can be removed.

---

## Convergence Analysis

Four independent convergences — robustness-tested survivors:

**Convergence 1: Descriptive-not-prescriptive admission criteria**
Mechanisms: 3b (descriptive inversion), 6b (biological classification — character-based descriptive placement), 5a (re-auditing requires descriptive approach to adapt), 1b (discovery aid needs to DESCRIBE what the reader sees)
→ Cross-cutting admission criteria are DESCRIPTIVE (observable properties that describe what makes a discipline Cross-cutting) rather than PRESCRIPTIVE (gates that admit or reject). Falsifiable: if a discipline meets the descriptions, it IS Cross-cutting; if it doesn't, it ISN'T. No bureaucratic committee; no gatekeeping ritual.

**Convergence 2: Falsifiable taxonomy + structured relitigation**
Mechanisms: 2b (testable category admission), 2c (falsifiable category object), 3c (structured re-examination via revival triggers), 4b (corpus-located audit for candidates)
→ The taxonomy is a set of FALSIFIABLE HYPOTHESES. Categories have explicit revival triggers — conditions under which rejected candidates would be re-examined. The rejected list is not a prohibition; it's a structured invitation. Future candidates legitimately challenge placements by showing triggers have fired. Relitigation becomes structured and productive.

**Convergence 3: Reader-first documentation**
Mechanisms: 6c (museum curation), 1b (discovery aid), implicit in P5 (prevent relitigation via rejection reasoning) and P7 (cross-reference consistency for discoverability)
→ The audit's artifacts primarily serve future READERS — users encountering the system, future Claude instances, anyone authoring a new discipline. Documentation style and placement should be reader-optimized: visitor cards per category; cross-links; "why this way" reasoning inline.

**Convergence 4: Evolution hooks + versioning**
Mechanisms: 7a (growth), 7b (profile versioning with primitive set), 5a (re-audit mechanism), 5c (category-discovery mechanism), 7c (substrate-maturity simplification)
→ The taxonomy and profiles need EVOLUTION HOOKS. Primitive Profiles version with the primitive set. Categories can be proposed via SIC loop when a candidate doesn't fit. Regular sufficiency checks catch drift. Substrate maturity triggers simplification opportunities. The discipline set is not a frozen snapshot — it's a living system.

---

## Key Innovations

### 1. Descriptive admission criteria format (Convergence 1, 3b focused) — REFINEMENT for P1

Cross-cutting's four admission criteria are written as DESCRIPTIONS, not gates:

**Current (decomposition's draft):**
> 1. Multi-location invocation (invokable at multiple points in the SIC loop)
> 2. Spec-quality (same bar as Core)
> 3. Distinct primitive profile (not a sub-set of another discipline's)
> 4. Always-available infrastructure (not on-demand per problem)

**Refined (descriptive):**
> A discipline is Cross-cutting when — observably — the following hold:
> 1. **Multi-location in operation:** the discipline is invoked at more than one point in the SIC loop in practice (not theoretically — observably)
> 2. **Spec-quality in documentation:** numbered process + named failure modes + convergence + I/O + distinguishing definition are all present and substantive
> 3. **Distinct primitive profile:** the load-bearing primitives are not a subset of any Core discipline's load-bearing primitives (atom-level distinctness)
> 4. **Always-available infrastructure in use:** other disciplines draw on it routinely, not just in special cases

This reframing makes admission EVIDENCE-BASED rather than claim-based. Candidate Cross-cutting disciplines produce evidence for each observable; the evidence either exists or doesn't.

### 2. Corpus-located discipline audit (4b focused) — ADDITION to P1

Mirror the primitive Phase A admission gate: before a Cross-cutting discipline is admitted, someone must locate an instance in the existing corpus where the discipline's multi-location property actually operated. For /intuit's case, this is easy — /intuit has been designed from the start with multi-location use cases (inside /innovate, inside /td_critique, standalone, pipeline-early). The corpus audit documents this.

For future candidates, the audit is non-trivial and prevents theoretical admissions.

### 3. Falsifiable taxonomy with revival triggers (Convergence 2) — REFINEMENT for P5

The "Rejected After Consideration" section in finding.md gets enriched with **revival triggers** — the specific conditions under which each rejection would be re-examined:

**Current (decomposition's draft):**
> Reorganization candidates (11 items) — [numbered list with structural reasoning per rejection]

**Refined:**
> Reorganization candidates (11 items):
> 1. **Force /intuit into Core with sub-classification** — REJECTED (sub-classification creates uneven Core definition). **Revival trigger:** if a second Cross-cutting candidate fails to materialize within 12 months AND /intuit's multi-location property turns out to be used only in 1 location in practice, the sub-classification path becomes cheaper than maintaining a category-of-one.
> 2. **Merge /explore and /sense-making** — REJECTED (loses "exists" vs "means" distinction). **Revival trigger:** if operation reveals the two disciplines are consistently run together with no independent value, revisit.
> ... [for each rejection]

This converts the rejected list from a prohibition into a structured invitation — future readers know exactly what would re-open each closed question.

### 4. Single-artifact category object (2c contrarian) — NEW artifact format

Each category is a single file or section with unified structure:

```yaml
category: Cross-cutting
definition: "Disciplines that operate as always-available infrastructure invoked from multiple points in the SIC loop, providing services other disciplines consume."
admission_criteria:
  - name: multi_location_in_operation
    description: "..."
    evidence_required: "..."
  - [three more]
members:
  - name: /intuit
    admission_evidence: "..."
    corpus_audit_instance: "..."
rejected_candidates:
  - name: calibration_discipline
    reason: "Already owned by /intuit Phase B+"
    revival_trigger: "If /intuit ownership becomes insufficient in practice"
  - [three more]
future_candidates:
  - name: consolidation
    why_deferred: "..."
    revival_trigger: "..."
```

One artifact per category; inspectable; testable; evolvable. Applied to all 4 categories.

### 5. Per-category visitor card (6c contrarian) — REFINEMENT for P1

Each category has a one-sentence "visitor card" for non-expert readers at the top of the category documentation:

- **Core:** "These five disciplines run in sequence (E→S→D→I→C) for every inquiry."
- **Cross-cutting:** "These disciplines are always available — any discipline can call them at any time."
- **Boundary:** "These two disciplines run between cycles, looking backward (Reflect) or forward (Navigate)."
- **Situational:** "These disciplines are specialized — invoked when the specific situation calls for them."

Reader can tell from the visitor card whether a given need matches the category, without reading the full admission criteria.

### 6. Primitive Profile versioning (7b focused) — REFINEMENT for P2

Each Primitive Profile carries a version tag paired with the primitive set version:

```markdown
## Primitive Profile
_Primitive set version: 11.0 (Phase A+B admitted; modulators deferred)_
_Profile version: 1.0_
_Last updated: 2026-04-22_

- load-bearing: ...
- secondary: ...
- deliberately absent: ...
- composition pattern: ...
```

When the primitive set changes (e.g., Phase C+ modulators become operational), profiles are reviewed for impact. Drift is visible via version mismatch.

### 7. Category-sufficiency check protocol (5c contrarian) — NEW process

At each inquiry close, one question is added to the reflection step: **"Did this inquiry reveal a cognitive operation that fits no existing category?"** If yes, the observation is logged to a "category-sufficiency log"; patterns over time become seeds for proposing a 5th category via SIC loop. Active check, not passive waiting.

Lightweight: one question per inquiry. Log maintenance: a single file. Proposal trigger: accumulation of observations at a rate TBD by operation.

### 8. Canonical taxonomy location (P7 decision) — ARCHITECTURAL CHOICE

Decomposition deferred to innovation: where does the taxonomy spec LIVE canonically?

**Candidates evaluated:**
- **Inside `/MVL+` command spec** — convenient (MVL+ already orchestrates disciplines) but mixes meta-orchestration with taxonomy
- **Dedicated `enes/discipline_taxonomy.md` file** — clean separation; parallel to other `enes/` stable-view files
- **Section in existing `enes/thinking_space_dynamics.md`** — thematically related (disciplines use primitives from there) but makes the file do double duty
- **Distributed across command specs** (each command declares its category) — no single source of truth; drift risk

**Decision:** create `enes/discipline_taxonomy.md` as the canonical location. Parallel to `enes/thinking_space_dynamics.md` (primitives) and `enes/intuit.md` (cross-cutting discipline). Clean separation; reader-discoverable; single source of truth.

`/MVL+`, command specs, and other `enes/` files reference it rather than duplicating.

### 9. Reader-first documentation style guide (Convergence 3) — REFINEMENT for P7

P7 (cross-reference consistency) gets explicit reader-first style principles:

- **Every category has a visitor card** at the top (1 sentence)
- **Every cross-reference includes reasoning**: not just "see X" but "see X because [why the reader should care]"
- **Rejected reasons link to revival triggers** so a reader who disagrees with a rejection can see the path to re-opening it
- **Primitive Profiles include "deliberately absent" field** so the reader sees what the discipline doesn't do, not just what it does
- **Timing notes explicit** (when a spec section ships / becomes active) so readers don't build on unbuilt features

These are style rules, not additional content. Apply consistently across the 7 decomposition pieces.

### 10. Evolution-hooks inline (Convergence 4) — ADDITION across artifacts

Each written artifact from the 7 decomposition pieces includes at least one EVOLUTION HOOK — a specific line noting what would trigger revision:

- Taxonomy (P1): "When a candidate fails all 4 category admissions, a 5th category SIC loop may be proposed."
- Primitive Profiles (P2): "When primitive set version changes, profiles are reviewed for impact at that primitive's scope."
- Pipeline-early notes (P3): "When /intuit Phase D ships (default-on), this note moves from optional to standard."
- N refinement (P4): "When corpus_limit_seeds prove low-value, this consumption may be deprecated."
- Conservation verdict (P5): "When a revival trigger fires on a rejected candidate, the audit re-opens for that item."
- Future-candidate register (P6): "When a trigger fires, the candidate moves from register to active inquiry seed."
- Cross-reference punch list (P7): "When a new file needs to reference the taxonomy, add here to prevent silent drift."

Evolution hooks prevent the artifacts from becoming stale monuments.

---

## Assembly

```
REFINED MVP (convergence-assembled):

TAXONOMY SPEC (P1) — canonical at enes/discipline_taxonomy.md
  - 4 categories with per-category visitor cards (reader-first)
  - Cross-cutting admission criteria: DESCRIPTIVE (observable properties)
  - Corpus-located audit required for Cross-cutting candidates
  - Per-category: definition + visitor card + admission criteria + members + rejected + future candidates + revival triggers
  - Single-artifact category object format per category

PRIMITIVE PROFILES (P2) — per-discipline Profile section with:
  - Template including version pair (profile version + primitive set version)
  - Load-bearing / secondary / deliberately absent primitives
  - Composition pattern (1 sentence per discipline)
  - 8 disciplines covered (5 Core + /intuit + 2 Boundary)
  - Evolution hook: primitive set version change triggers profile review

PIPELINE-EARLY NOTES (P3) — per-Core-discipline 1-2 sentence note:
  - Template with timing (ships with /intuit Phase C)
  - Per-discipline mitigation referencing existing failure modes
  - Evolution hook: Phase D promotes note to standard

N REFINEMENT (P4):
  - Consume corpus_limit_seeds as new input type
  - R non-change rationale documented
  - Evolution hook: low-value consumption → deprecation path

CONSERVATION VERDICT (P5):
  - "Audited and Confirmed Unchanged" list
  - "Rejected After Consideration" list with REVIVAL TRIGGERS per rejection
  - "Accepted Changes" list with scope + timing
  - Purpose framing: reader encountering this document in 6 months can understand without re-running audit

FUTURE-CANDIDATE REGISTER (P6) — in enes/desc.md:
  - 3 initial entries: consolidation / parallel-MVL / Level-3 intuition-space
  - Format: candidate + why deferred + revival trigger
  - Maintenance rules: trigger → active seed; reject → rejected list

CROSS-REFERENCE PUNCH LIST (P7):
  - Reader-first style principles (visitor cards; reasoned cross-refs; deliberately-absent fields; timing notes)
  - Canonical location: enes/discipline_taxonomy.md
  - Evolution hook: new files adding references must register here

CATEGORY-SUFFICIENCY CHECK (new process, lightweight):
  - One question at inquiry close: "Did this inquiry reveal a cognitive operation fitting no existing category?"
  - Observations accumulate in sufficiency log
  - Pattern triggers 5th-category proposal via SIC loop
```

**Emergent value:** The audit's output stops being STATIC DOCUMENTATION and becomes a LIVING TAXONOMY. Every artifact has evolution hooks; admission criteria are descriptive and testable; rejections include revival triggers; a sufficiency check prevents category-drift. The conservation verdict is the HEADLINE; the evolution machinery prevents the conservation from becoming a fossil.

---

## Verdicts

### SURVIVE (MVP)

- **Descriptive admission criteria** (Convergence 1) — REFINEMENT for P1; turns gates into observable descriptions
- **Corpus-located discipline audit** (4b) — ADDITION to P1; empirical grounding for Cross-cutting admission
- **Falsifiable taxonomy with revival triggers** (Convergence 2) — REFINEMENT for P5; rejections include re-opening conditions
- **Single-artifact category object** (2c) — NEW format for P1 per category; unified inspectable structure
- **Per-category visitor card** (6c) — REFINEMENT for P1 reader-first; 1-sentence per category
- **Primitive Profile versioning** (7b) — REFINEMENT for P2; profile version paired with primitive set version
- **Category-sufficiency check protocol** (5c) — NEW lightweight process; inquiry-close question
- **Canonical taxonomy location:** `enes/discipline_taxonomy.md` — ARCHITECTURAL CHOICE for P7
- **Reader-first documentation style** (Convergence 3) — REFINEMENT for P7 style principles
- **Evolution hooks inline** (Convergence 4) — ADDITION across all 7 artifacts; specific line noting what triggers revision

### REFINE (deferred — candidates but not MVP)

- **Arbitrary-category framework** (4c) — allows N+ categories with per-category admission. Valuable structurally but premature: 4 categories are enough today; the sufficiency-check process (innovation #7) handles the discovery path without pre-building the framework.
- **Substrate-maturity discipline simplification** (7c) — plan for eventual simplification as LLMs improve. Noted as a future direction; no MVP action.
- **Bottom-up category derivation from profiles** (3a) — rather than placing disciplines into categories, derive categories from profile clusters. Conceptually interesting but inverts the sensemaking-locked flow; defer unless the current top-down placement proves wrong.
- **Property-based lookup (no categories)** (3b depth-check version) — disciplines described by properties, users look up by property. System-level inversion; contradicts locked 4-category taxonomy. Deferred as research direction.

### KILL

- **Pure-prescriptive admission criteria** — KILLED by descriptive reframing (Convergence 1). Prescriptive criteria invite bureaucracy without adding falsifiability. Seed: the criteria LIST survives; only the framing changes.
- **Rejected list as prohibition** — KILLED by revival triggers (Convergence 2). Prohibitions foreclose on future candidates; triggers structure re-examination. Seed: the rejection reasoning is preserved; the framing opens rather than closes.
- **Static taxonomy documentation** — KILLED by evolution hooks (Convergence 4). Documentation without hooks becomes stale; hooks keep it alive. Seed: content is preserved; hooks are added, not replacing.
- **"Documentation update" framing for the whole audit** (1c contrarian) — KILLED as too minimal. The conservation verdict has structural value (prevents relitigation, validates the discipline set); treating the whole audit as "just docs" undersells the architectural claim. Seed: write efficiently, but don't pretend the audit is only cleanup.
- **Community-of-one taxonomy** (taxonomy-of-one for Cross-cutting) — implicit kill. Without revival triggers + future-candidate register, Cross-cutting as a single-member category looks over-engineered. With them, it's a growing category with documented candidates.

---

## Mechanism Coverage

- **Generators applied:** 4/4 (Combination, Absence Recognition, Domain Transfer, Extrapolation all produced load-bearing survivors)
- **Framers applied:** 3/3 (Lens Shifting, Constraint Manipulation, Inversion all produced load-bearing survivors)
- **Convergence:** YES — 4 independent convergences (descriptive-not-prescriptive admission; falsifiable taxonomy with revival triggers; reader-first documentation; evolution hooks + versioning)
- **Survivors tested:** 10 MVP survivors — each tested for novelty, scrutiny survival, fertility, actionability, mechanism independence (full details in upcoming finding; critique will formalize)
- **Failure modes observed:** None. The conservatism bar held at the structural level (sensemaking's locks preserved); innovation added evolution machinery without over-reaching.
- **Overall: PROCEED** — sufficient coverage + 4 convergences + 10 tested survivors + assembly produces emergent value (living taxonomy with evolution hooks rather than static documentation)

---

## Innovation-Level Changes to Decomposition (for Critique to validate)

Structural additions/changes beyond what sensemaking+decomposition locked:

- **Descriptive admission criteria framing** (not prescriptive) — changes P1's criteria wording
- **Corpus-located audit for Cross-cutting candidates** — adds to P1; new admission requirement
- **Revival triggers in rejected list** — extends P5 format with per-rejection revival conditions
- **Single-artifact category object** — P1 format refined to unified per-category object
- **Per-category visitor cards** — P1 addition; 1 sentence per category for non-expert readers
- **Primitive Profile version pairing** — P2 format addition; version tags prevent drift
- **Category-sufficiency check protocol** — NEW process; inquiry-close question + log
- **Canonical taxonomy location** — `enes/discipline_taxonomy.md` (dedicated file, not in /MVL+ or distributed)
- **Reader-first style principles** — P7 style refinement
- **Evolution hooks inline in all artifacts** — cross-cutting addition preventing staleness

Critique should test:
- Do descriptive admission criteria work in practice, or do they collapse to prescriptive gates anyway?
- Does the corpus-located audit for Cross-cutting candidates add value over simply reading the candidate's own spec?
- Are revival triggers writable in a way that's falsifiable, or will they be vague aspirations ("if conditions change")?
- Does the single-artifact category object reduce or increase maintenance burden vs. distributed content?
- Do visitor cards help readers, or are they fluff?
- Is Primitive Profile versioning worth the tracking overhead for 8 profiles?
- Does the category-sufficiency check actually get executed at inquiry close, or is it silently skipped?
- Is a dedicated `enes/discipline_taxonomy.md` the right location, or does it fragment the `enes/` set?
- Do evolution hooks end up followed, or do they become decorative?
- Does the overall assembly deliver the "living taxonomy" emergent value, or just add documentation overhead?
