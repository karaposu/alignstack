---
status: active
---
# Thinking Discipline Taxonomy

The canonical location for the 4-category discipline taxonomy. Other files (`/MVL+`, command specs, `enes/` files) reference this; duplicate content drifts, so keep placements and admission criteria here.

---

## The 4 categories (with visitor cards)

| Category | Visitor card (1-sentence reader orientation) |
|---|---|
| **Core** | These five disciplines run in sequence (E→S→D→I→C) for every inquiry. |
| **Cross-cutting** | These disciplines are always available — any discipline can call them at any time. |
| **Boundary** | These two disciplines run between cycles, looking backward (Reflect) or forward (Navigate). |
| **Situational** | These disciplines are specialized — invoked when the specific situation calls for them. |

---

## Core

**Pipeline-sequential disciplines.** The SIC-loop core. Every inquiry runs through these, in order.

**Members:**

| Discipline | Role |
|---|---|
| `/explore` | Map unknown territory via scan-signal-probe cycles (artifact + possibility modes) |
| `/sense-making` | Construct stable meaning through SV1→SV6 progression (anchor extraction + perspective checking + ambiguity collapse + degrees-of-freedom reduction) |
| `/decompose` | Perceive coupling topology and partition into a question-tree (7-step process with dual-direction validation) |
| `/innovate` | Systematic mechanism application for novelty (7 mechanisms: Lens Shifting, Combination, Inversion, Constraint Manipulation, Absence Recognition, Domain Transfer, Extrapolation) |
| `/td_critique` | Adversarial testing across fitness dimensions (prosecution + defense + collision; SURVIVE / REFINE / KILL verdicts) |

**Admission rule:** Core disciplines operate pipeline-sequentially — each runs at a specific SIC-loop step, consuming the prior step's output and producing input for the next. A candidate fails Core if it doesn't fit the sequence.

---

## Cross-cutting

**Always-available infrastructure disciplines.** Invokable at multiple points in the SIC loop; other disciplines draw on them routinely.

**Members:**

| Discipline | Role |
|---|---|
| `/intuit` | L3 real-time hunch layer — recognition-and-transfer via transform-space (Forward transform → Scan → Projection); grounded in CBR + SME |

### Cross-cutting admission criteria (descriptive, evidence-required)

A discipline is Cross-cutting when — observably — all four hold:

**1. Multi-location in operation**
- Description: invoked at more than one point in the SIC loop in practice (not theoretically)
- Evidence required: cite ≥2 specific points in existing SIC-loop outputs where the discipline is invoked; one-location-theoretical-invocability doesn't count

**2. Spec-quality in documentation**
- Description: numbered process + named failure modes + convergence criteria + clear I/O + distinguishing definition all present and substantive
- Evidence required: point to each of the 5 spec-quality components in the discipline's written specification

**3. Distinct primitive profile**
- Description: load-bearing primitives are not a subset of any Core discipline's load-bearing primitives
- Evidence required: show the discipline's Primitive Profile section; demonstrate at atom-level that it includes primitives absent from Core profiles

**4. Always-available infrastructure in use**
- Description: other disciplines draw on it routinely, not just in special cases
- Evidence required: cite ≥2 specific cases in existing discipline specs or design docs where this discipline is invoked as routine input, not special case

### Corpus-located audit (admission gate)

Before a Cross-cutting discipline is admitted, a corpus-located audit must confirm the four properties. Two-reviewer pass required.

Audit format:
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
reviewers: <≥2>
verdict: PASS | REFINE | FAIL
```

### /intuit admission audit (completed)

```yaml
discipline: /intuit
audit:
  - property: multi_location_in_operation
    evidence:
      - "enes/intuit.md §5 Invocation — documents standalone + embedded modes across /innovate, /td_critique, /MVL+ pipeline-early"
      - "enes/intuit.md §10 Integration patterns — documents /innovate + /td_critique + /MVL+ integration points"
  - property: spec_quality_in_documentation
    evidence:
      - "enes/intuit.md §2 Core operation (3-step numbered process)"
      - "enes/intuit.md §8 Failure modes (6 inherited transform failures + 3 primitive-specific)"
      - "enes/intuit.md §7 Decline conditions (4 named → INSUFFICIENT_INTUITION)"
      - "enes/intuit.md §6 Output schema (11-13 fields + invocation trace)"
      - "enes/intuit.md §1 'What /intuit IS and IS NOT' — distinguishing definition vs 6 neighbors"
  - property: distinct_primitive_profile
    evidence: "enes/intuit.md implicit profile: Simulation + Intuition-similarity + Metacognition + Inhibition + Working Memory load-bearing; no Core discipline shares this combination"
  - property: always_available_infrastructure_in_use
    evidence:
      - "enes/intuit.md §10 — /innovate uses /intuit to seed Domain Transfer + Combination mechanisms"
      - "enes/intuit.md §10 — /td_critique uses /intuit in validator mode for prosecution/defense corpus grounding"
reviewers: 1 (this inquiry) — SECOND REVIEW OPEN
verdict: PASS (pending second reviewer)
```

---

## Boundary

**Between-cycle disciplines.** Temporally complete at 2 (backward + forward). Adding a third without a new temporal direction manufactures a gap.

**Members:**

| Discipline | Role |
|---|---|
| `/reflect` (R) | Backward-looking process-quality observation — "how did this cycle run?" |
| `/navigate` (N) | Forward-looking direction enumeration with 15-type taxonomy — "what directions exist next?" |

**Admission rule:** Boundary disciplines operate at cycle boundaries (between one SIC iteration and the next). Backward (R) and forward (N) cover the temporal space; a candidate for a third Boundary discipline would need a new temporal direction that isn't backward or forward (e.g., cross-cycle longitudinal) to be structurally justified.

---

## Situational

**On-demand specialized disciplines.** Invoked when the specific situation calls for them. Organic set — not a systematic framework.

**Members (non-exhaustive; organic):**

- `/comprehend` — construct understanding from existing material (codebase, foreign concept)
- `/elaborate` — expand concise content into richer form
- `/align` — evaluate fit between work and principles
- `/wayfinding` — select one recommended direction (unlike `/navigate` which enumerates all)
- Others added organically as specialized needs arise

**Admission rule:** Situational disciplines are specialized tools for specific situations. Admission is loose — if the discipline serves a specific operational purpose and has a coherent spec, it belongs here. Overlap with other disciplines is acceptable as long as the specialization is real (e.g., `/wayfinding` selects one direction where `/navigate` enumerates all — specialization, not redundancy).

**Situational disciplines skip Primitive Profile sections.** Rationale: maintenance burden without benefit; the set is organic and individually specialized; profile distinctness across Situational is not a load-bearing property.

---

## Rejected After Consideration

The audit (`thinking_disciplines_audit`) considered and rejected 15 candidates. Each includes structural reasoning + revival trigger. Revival triggers meet the specificity test: time-bound OR condition-bound + falsifiable + observable.

This section is a **structured invitation**, not a prohibition. When a revival trigger fires, the candidate re-enters consideration via SIC loop.

### Reorganization candidates (11)

1. **Force `/intuit` into Core with sub-classification (`pipeline-sequential: false`)**
   - Rejected: requires re-defining Core's pipeline-sequential property; equivalent cost to new category but less clean
   - Revival trigger: if no second Cross-cutting candidate materializes within 12 months of `/intuit` Phase A AND `/intuit`'s multi-location property turns out to be used in only 1 location in practice

2. **Force `/intuit` into Situational**
   - Rejected: `/intuit` is foundational infrastructure, not on-demand specialized; structural misfit
   - Revival trigger: if `/intuit` in practice is invoked only on-demand for specific situations (not as always-available substrate)

3. **Split `/innovate` into `/innovate-generate` + `/innovate-test`**
   - Rejected: current `/innovate` handles both Generate and Test phases well; split creates duplication
   - Revival trigger: if `/innovate` runs frequently produce ungrounded novelty (Generate without Test)

4. **Merge `/explore` and `/sense-making`**
   - Rejected: loses the distinction between "what exists" (E) and "what it means" (S); dependency direction is real
   - Revival trigger: none identified — distinction is structural; permanent absent architectural change

5. **Rename `/sense-making` to emphasize Simulation primitive**
   - Rejected: aesthetic only; no structural benefit; naming change disrupts users
   - Revival trigger: none identified — aesthetic changes don't reach the HUGE OBVIOUS BENEFIT bar

6. **Primitive-grouping redesign (each primitive gets a discipline)**
   - Rejected: primitives are atoms within disciplines; disaggregation breaks working bundles
   - Revival trigger: none identified — category mistake at abstraction level

7. **Apply Primitive Profiles to Situational disciplines**
   - Rejected: maintenance burden without benefit; Situational set is organic
   - Revival trigger: if Situational disciplines become standardized (e.g., all run through `/MVL+` systematically)

8. **Structural refinement to R (reflect) based on invocation trace availability**
   - Rejected: R's scope is process quality, not invocation data richness; data availability doesn't require scope change
   - Revival trigger: if invocation traces prove to carry process-quality signals R currently misses

9. **Extensive pipeline-early documentation in each discipline (beyond 1-2 sentences)**
   - Rejected: 1-2 sentences with mitigation pointer are sufficient; more is noise
   - Revival trigger: if brief notes prove inadequate (users miss the interaction)

10. **Eliminate `/MVL+` (make disciplines self-orchestrating)**
    - Rejected: meta-orchestration is real work; disciplines coordinating themselves creates distributed complexity
    - Revival trigger: if `/MVL+` becomes a pure pass-through with no coordination value

11. **Add third boundary discipline (real-time observation during cycle)**
    - Rejected: real-time observation is a PRIMITIVE operation (Metacognition), not a discipline
    - Revival trigger: none identified — abstraction-level mismatch is structural

### Missing-discipline candidates (4)

1. **Calibration discipline (longitudinal calibration-over-time)**
   - Rejected: owned by `/intuit` Phase B+ (per-primitive and per-discipline calibration logs)
   - Revival trigger: if `/intuit`'s calibration proves insufficient for longitudinal operations

2. **Consolidation discipline (cross-inquiry merge)**
   - Rejected: deferred — real capability gap but low priority; parallel inquiries rare
   - Revival trigger: if parallel-inquiry rate exceeds N/month (N calibrated by operation) OR if `/navigate`'s MERGE type consistently surfaces candidates needing systematic consolidation

3. **Intrinsic-valuation discipline**
   - Rejected: category mistake — intrinsic valuation is an INDICATOR (autonomy-gradient level), not a discipline-level operation
   - Revival trigger: none identified — abstraction-level mismatch is structural

4. **Real-time metacognition discipline**
   - Rejected: category mistake — real-time metacognition is a PRIMITIVE within disciplines, not a discipline itself
   - Revival trigger: none identified — abstraction-level mismatch is structural

---

## Future candidates (deferred; active watch)

Candidates that were neither rejected structurally nor admitted. Tracked until their revival triggers fire.

Maintained in `enes/desc.md` alongside the autonomous-consciousness-goal context. Entries referenced here for visibility:

- **Consolidation (cross-inquiry merge)** — trigger: parallel-inquiry rate exceeds threshold
- **Parallel-MVL coordination** — trigger: approaching Level 3 autonomy
- **Level-3 intuition-space generation discipline** — trigger: `/intuit` Phase D+ maturity + operational need signal

When a trigger fires, the candidate moves from register to active SIC loop. If rejected after re-consideration, it moves to the rejected list above with new revival trigger.

---

## Category-sufficiency check protocol

At inquiry close, the reflection step includes one question:

> **"Did this inquiry reveal a cognitive operation that fits no existing category?"**

Options: YES (describe) / NO / UNCERTAIN (describe). Responses log to `devdocs/category_sufficiency.log` (append-only).

Kill criterion: if the log accumulates only "no" entries for >30 inquiries without discrimination, the check is not producing signal — kill the protocol.

This is an active dragnet for missing categories rather than passive waiting. Patterns over time become seeds for proposing a 5th category via SIC loop.

---

## Primitive Profiles (summary table here; per-discipline sections NOT required)

**Load-bearing primitive summary across 8 disciplines:**

| Discipline | Category | Load-bearing | Secondary | Deliberately absent |
|---|---|---|---|---|
| `/explore` | Core | Attention-pointer, Focus-deep, Working Memory, Context-framing, Salience (Phase B) | Metacognition, Intuition-similarity | Simulation |
| `/sense-making` | Core | Simulation, Working Memory, Intuition-similarity, Metacognition | Inhibition, Context-framing | Evaluation-as-ranking |
| `/decompose` | Core | Working Memory, Attention-pointer, Simulation, Intuition-similarity | Metacognition, Inhibition | — |
| `/innovate` | Core | **Simulation** (dominant), Intuition-similarity, Working Memory | Metacognition, Inhibition, Evaluation | Context-framing-as-narrowing |
| `/td_critique` | Core | **Evaluation**, **Inhibition**, Metacognition, Simulation | Intuition-similarity | exploratory Attention-pointer |
| `/intuit` | Cross-cutting | Simulation, Intuition-similarity, Metacognition, Inhibition, Working Memory | Context-framing, Attention-pointer, Focus-deep | — |
| `/reflect` (R) | Boundary | Metacognition, Working Memory, Evaluation | Intuition-similarity | Simulation |
| `/navigate` (N) | Boundary | Simulation, Evaluation, Intuition-similarity | Working Memory, Metacognition | Inhibition |

Each discipline has a DISTINCT profile — atom-level distinctness across the set. Disciplines are primitive compounds, not primitive instances. This table is the empirical argument for the conservation verdict from the `thinking_disciplines_audit` inquiry.

### Why this table is the canonical location (not per-discipline spec sections)

Earlier thinking proposed adding a `## Primitive Profile` section (~100 words) to each Core + Cross-cutting + Boundary discipline spec file in `commands/`. That proposal was **revised**: the summary table here serves all three stated purposes better, without per-file duplication:

- **Atom-level distinctness argument** — visible in the table across disciplines; one-file scan shows the pattern
- **Primitive-to-discipline connection** — every discipline's load-bearing primitives listed here; readers find it via the taxonomy file, not spread across 8 spec files
- **Maintenance review target** — when primitive set changes materially, ONE file needs review, not 8

**Profile sections in `commands/*.md` specs would be redundant with this table** and introduce drift risk (updates here and there get out of sync). They also do not affect runtime behavior — the LLM runs each discipline from its process description, not from a Primitive Profile section. Profiles are documentation-layer; documentation-layer is best served by a single canonical source.

**Rule:** per-discipline Primitive Profile sections in `commands/*.md` are **NOT required**. The summary table in this file is sufficient. If a specific discipline spec has unusual need for a profile section (e.g., spec authors want it for craft reasons), it may be added — but it's never the single source of truth; this table is.

### Versioning

The summary table carries an implicit version — when the typed primitive set (`enes/thinking_space_dynamics.md`) increments materially, this table is reviewed. Review outcome recorded inline (as a brief note after the table). Rubber-stamp kill criterion: if reviews become mechanical version-bumps without substantive updates, retire versioning of the table.

**Last reviewed:** 2026-04-22 (primitive set version: 11 admitted primitives across Phase A+B; modulators deferred).

---

## Pipeline-early interaction

When `/intuit` runs pipeline-early (Phase C opt-in; Phase D default-on), Core disciplines receive pre-seeded attention. Each Core spec gets a brief section:

```markdown
## Pipeline-Early /intuit Interaction

When /intuit runs before this discipline (Phase C opt-in / Phase D default-on), [what changes].
Mitigation: [jump-scan-equivalent rule that prevents pre-seeding from narrowing this discipline's work].
```

Per-Core-discipline content documented in `thinking_disciplines_audit/finding.md` §7. Timing: notes ship with `/intuit` Phase C; before that, the section is absent.

---

## Boundary discipline notes

- **`/navigate` (N)** consumes `corpus_limit_seeds` from `/intuit` Phase β+ as a new input type (NEW-INQUIRY-SEED items alongside the 15-type taxonomy)
- **`/reflect` (R)** is explicitly unchanged. R's scope is process quality, not invocation data richness. Data availability doesn't require scope change. (Documented here to prevent "should R also be updated?" future loops.)

---

## Evolution hooks

- **Category-sufficiency check:** when the sufficiency log accumulates a pattern of "YES" or "UNCERTAIN" entries identifying a cognitive operation with no category fit, a 5th-category SIC loop may be proposed
- **Primitive Profiles:** when primitive set version increments materially, profiles flagged for review per review-trigger protocol
- **Rejected-list revival:** when a revival trigger fires on a rejected candidate, that candidate re-enters consideration via SIC loop
- **Future-candidate register:** when a deferred candidate's trigger fires, it moves from register to active inquiry seed
- **This file:** when the typed primitive set materially changes, or when a new discipline is admitted, or when a revival trigger fires, this file is updated

---

## Charter: what `enes/` holds

`enes/` holds curated stable-view files for architectural concepts — **one file per concept**.

Current files:
- `thinking_space_dynamics.md` — three-layer architecture + typed 11-primitive set
- `intuit.md` — `/intuit` discipline spec
- `desc.md` — autonomous consciousness goal
- `discipline_taxonomy.md` — this file (4-category discipline taxonomy)

Future additions must pass the "curated stable-view of an architectural concept" test.

---

## References

- `devdocs/inquiries/thinking_disciplines_audit/finding.md` — the audit that produced this taxonomy
- `devdocs/inquiries/thinking_space_primitives/finding.md` — typed 11-primitive set (used as audit tool for primitive profiles)
- `devdocs/inquiries/intuition_as_discipline/finding.md` — `/intuit`'s derivation
- `enes/thinking_space_dynamics.md` — architectural context
- `enes/intuit.md` — `/intuit` discipline spec
- `enes/desc.md` — end-goal context + future-candidate register
