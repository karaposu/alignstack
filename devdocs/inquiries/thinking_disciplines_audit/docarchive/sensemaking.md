# Sensemaking: Thinking Disciplines Audit

## User Input
devdocs/inquiries/thinking_disciplines_audit/_branch.md

---

## SV1 — Baseline Understanding

The existing thinking-discipline set looks basically correct; /intuit is the one addition; small alignment touches are the only other changes needed. Conservatism bar is upheld.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

- **HUGE OBVIOUS BENEFIT bar.** User's explicit threshold for any change. Aesthetic / cleanup / novelty bias insufficient.
- **Preserve locked prior work.** Three-layer architecture, typed 11-primitive set, /intuit's core spec are LOCKED by prior findings — this audit doesn't re-litigate them, uses them as tools.
- **Existing discipline use-validation.** Every Core discipline has been used successfully through the inquiry chain that produced the current understanding. This is empirical evidence, not theoretical.
- **Conservation verdict is a VALID outcome.** The SIC loop's output can legitimately be "existing set is confirmed as-is" plus one addition. No forced novelty.
- **Backward compatibility.** Any change must preserve ongoing inquiries. No breaking existing `commands/` specs without a migration path.
- **Taxonomy integrity.** Core / Boundary / Situational is the existing organization. Whatever happens with /intuit must either fit these or justify extension.

### Key Insights (from exploration)

- **I1:** Every Core discipline has a DISTINCT primitive profile. /innovate is Simulation-heavy; /td_critique is Evaluation+Inhibition-heavy; /decompose is Working-Memory+coupling-similarity-heavy; /sense-making is Simulation+Working-Memory+Intuition-similarity-heavy; /explore is Attention+Focus+Salience-heavy. This is empirical atom-level distinctness — the disciplines are real structural units, not arbitrary groupings.
- **I2:** The existing disciplines are **primitive COMPOUNDS** that map onto useful units of cognitive work. Disaggregating by primitive type (jump scan 1) would break working bundles. Primitives are atoms; disciplines are compounds.
- **I3:** /intuit is the ONE genuine addition. Multi-location invocation gives it characteristics that don't cleanly fit Core/Boundary/Situational. Taxonomy must accommodate, not force.
- **I4:** All four "missing discipline" candidates (calibration, consolidation, intrinsic valuation, real-time metacognition) failed the admission test — either already owned (calibration by /intuit), deferred until need materializes (consolidation), or category mistakes (intrinsic valuation at indicator-level; real-time metacognition at primitive-level).
- **I5:** Pipeline sequence E → S → D → I → C is structurally correct — alternatives produce worse orderings due to dependencies. Pipeline-early /intuit adds a leading "I" but doesn't reorganize.
- **I6:** 14 reorganization candidates enumerated; only 3 passed the HUGE OBVIOUS BENEFIT bar (add /intuit, /MVL+ refinements, Primitive-Card alignment).
- **I7:** /intuit doesn't fit Core/Boundary/Situational cleanly — it's foundational (like Core) but multi-location (unlike Core), operates between disciplines (like Boundary) but also within them (unlike Boundary), and is invokable situationally (like Situational) but is always-available infrastructure (unlike Situational).
- **I8:** Boundary discipline set (R, N) is temporally complete — backward + forward covers the cycle-boundary temporal space. Adding a third without a new temporal direction manufactures a gap.
- **I9:** /MVL+ as meta-orchestrator is structurally correct — operates above disciplines, coordinates the pipeline. No restructuring needed; minor refinements when /intuit ships.
- **I10:** The existing discipline specs quality bar is real and measurable — numbered process, named failure modes, convergence criteria, clear I/O. /intuit's spec (in `enes/intuit.md`) meets this bar; no other proposed additions would.
- **I11:** Situational disciplines are organically coherent. Light overlap (e.g., /wayfinding vs /navigate both deal with direction — but Navigate enumerates all, Wayfinding selects one) is acceptable specialization, not structural redundancy.
- **I12:** Pipeline-early /intuit is a REFINEMENT of /MVL+, not a reorganization of disciplines. The pipeline stays E → S → D → I → C; /intuit runs before /explore on opt-in (Phase C) or default-on (Phase D); the discipline sequence is unchanged.

### Structural Points

- **Existing discipline tiers:** Core (5) + Boundary (2) + Situational (organic) + Meta-orchestrator (/MVL+). Stable.
- **/intuit placement:** the structural question to resolve.
- **Conservation verdict:** 11 of 14 reorganization candidates rejected; 3 accepted — /intuit addition, /MVL+ refinement, Primitive-Card alignment.
- **Primitive-Card alignment touches:** each existing discipline spec adds a "Primitive Profile" section documenting load-bearing primitives. Low-cost alignment work; not a restructure.
- **Pipeline preservation:** E → S → D → I → C unchanged. /intuit adds pipeline-early invocation as an /MVL+ refinement.
- **Future-candidate register:** deferred items (consolidation, parallel-MVL-coordination) documented so they're not lost but not built until triggered.

### Foundational Principles

- **FP1: Conservation by default.** Changes require HUGE OBVIOUS BENEFIT. "Works" is enough justification to preserve.
- **FP2: Empirical validation trumps theoretical elegance.** The existing disciplines have been USED successfully; that's stronger evidence than any theoretical audit.
- **FP3: Primitives are atoms; disciplines are compounds.** Don't confuse abstraction levels. Primitive-level operations belong IN disciplines; not every primitive gets its own discipline.
- **FP4: Multi-location invocation is a valid discipline property.** /intuit's shape justifies taxonomy extension if no existing category fits.
- **FP5: Temporal completeness for boundary disciplines.** R (backward) + N (forward) covers cycle-boundary temporal space. No third direction = no third discipline.
- **FP6: Category mistakes kill candidate disciplines.** If a candidate operates at a different abstraction level (indicator vs discipline; primitive vs discipline), it's not a candidate — it's a misplacement.
- **FP7: Deferred ≠ rejected.** Consolidation and parallel-MVL are real but low-priority; documented as future triggers, not killed.

### Meaning-Nodes

- **Thinking discipline:** a spec-quality cognitive operation with numbered process, named failure modes, convergence criteria, clear I/O, and a distinct primitive profile.
- **Taxonomy (Core/Boundary/Situational/Cross-cutting):** the organizational structure for disciplines by invocation pattern and scope.
- **Cross-cutting discipline:** a new category candidate — disciplines that are spec-quality (like Core) but invokable across the pipeline (not only in sequence).
- **Primitive profile:** the set of load-bearing typed primitives for each discipline. Makes discipline uniqueness visible at the atom level.
- **Conservation verdict:** the architectural outcome of an audit that finds existing structure sound.
- **Alignment touch:** a minor addition to existing specs that aligns them with newer understanding without restructuring.

---

## SV2 — Anchor-Informed Understanding

The audit's conservation verdict rests on TWO load-bearing observations: (1) each Core discipline has a distinct primitive profile (empirical atom-level distinctness — they're real structural units), and (2) every "missing discipline" candidate turns out to be mis-leveled (primitive-level, indicator-level, already-owned, or genuinely deferred). /intuit is the one genuine addition; it needs a placement decision (new "Cross-cutting" category vs Core-sub-classification). All other changes are minor alignment touches — Primitive-Card sections in existing specs, /MVL+ pipeline-early opt-in. The existing set is confirmed structurally sound, not defended by default.

---

## Phase 2 — Perspective Checking

| Perspective | What it revealed |
|---|---|
| **Technical / Logical** | Primitive-profile distinctness is an empirical check; not theoretical aesthetics. Each Core discipline passes. The Core/Boundary/Situational taxonomy is about INVOCATION PATTERN, not PRIMITIVE USAGE — /intuit's multi-location invocation justifies taxonomy extension. |
| **Human / User** | User explicitly skeptical of reorganization. "HUGE OBVIOUS BENEFIT" is the bar. Honored — 11 candidates rejected; 3 accepted as genuine additions/alignments. User will recognize the conservatism honored. |
| **Strategic / Long-term** | Future additions (consolidation at Level 3; parallel-MVL at Level 3+; Level-3-intuition-space generation) need places to land. The proposed "Cross-cutting" category could accommodate them. If we collapse /intuit into Situational, future additions have no clean home. |
| **Risk / Failure** | Two risks: (a) false confirmation — confirming as-is when something's actually broken; (b) premature extension — adding Cross-cutting category when /intuit could fit Situational. (a) mitigated by empirical use-validation; (b) mitigated by identifying concrete /intuit properties that don't match Situational. |
| **Resource / Feasibility** | Three accepted changes are low-cost: /intuit placement is a category-label decision; /MVL+ refinements are Phase C+ work already planned; Primitive-Card alignment sections are ~100-word additions per discipline spec. |
| **Definitional / Consistency (INTERNAL)** | Does the existing Core/Boundary/Situational taxonomy have internal contradictions? Core implies pipeline-sequential; Boundary implies between-cycle; Situational implies on-demand. /intuit is simultaneously foundational (like Core), cross-cycle (like Boundary), and on-demand (like Situational) — this exposes that the three categories were defined against mutually-exclusive properties that don't cover /intuit's shape. Extension is required, not preference. |
| **Definitional / Consistency (EXTERNAL)** | Three-layer architecture (L1/L3/L2) stands. Typed 11-primitive set stands. /intuit's spec stands. Pipeline-early /intuit stands. No contradictions surfaced. |
| **Meta-consistency (audit self-reference)** | This audit used the Core disciplines to produce its findings. If they were broken, the audit itself would be broken. The audit's success is indirect evidence of discipline soundness. Recursive confirmation, but valid. |

### Key convergence across perspectives

Technical + Strategic + Definitional-Internal converge on: **a new "Cross-cutting" category is structurally required, not preferred.** The existing three categories define themselves against mutually-exclusive properties (pipeline-sequential vs between-cycle vs on-demand); /intuit satisfies properties from all three simultaneously. No existing category fits. Either extend the taxonomy or lose structural integrity at the category level.

### Key tension

Resource + Risk perspectives together: adding a new taxonomy category is low-cost per se but INVITES future category-bloat (when the next discipline comes along, does it also get its own category?). Mitigation: make "Cross-cutting" admission criteria explicit (multi-location invocation + spec-quality + distinct primitive profile + always-available); future candidates either meet or join an existing category.

---

## SV3 — Multi-Perspective Understanding

The conservation verdict is structurally justified, not defensive. The CHANGE set is three items: (1) /intuit placement in a new "Cross-cutting" category (structurally required; not preferred); (2) /MVL+ refinements for pipeline-early /intuit (already planned; low cost); (3) Primitive-Card alignment sections in existing discipline specs (low cost, moderate alignment benefit). The existing disciplines are confirmed as-is, not defended against critique but confirmed through empirical use + atom-level primitive-profile distinctness + definitional coherence under the new understanding. Cross-cutting category admission criteria must be explicit to prevent future category-bloat.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: /intuit placement — new "Cross-cutting" category vs Core sub-classification?

**Counter-interpretation:** keep Core at 5, add /intuit as a 6th Core discipline with a sub-classification flag (`pipeline-sequential: false`). Avoids new category.

**Why the counter fails (structurally):** Core's definition is pipeline-sequential operation. Adding a non-sequential Core discipline requires re-defining Core. The re-definition is equivalent in cost to a new category — and less clean, because Core then has an internal subdivision that doesn't apply uniformly.

**Counter-counter:** but Cross-cutting might be a category-of-one forever — overkill for a single discipline.

**Why this counter fails:** future candidates (Level 3 intuition-space generation, consolidation when triggered, real-time observation disciplines if ever needed) plausibly fit Cross-cutting. Strategic perspective: this category has >0 expected residents. Not a category-of-one.

**Resolution:** **Create new "Cross-cutting" category** with explicit admission criteria:
- Multi-location invocation (invokable at multiple points in the SIC loop)
- Spec-quality (same bar as Core: numbered process, named failure modes, convergence, I/O, distinguishing definition)
- Distinct primitive profile (not a sub-set of another discipline's profile)
- Always-available infrastructure (not on-demand per problem)

/intuit is the first resident. Future candidates either meet these criteria or join another category.

HIGH CONFIDENCE.

- **Fixed:** taxonomy has 4 categories (Core / Cross-cutting / Boundary / Situational); /intuit placed in Cross-cutting; admission criteria explicit
- **Not allowed:** forcing /intuit into Core with sub-classification; forcing into Situational; leaving unplaced
- **Depends:** discipline-spec writer references explain which category each discipline falls in; /MVL+ references the taxonomy; future additions evaluated against category criteria

### Ambiguity 2: Primitive-Card alignment sections — how and how much?

**Counter-interpretation:** skip the alignment sections entirely. Existing disciplines work; documenting their primitive profile adds nothing.

**Why the counter fails:** primitive profiles become the CONNECTIVE TISSUE between disciplines and the typed primitive set. Without the sections, a reader of `commands/innovate.md` can't see "this discipline uses Simulation heavily" — information that matters for future refinement, calibration, or audit.

**Counter-counter:** alignment sections become maintenance burden — when primitive set changes, all discipline specs need updates.

**Why this counter holds PARTIALLY:** true. Mitigation: primitive profiles are DESCRIPTIVE, not NORMATIVE. They describe which primitives are load-bearing; they don't constrain the discipline. When the primitive set refines, profile descriptions update but discipline behavior doesn't. Maintenance is low-cost.

**Resolution:** **Add a "Primitive Profile" section** (~100 words) to each Core and Cross-cutting discipline spec. Format:

```markdown
## Primitive Profile

- **Load-bearing primitives:** [3-5 primitives that drive this discipline's work]
- **Secondary primitives:** [primitives used in support roles]
- **Deliberately absent:** [primitives this discipline does NOT use, for contrast]
- **Composition pattern:** [how these primitives combine to produce the discipline's output]
```

Applied to all 5 Core + 1 Cross-cutting (/intuit) + 2 Boundary (R, N). Situational disciplines skip (organic; not worth maintenance).

HIGH CONFIDENCE.

- **Fixed:** Primitive Profile section format; applied to Core + Cross-cutting + Boundary; Situational skipped
- **Not allowed:** making profiles normative (constraining discipline behavior); applying to Situational; over-elaborate profile structure
- **Depends:** discipline specs updated as part of Phase β work when /intuit ships

### Ambiguity 3: Pipeline-early /intuit — documentation in existing discipline specs?

**Counter-interpretation:** keep /MVL+ handling pipeline-early /intuit entirely; existing discipline specs don't need to mention it. Cleaner separation.

**Why the counter fails:** /explore's behavior with pre-seeded attention differs from cold-start /explore. If /explore's spec doesn't acknowledge this, users (and future Claude instances) will expect uniform behavior and be surprised when /explore's scans are biased by pre-seeding.

**Counter-counter:** /explore's "jump scan" failure mode already handles pre-seeding risk — the discipline doesn't need to know /intuit ran before it.

**Why this counter PARTIALLY holds:** true that jump-scan handles the capability side. But DOCUMENTATION side: readers benefit from knowing "when /intuit pre-runs, the exploration starts with seeded attention; the jump-scan mitigation applies."

**Resolution:** **Brief "Pipeline-early interaction" note** in /explore, /sense-making, /decompose, /innovate, /td_critique specs. 1-2 sentences noting the interaction with /intuit when pipeline-early runs, plus a reference to the relevant failure-mode mitigation. No behavior change; documentation clarity.

HIGH CONFIDENCE.

- **Fixed:** 1-2 sentence notes in Core discipline specs; reference to jump-scan-equivalent mitigations per discipline
- **Not allowed:** extensive behavioral changes based on pipeline-early presence; omitting the documentation
- **Depends:** /intuit's Phase C/D ship timing; discipline specs updated when /intuit ships

### Ambiguity 4: R (reflect) and N (navigate) refinement from /intuit data?

**Counter-interpretation:** with /intuit's invocation traces available, R's observations become richer — R should be refined to consume traces.

**Why the counter PARTIALLY holds:** R does gain data. BUT: R's scope is PROCESS QUALITY, not invocation traces. Traces are one signal; R's existing scope (convergence signals, failure-mode observations, telemetry) already works.

**Counter-interpretation (2):** N (navigate) gains input from /intuit's `corpus_limit_seeds` (latent inquiry candidates). N should be refined to consume these.

**Why this counter holds:** N enumerates directions; /intuit's corpus_limit_seeds surface latent seed candidates that N should consider. Refinement justified.

**Resolution:** **Minor additive refinement to N only.** N's input sources are extended to include /intuit's corpus_limit_seeds when available (Phase β+ integration). R remains as-is; its scope doesn't structurally change by having more data.

MEDIUM CONFIDENCE (refinement small enough that implementation may reveal alternative designs; revisit when /intuit Phase β ships).

- **Fixed:** N's input-source list extends to include corpus_limit_seeds when Phase β ships; R unchanged
- **Not allowed:** structural changes to R without new evidence; treating invocation traces as an N input (they're primitive-level process data, R territory)
- **Depends:** /intuit Phase β implementation timing

### Ambiguity 5: Conservation verdict formalization — how explicit?

**Counter-interpretation:** implicit conservation is enough — the finding documents what changed; what's unchanged is obviously unchanged.

**Why the counter fails:** future readers (including future Claude instances) will encounter the discipline set and wonder "was this audited against the typed primitive set and /intuit?" Without explicit conservation verdict, they'll re-litigate.

**Resolution:** **Explicit conservation verdict documented in the finding** listing specifically what was AUDITED AND CONFIRMED UNCHANGED:
- Core disciplines (E/S/D/I/C) as-is
- Boundary disciplines (R/N) as-is
- Situational set as coherent-enough
- Pipeline sequence E → S → D → I → C
- /MVL+ as meta-orchestrator (with minor /intuit-integration refinements)
- Primitive composition within disciplines (implicit operation; not restructured)

And what was REJECTED after consideration:
- 11 of 14 reorganization candidates (with reasoning per rejection)
- 4 missing-discipline candidates (each with category-mistake or already-owned reasoning)

HIGH CONFIDENCE.

- **Fixed:** finding.md explicitly documents conservation verdict with considered-and-rejected lists
- **Not allowed:** implicit conservation; omitting the rejected list; hiding the audit from future readers
- **Depends:** finding.md section structure

### Ambiguity 6: Future-candidate register — where is it maintained?

**Counter-interpretation:** deferred candidates (consolidation, parallel-MVL-coordination, Level-3-intuition-space) live only in this finding's Open Questions — easy to lose.

**Why the counter fails:** if deferred candidates aren't registered anywhere authoritative, they get rediscovered (wasted SIC loop) or forgotten (capability gap persists longer than necessary).

**Resolution:** **Add future-candidate register** to `enes/desc.md` (the autonomous_consciousness_goal current-state file) since these are end-goal-relevant capability items. Register format:

```markdown
## Deferred Discipline Candidates

| Candidate | Why deferred | Trigger for revival |
|---|---|---|
| Consolidation (cross-inquiry merge) | Parallel inquiries currently rare | Parallel-inquiry rate > N/month |
| Parallel-MVL coordination | Level 3+ autonomy not near | Approaching Level 3 |
| Level-3 intuition-space generation | Beyond brute-force transfer capability | /intuit Phase D+ maturity |
```

HIGH CONFIDENCE.

- **Fixed:** register lives in `enes/desc.md`; maintained there as autonomy-goal context
- **Not allowed:** register scattered across inquiry findings; informal deferral tracking
- **Depends:** `enes/desc.md` update (already done as part of autonomous_consciousness_goal post-inquiry update)

---

## SV4 — Clarified Understanding

Post-ambiguity-collapse the audit conclusion is concrete:

**Confirmed as-is (unchanged):**
- Core disciplines: E / S / D / I / C
- Boundary disciplines: R / N
- Situational discipline set (organic, coherent-enough)
- Pipeline: E → S → D → I → C
- /MVL+ as meta-orchestrator

**Changes:**
1. **Add /intuit** in a new 4th category "**Cross-cutting**" with explicit admission criteria (multi-location + spec-quality + distinct primitive profile + always-available infrastructure)
2. **Add Primitive Profile sections** (~100 words) to Core + Cross-cutting + Boundary discipline specs; skip Situational
3. **Add brief Pipeline-early interaction notes** (1-2 sentences) in Core discipline specs when /intuit Phase C+ ships
4. **Minor refinement to N (navigate)** to consume /intuit's `corpus_limit_seeds` when Phase β ships
5. **Future-candidate register** in `enes/desc.md` tracking deferred candidates (consolidation, parallel-MVL, Level-3-intuition-space)

**Rejected after consideration (11 of 14 reorganization candidates + 4 missing-discipline candidates):**
- All listed with structural-reasoning per rejection so future readers don't relitigate

**Conservation verdict:** structurally justified by (a) empirical use-validation across the inquiry chain; (b) atom-level primitive-profile distinctness; (c) definitional coherence against the new understanding. Not defensive preservation.

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed (locked; decomposition/innovation cannot move these)

- 4-category taxonomy: Core + Cross-cutting + Boundary + Situational
- Cross-cutting category admission criteria: multi-location + spec-quality + distinct primitive profile + always-available
- /intuit placed in Cross-cutting
- Core disciplines (E/S/D/I/C) retained as-is
- Boundary disciplines (R/N) retained as-is; temporally complete at 2
- Situational set retained as organic
- Pipeline E → S → D → I → C unchanged
- /MVL+ as meta-orchestrator retained; refinements for /intuit integration only
- Primitive Profile sections added to Core + Cross-cutting + Boundary specs (not Situational)
- Pipeline-early interaction notes added to Core specs when /intuit ships
- N refined minimally to consume corpus_limit_seeds; R unchanged
- Future-candidate register in `enes/desc.md`
- Conservation verdict explicitly documented in finding.md with rejected-list

### Eliminated (no longer viable)

- Forcing /intuit into Core with sub-classification
- Forcing /intuit into Situational
- Adding a calibration discipline (owned by /intuit)
- Adding an intrinsic-valuation discipline (indicator-level mis-scope)
- Adding a real-time metacognition discipline (primitive-level mis-scope)
- Adding a consolidation discipline now (deferred until triggered)
- Splitting /innovate into generate + test
- Merging /explore and /sense-making
- Renaming /sense-making to emphasize Simulation
- Applying primitive profiles to Situational disciplines (maintenance burden without benefit)
- Structural refinement to R
- Documenting pipeline-early interaction extensively in each discipline (1-2 sentences enough)

### Remaining viable (decomposition territory)

- **Exact wording of Cross-cutting category admission criteria** in the taxonomy documentation
- **Primitive Profile section template** — exact field set and format
- **Pipeline-early interaction note template** for each of the 5 Core disciplines (different jump-scan mitigations per discipline)
- **N's refinement wording** for corpus_limit_seeds input
- **Future-candidate register format and initial content** in `enes/desc.md`
- **Conservation verdict section format** in finding.md (full rejected list structure)
- **Discipline spec update rollout order** — which specs get updated when /intuit ships vs which earlier
- **Documentation consistency** — taxonomy referenced in /MVL+, discipline specs, and relevant `enes/` files with the same framing

---

## SV5 — Constrained Understanding

The audit's work is done at the architectural level. What remains is propagation — updating taxonomy documentation, adding Primitive Profile sections to ~8 discipline specs, adding Pipeline-early interaction notes to 5 Core specs, refining N minimally, adding a future-candidate register to `enes/desc.md`, and writing the conservation verdict into finding.md. These are concrete writing tasks bounded by the fixed elements above. Decomposition partitions them; innovation adds rigor to any novel parts (Cross-cutting admission criteria wording); critique tests the whole for coherence.

---

## Phase 5 — Conceptual Stabilization

### SV6 — Stabilized Model

**The thinking-discipline set is structurally sound. Conservation verdict is justified by empirical use + atom-level primitive-profile distinctness + definitional coherence. The taxonomy extends from 3 categories (Core / Boundary / Situational) to 4 categories with a new "Cross-cutting" tier defined by explicit admission criteria (multi-location invocation + spec-quality + distinct primitive profile + always-available infrastructure). /intuit is the first resident of Cross-cutting; future candidates (consolidation, parallel-MVL-coordination, Level-3 intuition-space-generation) may join it when triggered. Beyond the placement of /intuit, changes are minor alignment touches: Primitive Profile sections (~100 words) in Core + Cross-cutting + Boundary discipline specs; brief Pipeline-early interaction notes in Core specs when /intuit ships; minor refinement to N to consume /intuit's corpus_limit_seeds; future-candidate register in `enes/desc.md`; and conservation verdict explicitly documented in finding.md with rejected-candidate list to prevent future relitigation.**

### The 4-category taxonomy

| Category | Definition | Members |
|---|---|---|
| **Core** | Pipeline-sequential; operates at SIC-loop steps | `/explore`, `/sense-making`, `/decompose`, `/innovate`, `/td_critique` |
| **Cross-cutting** | Multi-location invocation; spec-quality; distinct primitive profile; always-available infrastructure | `/intuit` (first resident) |
| **Boundary** | Between-cycle operations; temporally complete at 2 | `/reflect` (R, backward), `/navigate` (N, forward) |
| **Situational** | On-demand specialized operations | `/comprehend`, `/elaborate`, `/align`, `/wayfinding`, and others (organic set) |

### What the audit CHANGED

1. **Taxonomy extension:** 3 categories → 4 categories (added Cross-cutting)
2. **/intuit placement:** in Cross-cutting (from "pending addition without home")
3. **Admission criteria:** Cross-cutting gets explicit entry requirements to prevent category-bloat
4. **Primitive Profile sections:** Core + Cross-cutting + Boundary discipline specs get ~100-word profiles
5. **Pipeline-early notes:** Core specs note /intuit interaction when Phase C+ ships
6. **N refinement:** minor — consumes corpus_limit_seeds from /intuit Phase β
7. **Future-candidate register:** in `enes/desc.md`; tracks deferred candidates with revival triggers
8. **Conservation verdict formalization:** finding.md documents audited-and-confirmed lists + rejected-candidate lists

### What the audit CONFIRMED as-is

1. Core disciplines E/S/D/I/C — structurally sound; distinct primitive profiles; use-validated
2. Boundary disciplines R/N — temporally complete at 2
3. Situational set — organic; individually coherent; no structural redundancy
4. Pipeline E → S → D → I → C — correct sequence; alternatives worse
5. /MVL+ as meta-orchestrator — correct tier; minor refinements only

### What the audit REJECTED after consideration

**11 reorganization candidates:**
- Force /intuit into existing category (Core or Situational) — structural misfit
- Split /innovate into generate + test — artificial; current handles both
- Merge /explore and /sense-making — loses "exists" vs "means" distinction
- Rename /sense-making to emphasize Simulation — aesthetic only
- Primitive-grouping redesign (each primitive gets a discipline) — breaks working bundles; wrong abstraction level
- Keep Core at 5 with sub-classification for /intuit — equivalent cost to new category; less clean
- Apply Primitive Profiles to Situational disciplines — maintenance without benefit
- Structural refinement to R based on trace availability — data richness doesn't require scope change
- Extensive pipeline-early documentation in each discipline — 1-2 sentences sufficient
- Eliminate /MVL+ (make disciplines self-orchestrating) — meta-orchestration is real work
- Add third boundary discipline (real-time observation) — primitive-level operation, not discipline-level

**4 missing-discipline candidates:**
- Calibration discipline — owned by /intuit Phase B+
- Consolidation discipline — deferred; real capability gap but low priority (triggered when parallel inquiries become frequent)
- Intrinsic-valuation discipline — category mistake (indicator-level, not discipline-level)
- Real-time metacognition discipline — category mistake (primitive-level, not discipline-level)

### How SV6 differs from SV1

SV1 said "the set looks basically correct; /intuit is the one addition; small touches." SV6 says THE SAME THING — but grounded in: (a) four-criterion validation per discipline (use-validation + primitive-profile distinctness + definitional coherence + use-validation recursion on this audit); (b) 14 enumerated reorganization candidates with structural reasoning per rejection; (c) a 4-category taxonomy with explicit Cross-cutting admission criteria; (d) a formalized conservation verdict that prevents future relitigation.

The audit's value is not in WHAT it changed (small) — it's in WHY it's sound (rigorous). The conservation verdict is now architecturally justified, not just accepted.

---

## Saturation Indicators

- **Perspectives:** 8/8 run (technical, human/user, strategic, risk, resource, definitional-internal, definitional-external, meta-consistency); definitional-internal surfaced the load-bearing anchor (existing taxonomy's categories define themselves against mutually-exclusive properties that don't cover /intuit's shape — extension is structural, not preferential)
- **Ambiguity resolution:** 6/6 resolved, 5/6 HIGH confidence, 1/6 MEDIUM (N refinement wording for corpus_limit_seeds — wait for Phase β implementation to finalize)
- **SV delta:** moderate — SV1 "the set looks basically correct" → SV6 "conservation verdict is architecturally justified with 4-category taxonomy + Cross-cutting admission criteria + explicit rejected-list + minor alignment touches." Moderate structural movement; most of the movement is in JUSTIFICATION rigor, not in WHAT is concluded.
- **Anchor diversity:** Constraints (6), Insights (12), Structural Points (6), Foundational Principles (7), Meaning-Nodes (6). Balanced.
- **Accommodation trigger check:** no. Perspectives integrated without destabilizing the conservation verdict.
- **Status quo bias check:** the audit applied empirical validation (use-validation), atom-level distinctness (primitive profiles), definitional coherence — not "works, so keep." Bias check passed.

**Overall: sufficient for Decomposition.** The architectural decisions are stable. What remains is propagation work — concrete writing tasks bounded by fixed elements.
