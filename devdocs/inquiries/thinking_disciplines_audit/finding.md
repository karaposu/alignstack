---
status: active
---
# Finding: Thinking Disciplines Audit — Re-evaluation Against Current Understanding

## Question

**Given what we now know about thinking-space dynamics (three-layer architecture), intuition (the /intuit discipline), and the typed 11-primitive set, does the current thinking-discipline set (E/S/D/I/C + R/N + Situational) have structural gaps, unjustified overlaps, or missing disciplines — such that creating a new discipline or reorganizing the existing set produces HUGE OBVIOUS BENEFIT, or is the set already good enough that conservatism is warranted?**

### Goal

(1) A conservation verdict by default; (2) structural mapping of existing disciplines against the new understanding; (3) /intuit placement; (4) genuine-gap identification; (5) unjustified-overlap identification; (6) pipeline re-evaluation; (7) explicit no-change-needed regions; (8) rigorous benefit/cost justification for any proposed changes.

---

## Finding

### 1. The short answer

**The existing thinking-discipline set is structurally sound. Conservation verdict is justified by rigorous audit, not default.** Every Core discipline has a distinct primitive profile (atom-level distinctness); each discipline is use-validated across the inquiry chain that produced the current understanding. No reorganization passes the HUGE OBVIOUS BENEFIT bar.

**Three changes pass:**
1. Place `/intuit` in a new 4th category: **Cross-cutting**
2. Add lightweight alignment touches (Primitive Profiles, Pipeline-early notes, minor N refinement)
3. Formalize the conservation verdict so future readers don't relitigate

The user's skepticism was correct — but this audit gives it architectural backing, not just preservation.

### 2. The 4-category taxonomy

Taxonomy extends from 3 categories to 4. The existing three (Core / Boundary / Situational) define themselves against mutually-exclusive properties (pipeline-sequential vs between-cycle vs on-demand); `/intuit` satisfies properties from all three simultaneously. No existing category fits without breaking its own definition — extension is structural, not preferential.

| Category | Visitor Card (reader orientation, 1 sentence) | Members |
|---|---|---|
| **Core** | These five disciplines run in sequence (E→S→D→I→C) for every inquiry. | `/explore`, `/sense-making`, `/decompose`, `/innovate`, `/td_critique` |
| **Cross-cutting** | These disciplines are always available — any discipline can call them at any time. | `/intuit` (first resident; future candidates via admission criteria) |
| **Boundary** | These two disciplines run between cycles, looking backward (Reflect) or forward (Navigate). | `/reflect` (R, backward), `/navigate` (N, forward) |
| **Situational** | These disciplines are specialized — invoked when the specific situation calls for them. | `/comprehend`, `/elaborate`, `/align`, `/wayfinding`, and others (organic set) |

### 3. Cross-cutting admission criteria — DESCRIPTIVE, not prescriptive

Admission criteria for Cross-cutting are **observable properties with required evidence**, not gates. A discipline is Cross-cutting when — observably — all four hold:

1. **Multi-location in operation**
   - Description: invoked at more than one point in the SIC loop, in practice (not theoretically)
   - Evidence required: cite ≥2 specific points in existing SIC-loop outputs where the discipline is invoked; one-location-theoretical-invocability doesn't count
2. **Spec-quality in documentation**
   - Description: numbered process + named failure modes + convergence criteria + clear I/O + distinguishing definition all present and substantive
   - Evidence required: point to each of the 5 spec-quality components in the discipline's written specification
3. **Distinct primitive profile**
   - Description: load-bearing primitives are not a subset of any Core discipline's load-bearing primitives
   - Evidence required: show the primitive profile (from the spec's Primitive Profile section); demonstrate at atom-level that it includes primitives absent from Core profiles
4. **Always-available infrastructure in use**
   - Description: other disciplines draw on it routinely, not just in special cases
   - Evidence required: cite ≥2 specific cases in existing discipline specs or design docs where this discipline is invoked as routine input, not special case

This reframing makes admission evidence-based. Candidates produce evidence per observable property; the evidence either exists or doesn't. No bureaucratic admission committee; no definitional arguments.

### 4. Corpus-located discipline audit (admission gate)

Before a Cross-cutting discipline is admitted, the audit must locate an instance where the discipline's claimed properties actually operated. For `/intuit`, this is light — its `enes/intuit.md` design documents multi-location integration with `/innovate`, `/td_critique`, standalone, and pipeline-early; the audit points to those sections.

For future Cross-cutting candidates, the audit is non-trivial and prevents theoretical admissions. The audit format is:

```yaml
discipline: <name>
audit:
  - property: multi_location_in_operation
    evidence:
      - cite: <path + excerpt showing location 1>
      - cite: <path + excerpt showing location 2>
  - property: spec_quality_in_documentation
    evidence: <pointers to spec sections>
  - property: distinct_primitive_profile
    evidence: <profile location + atom-level distinctness argument>
  - property: always_available_infrastructure_in_use
    evidence:
      - cite: <path + excerpt showing routine invocation 1>
      - cite: <path + excerpt showing routine invocation 2>
reviewers: 2
verdict: PASS | REFINE | FAIL
```

### 5. Primitive Profile per discipline (8 profiles)

Each Core + Cross-cutting + Boundary discipline gets a `## Primitive Profile` section (~100 words). Situational disciplines skip (maintenance burden without benefit; rationale documented).

Profile format:

```markdown
## Primitive Profile
_Primitive set version: <N.M>_
_Profile version: <N.M>_

- **Load-bearing primitives:** [3-5 primitives that drive this discipline's work]
- **Secondary primitives:** [used in support roles]
- **Deliberately absent:** [primitives this discipline does NOT use — for contrast]
- **Composition pattern:** [1 sentence: how load-bearing primitives interact to produce the discipline's signature output]
```

**Profile content (summary; full text in each discipline spec):**

| Discipline | Load-bearing | Secondary | Deliberately absent |
|---|---|---|---|
| `/explore` | Attention-pointer, Focus-deep, Working Memory, Context-framing, Salience (Phase B) | Metacognition, Intuition-similarity | Simulation |
| `/sense-making` | Simulation, Working Memory, Intuition-similarity, Metacognition | Inhibition, Context-framing | Evaluation-as-ranking |
| `/decompose` | Working Memory, Attention-pointer, Simulation, Intuition-similarity | Metacognition, Inhibition | — |
| `/innovate` | **Simulation** (dominant), Intuition-similarity, Working Memory | Metacognition, Inhibition, Evaluation | Context-framing-as-narrowing |
| `/td_critique` | **Evaluation**, **Inhibition**, Metacognition, Simulation | Intuition-similarity | exploratory Attention-pointer |
| `/intuit` | Simulation, Intuition-similarity, Metacognition, Inhibition, Working Memory | Context-framing, Attention-pointer, Focus-deep | — |
| `/reflect` (R) | Metacognition, Working Memory, Evaluation | Intuition-similarity | Simulation |
| `/navigate` (N) | Simulation, Evaluation, Intuition-similarity | Working Memory, Metacognition | Inhibition |

Each discipline has a DISTINCT profile — atom-level distinctness across the set. This is empirical evidence (not theoretical claim) that the disciplines are real structural units.

### 6. Primitive Profile versioning (REFINED from innovation)

Profiles carry version pairs (profile version + primitive set version). When the primitive set increments, profiles are flagged for review via an explicit **review trigger protocol**:

- When primitive set version increments materially (e.g., a primitive gets admitted or refined), affected profiles are flagged
- Review window: within N inquiries that use the affected primitives, OR explicit re-review inquiry if none trigger naturally
- Review outcome documented: version bumped because reviewed (with 1-sentence note) OR version held because no review needed
- **Rubber-stamp kill criterion:** if the pattern "version bumped without review note" appears repeatedly, kill versioning — it has become theater

Without the review protocol, versioning is deferred. This prevents the failure mode critique named: versioning as rubber stamp.

### 7. Pipeline-early /intuit interaction notes (Core specs)

When `/intuit` Phase C+ ships, each Core discipline spec gets a brief section:

```markdown
## Pipeline-Early /intuit Interaction

When /intuit runs before this discipline (Phase C opt-in / Phase D default-on), [what changes].
Mitigation: [jump-scan-equivalent rule that prevents pre-seeding from narrowing this discipline's work].
```

**Per-Core-discipline content:**

- **`/explore`:** changes — starts with pre-loaded attention anchors from corpus findings matching the branch question. Mitigation — Failure Mode 3 (False Confidence) + jump-scan requirement: before convergence, explicitly scan a region DIFFERENT from the pre-seeded attention.
- **`/sense-making`:** changes — gets pre-seeded analogies to previously-stabilized models. Mitigation — definitional-internal perspective check forces examining the seeds' own assumptions.
- **`/decompose`:** changes — may have pre-seeded coupling intuitions. Mitigation — bottom-up validation (Step 3) tests top-down boundaries against atoms; any pre-seeded coupling bias is caught.
- **`/innovate`:** changes — gets pre-loaded seed candidates from `/intuit`'s convergent matches. Mitigation — 7-mechanism coverage includes Inversion + Absence Recognition that resist seed confirmation; pre-seeds feed generation, not conclusion.
- **`/td_critique`:** changes — gets pre-loaded prior-case hypotheses for prosecution/defense. Mitigation — explicit requirement that prosecution construct the STRONGEST case (not whatever the pre-seed suggests); pre-seeds are inputs, not verdicts.

Timing rule: these notes ship with `/intuit` Phase C; before that, the section is absent.

### 8. N (Navigate) refinement — consume corpus_limit_seeds

Minimal addition to `/navigate`'s Input Sources section when `/intuit` Phase β ships:

> When `/intuit` Phase β is active, `/navigate` consumes `corpus_limit_seeds` (from `/intuit`'s failed-projection log) as a new input type. These surface latent inquiry candidates representing structural patterns the corpus cannot yet resolve. `/navigate` treats them alongside its existing 15-type taxonomy as NEW-INQUIRY-SEED items.

`/reflect` (R) is **explicitly unchanged**. Rationale documented in `/reflect`'s spec to prevent future "should we also update R?" loops: "R's scope is process quality, not invocation data richness. Data availability doesn't require scope change."

### 9. Conservation Verdict (formalized)

The central output of the audit — explicitly documented to prevent future relitigation.

#### Audited and Confirmed Unchanged

Each item below was audited against the new understanding (typed primitive set + `/intuit` + three-layer architecture) and confirmed structurally sound:

- **Core disciplines (`/explore`, `/sense-making`, `/decompose`, `/innovate`, `/td_critique`)** — distinct primitive profiles per discipline; use-validated across the inquiry chain; no atom-level redundancy
- **Boundary disciplines (`/reflect`, `/navigate`)** — temporally complete at 2 (backward + forward); adding a third without a new temporal direction manufactures a gap
- **Situational discipline set** — organically coherent; individually specialized; acceptable messiness; no structural redundancy
- **Pipeline sequence E → S → D → I → C** — alternatives (S before E, D before S, I before D) produce worse orderings due to dependencies
- **`/MVL+` as meta-orchestrator** — correct tier; only refinements for `/intuit` integration needed, no restructuring
- **Primitive composition within disciplines** — disciplines are primitive COMPOUNDS, not primitive instances; disaggregating would break working bundles

#### Rejected After Consideration

Each rejection includes **structural reasoning** + **revival trigger** (specific condition under which the rejection would be re-examined). This converts the rejected list from prohibition to structured invitation.

**Reorganization candidates (11):**

1. **Force `/intuit` into Core with sub-classification (`pipeline-sequential: false`)**
   - Rejected: requires re-defining Core's pipeline-sequential property; equivalent cost to new category but less clean
   - Revival trigger: if no second Cross-cutting candidate materializes within 12 months of `/intuit` Phase A AND `/intuit`'s multi-location property turns out to be used in only 1 location in practice, the sub-classification path becomes cheaper than maintaining a category-of-one

2. **Force `/intuit` into Situational**
   - Rejected: `/intuit` is foundational infrastructure (like Core), not on-demand specialized; structural misfit
   - Revival trigger: if `/intuit` in practice is invoked only on-demand for specific situations (not as always-available substrate), reassess

3. **Split `/innovate` into `/innovate-generate` + `/innovate-test`**
   - Rejected: current `/innovate` handles both Generate and Test phases well; split creates duplication
   - Revival trigger: if `/innovate` runs frequently produce ungrounded novelty (Generate without Test), the split may be structurally required

4. **Merge `/explore` and `/sense-making`**
   - Rejected: loses the distinction between "what exists" (E) and "what it means" (S); dependency direction is real
   - Revival trigger: none identified — the distinction is structural; merger would require a fundamentally different cognitive model

5. **Rename `/sense-making` to emphasize Simulation primitive**
   - Rejected: aesthetic only; no structural benefit; naming change disrupts users
   - Revival trigger: none identified — aesthetic changes don't reach the HUGE OBVIOUS BENEFIT bar

6. **Primitive-grouping redesign (each primitive gets a discipline)**
   - Rejected: primitives are atoms within disciplines, not disciplines themselves; disaggregation breaks working bundles
   - Revival trigger: none identified — this is a category mistake at the abstraction level

7. **Apply Primitive Profiles to Situational disciplines**
   - Rejected: maintenance burden without benefit; Situational set is organic
   - Revival trigger: if Situational disciplines become standardized (e.g., all run through `/MVL+` in a systematic way), profiles may add value

8. **Structural refinement to R (reflect) based on invocation trace availability**
   - Rejected: R's scope is process quality, not invocation data richness; data availability doesn't require scope change
   - Revival trigger: if invocation traces prove to carry process-quality signals R currently misses, reassess

9. **Extensive pipeline-early documentation in each discipline (beyond 1-2 sentences)**
   - Rejected: 1-2 sentences with mitigation pointer are sufficient; more is noise
   - Revival trigger: if brief notes prove inadequate (users miss the interaction), expand

10. **Eliminate `/MVL+` (make disciplines self-orchestrating)**
    - Rejected: meta-orchestration is real work; disciplines coordinating themselves creates distributed complexity
    - Revival trigger: if `/MVL+` becomes a pure pass-through with no coordination value, reassess

11. **Add third boundary discipline (real-time observation during cycle)**
    - Rejected: real-time observation is a PRIMITIVE operation (Metacognition), not a discipline; wrong abstraction level
    - Revival trigger: none identified — the abstraction-level mismatch is structural

**Missing-discipline candidates (4):**

1. **Calibration discipline (longitudinal calibration-over-time)**
   - Rejected: owned by `/intuit` Phase B+ (per-primitive and per-discipline calibration logs)
   - Revival trigger: if `/intuit`'s calibration proves insufficient or inappropriate for longitudinal operations, re-open

2. **Consolidation discipline (cross-inquiry merge)**
   - Rejected: deferred — real capability gap but low priority currently; parallel inquiries rare
   - Revival trigger: if parallel-inquiry rate exceeds N/month (N to be calibrated by operation) OR if Navigate's MERGE type consistently surfaces candidates that need systematic consolidation

3. **Intrinsic-valuation discipline**
   - Rejected: category mistake — intrinsic valuation is an INDICATOR (autonomy-gradient level), not a discipline-level operation
   - Revival trigger: none identified — abstraction-level mismatch is structural

4. **Real-time metacognition discipline**
   - Rejected: category mistake — real-time metacognition is a PRIMITIVE operating within disciplines, not a discipline itself
   - Revival trigger: none identified — abstraction-level mismatch is structural

#### Accepted Changes

1. **Taxonomy extension** — 3 categories → 4 categories (added Cross-cutting); `/intuit` placed in Cross-cutting; admission criteria explicit
2. **Primitive Profile sections** — added to 8 disciplines (Core + `/intuit` + Boundary); Situational skipped with rationale
3. **Pipeline-early interaction notes** — in 5 Core specs when `/intuit` Phase C+ ships
4. **N refinement** — consumes `corpus_limit_seeds` when `/intuit` Phase β ships; R explicitly unchanged with rationale
5. **Conservation verdict documented** — this section; includes revival triggers to enable structured future relitigation
6. **Future-candidate register** — maintained in `enes/desc.md`
7. **Canonical taxonomy location** — `enes/discipline_taxonomy.md` (new file); `enes/` charter clarified: "curated stable-view files for architectural concepts — one file per concept"

### 10. Evolution hooks inline

Each accepted change artifact includes at least one specific evolution hook (single line, specific trigger — no speculation):

- **Taxonomy spec:** "When a candidate fails all 4 category admissions AND a pattern of similar candidates accumulates in the sufficiency log, a 5th category SIC loop may be proposed."
- **Primitive Profiles:** "When primitive set version increments materially, profiles are flagged for review per the review trigger protocol."
- **Pipeline-early notes:** "When `/intuit` Phase D ships (default-on), this note moves from optional to standard."
- **N refinement:** "If `corpus_limit_seeds` consumption proves low-value after Phase β calibration, the consumption is deprecated."
- **Conservation verdict:** "When a revival trigger fires on a rejected candidate, that candidate re-enters consideration via SIC loop."
- **Future-candidate register:** "When a candidate's trigger fires, it moves from register to active inquiry seed. If a candidate is rejected after consideration, it moves to the rejected list with a revival trigger."

Hooks are ONE LINE each; specific trigger named; speculation killed. If an artifact accumulates 3+ hooks, it over-specifies and hooks consolidate or die.

### 11. Category-sufficiency check protocol (lightweight)

At inquiry close, one question added to the reflection step:

> **"Did this inquiry reveal a cognitive operation that fits no existing category?"**

Options: YES (describe briefly) / NO / UNCERTAIN (describe briefly).

Responses log to `devdocs/category_sufficiency.log` (single append-only file). No enforcement beyond checklist inclusion.

**Kill criterion:** if the log accumulates only "no" entries for >30 inquiries without discrimination (no "yes" or "uncertain"), the check is not producing signal — kill the protocol.

This is an active dragnet for missing categories rather than passive waiting.

### 12. Canonical taxonomy location: `enes/discipline_taxonomy.md`

The taxonomy spec lives at `enes/discipline_taxonomy.md`. Other files (`/MVL+`, command specs, other `enes/` files) reference it rather than duplicating.

**`enes/` charter clarified** (documented either in one of the existing `enes/` files or as a brief README):

> `enes/` holds curated stable-view files for architectural concepts — one file per concept. Current files: `thinking_space_dynamics.md` (three-layer architecture + typed primitive set), `intuit.md` (`/intuit` discipline spec), `desc.md` (autonomous consciousness goal), `discipline_taxonomy.md` (4-category discipline taxonomy). Future additions must pass the "curated stable-view of an architectural concept" test.

### 13. Reader-first documentation style principles

Applied consistently across the 7 decomposition pieces and downstream documentation:

- **Every category has a visitor card** (1 sentence orientation for non-expert readers at the top)
- **Every cross-reference includes reasoning** — not just "see X" but "see X because [why the reader should care]"
- **Rejected reasons link to revival triggers** so a reader who disagrees can see the path to re-opening
- **Primitive Profiles include "deliberately absent" fields** so readers see what the discipline doesn't do
- **Timing notes explicit** (when a spec section ships / becomes active) so readers don't build on unbuilt features

---

## Reasoning

### Why the conservation verdict is architecturally justified (not defensive)

Three independent checks converge on the verdict:

1. **Empirical use-validation:** every Core discipline was USED successfully across the inquiry chain that produced the typed primitive set, `/intuit`, and the three-layer architecture. If a discipline were broken, those inquiries would have failed. The audit itself is retrospective evidence.

2. **Atom-level primitive-profile distinctness:** each Core discipline has a load-bearing primitive profile that no other discipline shares. `/innovate` is Simulation-heavy; `/td_critique` is Evaluation+Inhibition-heavy; `/sense-making` is Simulation+Working-Memory+Intuition-similarity; etc. Disaggregating by primitive type would break working bundles — disciplines are primitive compounds that map onto actual units of cognitive work.

3. **Definitional coherence under new understanding:** the disciplines remain coherent when re-described using typed primitives, three-layer architecture, and `/intuit` integration. Nothing about the new understanding destabilizes the discipline definitions — only extends them (Primitive Profile sections; Pipeline-early interaction notes).

All three checks point the same direction. The verdict is evidence-based, not default.

### Why taxonomy extension was structural, not preferential

The existing 3 categories (Core / Boundary / Situational) define themselves against **mutually exclusive properties**: pipeline-sequential, between-cycle, on-demand. `/intuit` satisfies properties from all three simultaneously — foundational infrastructure (like Core) + cross-cycle operation (like Boundary) + situational-invokable (like Situational). The existing categories CANNOT accommodate `/intuit` without re-defining themselves. Definitional-internal contradiction justifies override (same structural pattern as thinking_space_primitives' current-4 override).

The Cross-cutting category has explicit admission criteria (descriptive, with evidence-required fields) so future candidates either meet the criteria or join another category. Category-bloat is prevented.

### Why descriptive admission criteria (not prescriptive)

Prescriptive criteria invite definitional arguments ("does this qualify?") and create bureaucratic admission rituals. Descriptive criteria with `evidence_required` fields invite empirical grounding ("show me the instance"). The framing is operational, not cosmetic — the evidence-required fields are the gate, not the criterion's label.

### Why revival triggers (not prohibition)

The rejected list is a map of "what was considered and why it didn't work." Without revival triggers, the list is a prohibition: "don't re-open this." With revival triggers, the list becomes a structured invitation: "this was rejected for reason X; under condition Y, reason X no longer holds."

Future candidates can legitimately challenge placements by showing triggers have fired. Relitigation becomes structured rather than forbidden. Readers who disagree with a rejection see a concrete path to re-opening.

The specificity test (time-bound OR condition-bound + falsifiable + observable) prevents triggers from becoming vague aspirations. Triggers that can't pass the test are marked "no revival trigger identified" — the rejection is explicit about being permanent absent structural change.

### Why `/intuit` is in Cross-cutting (not Core with sub-classification)

Core's definition is pipeline-sequential operation. Adding a non-sequential Core discipline requires re-defining Core. The re-definition is equivalent in cost to a new category — and less clean, because Core would gain an internal subdivision that doesn't apply uniformly to the other 5 members.

Counter-argument from critique: Cross-cutting might be a category-of-one forever. Resolution: future candidates (consolidation when triggered; Level-3 intuition-space generation; potential real-time-observation discipline) plausibly fit Cross-cutting. Strategic perspective: this category has >0 expected residents.

### Why the 4 missing-discipline candidates all failed

- **Calibration** — already owned by `/intuit` Phase B+. Adding a separate discipline would duplicate existing ownership.
- **Consolidation (cross-inquiry merge)** — real capability gap but low priority; deferred with trigger (parallel-inquiry rate threshold).
- **Intrinsic valuation** — CATEGORY MISTAKE. It's an AUTONOMY-INDICATOR (emerges over time from primitive compositions), not a discipline-level operation.
- **Real-time metacognition** — CATEGORY MISTAKE. It's a PRIMITIVE operating WITHIN disciplines, not a discipline itself.

The category-mistake rejections are structural — these candidates operate at different abstraction levels (indicator-level, primitive-level) than disciplines. No amount of discipline design fixes the mistake.

### Why R (Reflect) is explicitly unchanged

R's scope is process quality observation (backward-looking, single cycle). Invocation traces from `/intuit` provide richer DATA but don't change R's SCOPE. Data richness doesn't require scope change.

Documenting this explicitly prevents future "with invocation traces available, should R be updated?" loops. The answer is pre-documented: "No. R's scope is process quality, not data volume."

### Why N (Navigate) gets a minor refinement

N enumerates directions. `/intuit`'s `corpus_limit_seeds` surface latent inquiry candidates — failed-projection patterns that represent structural gaps the corpus can't yet resolve. These are directly relevant to N's direction-enumeration work as NEW-INQUIRY-SEED items.

The refinement is additive (new input type), not scope-changing. N's existing 15-type taxonomy remains; `corpus_limit_seeds` become input data for it.

### Why the MVP is NOT phased (unlike prior audits)

Prior inquiries (`intuition_as_discipline`, `thinking_space_primitives`) required phased builds because the assembled feature set was too large for a first ship. This inquiry's additions are ALL documentation and process — lightweight, integrated, low-cost. Ship together:

- Taxonomy spec: write once; static content
- Primitive Profiles: 8 spec sections; write once; low-maintenance with review trigger
- Pipeline-early notes: 5 spec sections; write once when `/intuit` Phase C ships
- N refinement: 1-2 sentence addition; write when `/intuit` Phase β ships
- Conservation verdict: this finding itself; write once
- Future-candidate register: ~5 lines in `enes/desc.md`; maintain as triggers fire
- Category-sufficiency check: 1 question + append-only log

Cumulative cost is low. Each has kill conditions (rubber-stamp → versioning killed; "no" entries → sufficiency check killed; verbose hook accumulation → hooks consolidate). The assembly is **self-pruning**: if any innovation erodes into busywork, its kill condition fires.

### Killed candidates (summary)

**Reorganization candidates (11)** — all listed in section 9 with structural reasoning and revival triggers. Highlights:
- Force `/intuit` into Core (sub-classification) → taxonomy extension is cleaner
- Force `/intuit` into Situational → misfit
- Split `/innovate` generate+test → artificial
- Merge `/explore` + `/sense-making` → loses distinction
- Primitive-grouping redesign → breaks working bundles
- Eliminate `/MVL+` → meta-orchestration is real work

**Missing-discipline candidates (4)** — all listed in section 9 with category-mistake or already-owned reasoning.

**Innovation-level kills (5)** — confirmed by critique:
- Pure-prescriptive admission criteria → replaced by descriptive + evidence-required
- Rejected list as prohibition → replaced by revival triggers
- Static taxonomy documentation → replaced by evolution hooks
- "Documentation update" framing → undersells the architectural claim
- Community-of-one taxonomy → Cross-cutting is a growing category

### Self-reference check

This audit uses the disciplines (E/S/D/I/C) to audit themselves. The loop's successful production of this finding is itself indirect evidence that the disciplines work. Self-reference collapse was the named risk; mitigation was external anchoring — empirical use-validation across the prior inquiry chain (which produced the typed primitive set, `/intuit`, and three-layer architecture) serves as the external check. The audit can trust itself because prior inquiries succeeded with these same disciplines.

---

## Open Questions

1. **Revival trigger firing detection** — no explicit mechanism tracks when a revival trigger's conditions become true. Who notices? How does the re-examination actually start? Currently: ad-hoc; if a reader notices, they can propose re-opening. Automated trigger detection is a future refinement.

2. **`enes/` folder charter enforcement** — the clarified charter ("curated stable-view files for architectural concepts — one file per concept") is documented but not enforced. Future additions may drift. Mitigation: the charter itself lives in `enes/` so it's visible to anyone adding a file, but no gate exists.

3. **Category-sufficiency check honest answering** — the protocol depends on inquirers actually considering the question. Risk: erosion to rote "no" answering over time. Kill criterion (>30 inquiries with only "no") catches the extreme case but not gradual erosion.

4. **Cross-cutting as category-of-one** — if no second Cross-cutting candidate materializes within 12 months AND `/intuit`'s multi-location use turns out to be narrow, the Core-sub-classification path (revival trigger #1 in rejected list) fires. What's the specific process for re-opening? Full SIC loop, or lighter-weight architectural decision?

5. **Pipeline-early opt-in → default-on transition** — the timing of switching `/intuit` pipeline-early from opt-in (Phase C) to default-on (Phase D) depends on calibration maturity. What's the exact threshold? "N ≥ 30 per discipline" is named elsewhere but not explicit for this transition.

6. **Evolution hook accumulation over time** — as the system evolves, artifacts accumulate hooks. The "3+ hooks triggers consolidation" rule is specified but the consolidation process isn't. Manual review? Trigger at artifact edit time?

7. **Consolidation discipline trigger N/month threshold** — "parallel-inquiry rate exceeds N/month" names the trigger without specifying N. Calibration-by-operation is implied but deferred. What mechanism calibrates N?

8. **Corpus-located audit for discipline vs for primitive** — the discipline-level corpus audit (for Cross-cutting admission) mirrors the primitive-level corpus audit (from `thinking_space_primitives`). Are the formats compatible enough to share tooling? Or do they diverge in ways that require separate review processes?

9. **Primitive Profile maintenance at scale** — 8 profiles today; if new disciplines admit to Cross-cutting, profile count grows. What's the practical ceiling before profile maintenance becomes overhead that exceeds benefit?

10. **`/MVL+` refinements specification** — the audit identifies `/MVL+` needs minor refinements (pipeline-early integration, taxonomy reference, IMPACTED_BY tracking) but doesn't write them. Deferred to `/intuit` Phase A/C ship timing.

11. **Substrate-maturity discipline simplification (7c, REFINE tier)** — if LLMs improve substantially, discipline specs may simplify. When does this trigger? How does simplification interact with the taxonomy (do categories simplify too)?

12. **Bottom-up category derivation (3a, REFINE tier)** — deriving categories from primitive profile clusters rather than placing disciplines into categories. Intellectual merit but contradicts current top-down placement. Revival trigger: if current placements prove wrong during operation.

13. **Property-based lookup (3b depth-check, REFINE tier)** — disciplines described by properties, users look up by property. System-level inversion; contradicts locked 4-category taxonomy. Noted as research direction.

14. **Audit re-run triggers** — when should the thinking-discipline audit re-run? When typed primitive set increments? When a new discipline is admitted? When a revival trigger fires? No explicit schedule.
