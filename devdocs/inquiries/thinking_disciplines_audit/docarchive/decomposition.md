# Decomposition: Thinking Disciplines Audit

## User Input
devdocs/inquiries/thinking_disciplines_audit/_branch.md

Sensemaking's SV6 is the partition seed. LOCKED by sensemaking:
- 4-category taxonomy: Core / Cross-cutting / Boundary / Situational
- Cross-cutting admission criteria: multi-location + spec-quality + distinct primitive profile + always-available infrastructure
- /intuit placed in Cross-cutting
- Core/Boundary/Situational memberships unchanged
- Pipeline E→S→D→I→C unchanged
- /MVL+ tier unchanged; only refinements for /intuit integration
- Primitive Profile sections added to Core + Cross-cutting + Boundary (not Situational)
- Pipeline-early interaction notes in Core specs (when /intuit Phase C+ ships)
- N refinement (consume corpus_limit_seeds, Phase β); R unchanged
- Conservation verdict formalized in finding.md with rejected-candidate list
- Future-candidate register in `enes/desc.md`

What decomposition partitions is the CONCRETE PROPAGATION WORK — writing the taxonomy spec, the Primitive Profile content per discipline, the Pipeline-early notes, the N refinement text, the conservation-verdict section format, the future-candidate register, and the cross-reference consistency list. This is writing work bounded by the fixed elements.

---

## 1. Coupling Map

```
CLUSTER A: Taxonomy Specification (FOUNDATION)
  └─ P1: 4-category taxonomy definition + Cross-cutting admission criteria
         + placement of existing disciplines

CLUSTER B: Primitive Profile Content (8 disciplines — parallel after P1)
  └─ P2: Template + content for all 8 disciplines
         (Core: /explore, /sense-making, /decompose, /innovate, /td_critique;
          Cross-cutting: /intuit;
          Boundary: /reflect, /navigate)

CLUSTER C: Pipeline-Early Interaction Notes
  └─ P3: Template + content for 5 Core disciplines
         (how each interacts with pre-running /intuit; jump-scan-equivalent
          mitigations per discipline)

CLUSTER D: Boundary Discipline Refinement
  └─ P4: N (navigate) minor refinement text for corpus_limit_seeds input

CLUSTER E: Verdict and Register Artifacts
  ├─ P5: Conservation verdict section format for finding.md
  │        (audited-and-confirmed list + rejected-candidate list with reasoning)
  └─ P6: Future-candidate register format + initial content for enes/desc.md
         (deferred candidates + revival triggers)

CLUSTER F: Cross-Reference Consistency
  └─ P7: Punch list of files that need taxonomy references updated or added
         (/MVL+, existing commands/ specs, enes/ files)

Valleys (low-coupling regions — natural cut points):
  A ─ B     (taxonomy definition vs per-discipline content — contract is stable)
  A ─ E(P5) (taxonomy definition vs verdict format — verdict references taxonomy but doesn't change it)
  B ─ C     (Primitive Profile vs Pipeline-early note — different sections; no cross-influence)
  B ─ D     (Primitive Profile vs N refinement — N's profile is one of 8; refinement is separate section)
  C ─ D     (Core specs vs Boundary spec — different targets)
  E(P5) ─ E(P6)  (finding.md verdict vs enes/desc.md register — different artifacts)
  core ─ F  (content vs cross-reference consistency — consistency is punch-list layer over content)

Shared dependencies (flagged):
  - Taxonomy (P1) → referenced by P2, P3, P5, P6, P7 (stable contract)
  - Discipline spec format (existing convention) → consumed by P2, P3 (external; stable)
  - /intuit Phase timing (Phase A/β/C/δ from enes/intuit.md) → referenced by P3, P4 (external; stable)
  - Typed primitive set (from enes/thinking_space_dynamics.md) → referenced by P2 (external; stable)
```

### Coupling confidence assessment

| Boundary | Confidence | Why |
|---|---|---|
| A ↔ B | HIGH | Taxonomy provides placement; per-discipline profiles reference it through category labels |
| A ↔ C/D/E/F | HIGH | Taxonomy is read-only contract for all downstream |
| B(per-discipline) ↔ B(per-discipline) | HIGH | Each discipline's profile is independent once template is set |
| B ↔ C | HIGH | Profile and Pipeline-early note are different sections within the same spec; no content cross-reference |
| C(per-discipline) ↔ C(per-discipline) | HIGH | Each Core discipline's note is independent |
| D ↔ E | HIGH | N refinement is independent of verdict/register content |
| E(P5) ↔ E(P6) | HIGH | Different artifacts; no content overlap |
| core ↔ F | HIGH | F reads from all others; produces a punch list; no feedback |

### What is NOT being decomposed

LOCKED by sensemaking; carried as constraints:
- Which disciplines exist (existing 5 Core + 2 Boundary + Situational set + /intuit)
- Which category each discipline belongs to
- The 4-category taxonomy itself (definition, admission criteria structure)
- The Primitive Profile section's purpose (descriptive, not normative)
- N refinement scope (minor, corpus_limit_seeds consumption only)
- R unchanged
- Situational disciplines skip Primitive Profile
- /MVL+ refinement scope (/intuit integration only)

---

## 2. Question Tree (7 pieces)

### Cluster A — Taxonomy Specification

**P1: 4-Category Taxonomy Definition** (FOUNDATION)
- **Question:** What exactly is the 4-category taxonomy, with explicit Cross-cutting admission criteria, and which discipline belongs in which category?
- **Sub-questions:**
  - **Category definitions** — for each of 4 categories (Core / Cross-cutting / Boundary / Situational), a 1-2 sentence definition that distinguishes it from the other three
  - **Cross-cutting admission criteria** — the four explicit criteria from sensemaking:
    1. Multi-location invocation (invokable at multiple points in the SIC loop)
    2. Spec-quality (numbered process, named failure modes, convergence, I/O, distinguishing definition — same bar as Core)
    3. Distinct primitive profile (not a sub-set of another discipline's profile)
    4. Always-available infrastructure (not on-demand per problem)
  - **Current membership** — table listing each existing discipline + category placement + brief reasoning
  - **Future admission rules** — how a new discipline candidate gets categorized; what evidence is required
  - **Relationship to primitive typology** — note that disciplines are primitive COMPOUNDS, not primitive instances; category is about INVOCATION PATTERN, not primitive usage
- **Verification criteria:** [ ] 4 category definitions distinguish cleanly; [ ] Cross-cutting's 4 admission criteria each testable; [ ] each current discipline placed with reasoning; [ ] future-admission rules unambiguous; [ ] passes reverse-test — reader can place a hypothetical new discipline correctly

### Cluster B — Primitive Profile Content

**P2: Primitive Profile Template + 8 Disciplines** [KEYSTONE for writing-bulk]
- **Question:** What is the Primitive Profile section template, and what does it contain for each of the 8 disciplines that get one (5 Core + /intuit Cross-cutting + 2 Boundary)?
- **Sub-questions:**
  - **Template format** — exact fields:
    - `load_bearing_primitives` (3-5 primitives that drive this discipline's work)
    - `secondary_primitives` (used in support roles)
    - `deliberately_absent` (primitives this discipline does NOT use — for contrast/clarity)
    - `composition_pattern` (how these primitives combine to produce the discipline's output)
  - **Per-discipline content (8 profiles):**
    - `/explore`: load-bearing = Attention-pointer + Focus-deep + Working Memory + Context-framing + Salience (Phase B); secondary = Metacognition (frontier assessment) + Intuition-similarity (implicit); deliberately absent = Simulation (exploration discovers what exists, doesn't construct hypotheticals)
    - `/sense-making`: load-bearing = Simulation + Working Memory + Intuition-similarity + Metacognition; secondary = Inhibition (destabilize-then-stabilize anchors) + Context-framing; deliberately absent = Evaluation-as-ranking (sensemaking resolves, doesn't rank)
    - `/decompose`: load-bearing = Working Memory (pieces + interfaces) + Attention-pointer (one piece at a time) + Simulation (imagining piece interactions) + Intuition-similarity (coupling perception); secondary = Metacognition (self-evaluation phase) + Inhibition (kill wrong boundaries); deliberately absent = none obvious
    - `/innovate`: load-bearing = **Simulation** (every mechanism constructs hypotheticals) + Intuition-similarity (Combination + Domain Transfer) + Working Memory (candidate set); secondary = Metacognition (test phase) + Inhibition (kill verdicts) + Evaluation (ranking); deliberately absent = Context-framing-as-narrowing (innovation broadens, not narrows)
    - `/td_critique`: load-bearing = **Evaluation** (ranking; prosecution/defense weighting) + **Inhibition** (KILL verdicts) + Metacognition (convergence assessment) + Simulation (adversarial scenarios); secondary = Intuition-similarity (dimension extraction); deliberately absent = exploratory Attention-pointer (critique operates on given candidates, doesn't discover new)
    - `/intuit`: load-bearing = Simulation (forward-transform) + Intuition-similarity (scan) + Metacognition (INSUFFICIENT state) + Inhibition (adversarial scan) + Working Memory (candidate holding); secondary = Context-framing + Attention-pointer + Focus-deep; all Phase A primitives active; Phase B adds Motivation/Evaluation/Salience
    - `/reflect` (R): load-bearing = Metacognition (backward — observing cycle quality) + Working Memory (process-state trace) + Evaluation (quality signals); secondary = Intuition-similarity (pattern-match against prior cycles); deliberately absent = Simulation (R observes what happened, doesn't construct)
    - `/navigate` (N): load-bearing = Simulation (generating direction candidates) + Evaluation (ranking 15-type taxonomy) + Intuition-similarity (recognizing type signals); secondary = Working Memory (direction set) + Metacognition (confidence per direction); deliberately absent = Inhibition (N enumerates all, suppresses few)
  - **Composition patterns per discipline** — 1-sentence description of how load-bearing primitives interact to produce the discipline's signature output
  - **Skipping Situational disciplines** — document the rationale (maintenance burden without benefit) for future readers
- **Verification criteria:** [ ] template fields complete; [ ] 8 discipline profiles specified; [ ] load-bearing primitives distinct per discipline (atom-level distinctness visible); [ ] composition patterns sharpen discipline self-understanding; [ ] rationale for skipping Situational documented

### Cluster C — Pipeline-Early Interaction Notes

**P3: Pipeline-Early Notes for 5 Core Disciplines**
- **Question:** What short interaction note (1-2 sentences) goes into each of the 5 Core discipline specs to document how they behave when /intuit pre-runs, and what jump-scan-equivalent mitigation applies?
- **Sub-questions:**
  - **Template** — format for the note:
    ```markdown
    ## Pipeline-Early /intuit Interaction
    
    When /intuit runs before this discipline (Phase C opt-in / Phase D default-on), [what changes].
    Mitigation: [jump-scan-equivalent rule that prevents pre-seeding from narrowing the discipline's work].
    ```
  - **Per-Core-discipline content:**
    - `/explore`: changes — starts with pre-loaded attention anchors from corpus findings matching the branch question; mitigation — Failure Mode 3 (False Confidence) + jump scan requirement: before convergence, explicitly scan a region DIFFERENT from the pre-seeded attention
    - `/sense-making`: changes — gets pre-seeded analogies to previously-stabilized models; mitigation — perspective check's definitional-internal perspective forces examining the seeds' own assumptions (rather than accepting them)
    - `/decompose`: changes — may have pre-seeded coupling intuitions; mitigation — bottom-up validation (Step 3) tests top-down boundaries against atoms; any pre-seeded coupling bias is caught when atoms don't group as expected
    - `/innovate`: changes — gets pre-loaded seed candidates from /intuit's convergent matches; mitigation — 7-mechanism coverage requirement includes mechanisms (Inversion, Absence Recognition) that resist seed confirmation; the pre-seeds feed generation, not conclusion
    - `/td_critique`: changes — gets pre-loaded prior-case hypotheses for prosecution/defense; mitigation — explicit requirement that prosecution construct the STRONGEST possible case (not whatever the pre-seed suggests); pre-seeds are inputs, not verdicts
  - **Timing rule** — these notes ship with /intuit Phase C; before that, the section is optional/absent
- **Verification criteria:** [ ] note template specified; [ ] 5 Core disciplines each have specific content; [ ] each mitigation references an EXISTING failure mode or process step (no new mechanisms); [ ] timing rule (ship with Phase C) documented

### Cluster D — Boundary Discipline Refinement

**P4: N (Navigate) Refinement — corpus_limit_seeds Consumption**
- **Question:** What minimal addition to /navigate's spec documents its consumption of /intuit's corpus_limit_seeds as input when /intuit Phase β ships?
- **Sub-questions:**
  - **Location in spec** — where in /navigate's existing spec does this land? (Input sources section)
  - **Text content** — 1-2 sentences noting that corpus_limit_seeds (from /intuit's failed-projection log) are a new input type; they surface latent inquiry candidates; N treats them alongside its existing 15-type taxonomy as NEW-INQUIRY-SEED items
  - **Timing rule** — this ships when /intuit Phase β ships (corpus_limit_seeds are a Phase β output); before that, not applicable
  - **R (reflect) non-change note** — brief note that R deliberately does NOT consume invocation traces as a new input (R's scope is process quality, not invocation data); for future-reader clarity
- **Verification criteria:** [ ] N's spec addition text specified; [ ] location in spec identified; [ ] timing rule documented; [ ] R non-change rationale recorded to prevent future "should we also update R?" loops

### Cluster E — Verdict and Register Artifacts

**P5: Conservation Verdict Section Format for finding.md**
- **Question:** What exactly does the "Conservation Verdict" section of the finding look like — what lists, what structure, what reasoning per entry?
- **Sub-questions:**
  - **Section structure:**
    ```markdown
    ## Conservation Verdict
    
    ### Audited and Confirmed Unchanged
    [bullet list with reasoning per item]
    
    ### Rejected After Consideration
    #### Reorganization candidates (11 items)
    [numbered list with structural reasoning per rejection]
    #### Missing-discipline candidates (4 items)
    [numbered list with category-mistake or already-owned reasoning per rejection]
    
    ### Accepted Changes
    [numbered list with scope + timing per change]
    ```
  - **Per-entry reasoning depth** — each rejected candidate gets 1-3 sentences: what was proposed, why it was rejected (structural reason, not preference), what seed (if any) was preserved
  - **Purpose framing** — opening paragraph explains this list prevents future relitigation: readers encountering the discipline set can see "this was considered, rejected, and here's why" rather than re-opening closed questions
- **Verification criteria:** [ ] section structure specified; [ ] reasoning-depth rule specified; [ ] purpose framing written; [ ] format passes the "reader encounters this in 6 months" test — can they tell what was considered without re-running the audit?

**P6: Future-Candidate Register for enes/desc.md**
- **Question:** What format does the future-candidate register take in `enes/desc.md`, and what initial content does it contain?
- **Sub-questions:**
  - **Register format:**
    ```markdown
    ## Deferred Discipline Candidates
    
    | Candidate | Why deferred | Trigger for revival |
    |---|---|---|
    ```
  - **Initial content (3 entries):**
    - Consolidation (cross-inquiry merge): deferred because parallel inquiries currently rare; trigger = parallel-inquiry rate > N/month (N TBD by operation)
    - Parallel-MVL coordination: deferred because Level 3+ autonomy not near; trigger = approaching Level 3 (measured by consciousness-gradient indicators + Baldwin cycle count)
    - Level-3 intuition-space generation: deferred because beyond brute-force transfer capability; trigger = /intuit Phase D+ calibration maturity + need signal from operation
  - **Placement in enes/desc.md** — new subsection under the "Where We Are Now" / "Next buildable step" section
  - **Maintenance rule** — when a candidate is triggered, it moves from register to active inquiry seed; when rejected after consideration, it moves to finding.md's "Rejected After Consideration" list
- **Verification criteria:** [ ] register format specified; [ ] 3 initial entries with why-deferred + trigger-for-revival; [ ] placement in enes/desc.md identified; [ ] maintenance rules documented

### Cluster F — Cross-Reference Consistency

**P7: Cross-Reference Punch List**
- **Question:** Which files need taxonomy references updated or added for consistency?
- **Sub-questions:**
  - **Files needing taxonomy-aware updates:**
    - `commands/MVL+.md` — reference the 4-category taxonomy; note /intuit's Cross-cutting placement; pipeline-early opt-in behavior when /intuit ships Phase C
    - `commands/explore.md` + 4 other Core discipline specs — category label (Core); Primitive Profile section (from P2); Pipeline-Early interaction note (from P3)
    - `commands/reflect.md` + `commands/navigate.md` — category label (Boundary); Primitive Profile section; N adds corpus_limit_seeds consumption text (from P4)
    - `enes/intuit.md` — already has category (Cross-cutting) + Primitive Profile content; verify consistency with P1's criteria
    - `enes/thinking_space_dynamics.md` — references the discipline taxonomy once; verify taxonomy reference is consistent
    - `enes/desc.md` — future-candidate register addition (from P6)
    - `commands/install.sh` or equivalent — if there's a discipline registry, ensure it reflects categories
  - **Consistency checks** — each file's taxonomy reference uses the same 4-category structure and admission criteria; no drift
  - **Single source of truth** — the taxonomy specification (from P1) lives in one canonical location; other files reference it. Proposed canonical location: section of `/MVL+` command documentation OR a dedicated `enes/discipline_taxonomy.md` file (decision deferred to innovation)
- **Verification criteria:** [ ] all files needing updates listed; [ ] change type per file specified (category label, Primitive Profile section, Pipeline-Early note, taxonomy reference, register entry); [ ] canonical location for taxonomy spec identified

---

## 3. Interface Map

| Source | Target | What flows | Direction |
|---|---|---|---|
| P1 | P2, P3, P5, P6, P7 | Taxonomy structure + admission criteria + current memberships | Contract (read-only) |
| P2 | P7 | Per-discipline Primitive Profile content | Read (for consistency check) |
| P3 | P7 | Pipeline-early note content + timing rule | Read (for consistency check) |
| P4 | P7 | N refinement text + R non-change note | Read (for consistency check) |
| P5 | finding.md | Conservation verdict section | Write (downstream, not in this inquiry) |
| P6 | `enes/desc.md` | Future-candidate register | Write (downstream, not in this inquiry) |
| P7 | All listed files | Punch list of taxonomy-aware updates | Read / write contract |

### Hidden interfaces (external dependencies)

- **Existing discipline spec conventions** — `commands/*.md` format; consumed by P2, P3 contents when applied
- **/intuit phase timing** — from `enes/intuit.md` (Phase A/β/C/δ); referenced by P3 (Pipeline-early ships with Phase C) and P4 (corpus_limit_seeds ships with Phase β)
- **Typed primitive set** — from `enes/thinking_space_dynamics.md`; referenced by P2 (profile content uses primitive names)
- **Consciousness-gradient indicators** — from `enes/desc.md`; referenced indirectly through P2 when noting which discipline compositions support which indicators (not load-bearing for decomposition)

All dependencies are stable.

---

## 4. Dependency Order

```
FOUNDATION:
  P1 (taxonomy definition + admission criteria)

PARALLEL after P1:
  P2 (Primitive Profile template + 8 disciplines) ┐
  P3 (Pipeline-early notes for 5 Core)            ├ all parallel; independent
  P4 (N refinement text)                          │
  P5 (Conservation verdict section format)        │
  P6 (Future-candidate register)                  ┘

CONSOLIDATION:
  P7 (cross-reference punch list) — depends on P1-P6 outputs for the consistency check
```

**Critical path:** P1 → any parallel piece → P7.

**All parallel after P1.** P7 is the terminal integration point.

**No circular dependencies.**

**Deferred (not in this decomposition):**
- Actually applying the updates to `commands/*.md` files — spec-update work, not decomposition
- Writing the finding.md (consumes P5's format) — post-decomposition work
- Updating `enes/desc.md` (consumes P6's register) — post-decomposition work
- /MVL+ refinement implementation — Phase β work when /intuit ships

---

## 5. Self-Evaluation

| Dimension | Result | Notes |
|---|---|---|
| **Independence** | PASS | P2-P6 fully parallelizable after P1; each piece has a clear single question |
| **Completeness** | PASS | 7 pieces cover all 8 ambiguity resolutions from sensemaking: taxonomy (P1), Primitive Profile (P2), Pipeline-early (P3), N refinement (P4), verdict formalization (P5), future-candidate register (P6), cross-reference consistency (P7). Nothing from sensemaking's locked elements is orphaned. |
| **Reassembly** | PASS | P1 + P2 + P3 + P4 + P5 + P6 → all content for discipline-set updates; P7 → coordination across files. Given all pieces answered, the audit's propagation work is specified. |
| **Tractability** | PASS | Each piece is writing + specification work. P2 is the largest (8 profiles) but highly structured; each profile is ~100 words. |
| **Interface clarity** | PASS | 7 interfaces named; external dependencies (discipline spec conventions, /intuit phases, primitive set, indicators) flagged. |
| **Balance** | PASS | P2 is the largest by volume (8 disciplines × ~100 words = ~800 words); others are smaller but proportionate. No single piece is 80% of effort. |
| **Confidence** | PASS | Top-down clusters (A-F) and bottom-up pieces (7) agree. The taxonomy's foundational role (P1 as FOUNDATION) matches the clean "everything depends on taxonomy" intuition. |

**All 7 dimensions pass. Decomposition ready for Innovation.**

### Innovation should focus on:

- **P1 — Cross-cutting admission criteria wording** — the 4 criteria need to be unambiguous enough that hypothetical future-discipline candidates pass or fail clearly. Innovation has leverage on operational definitions of "multi-location invocation," "spec-quality," "distinct primitive profile," "always-available."
- **P2 — composition patterns per discipline** — each discipline's 1-sentence description of how its load-bearing primitives interact is genuinely novel territory. The atom-to-compound mapping sharpens self-understanding.
- **P3 — per-Core mitigation rules** — the mitigation rules that prevent /intuit pre-seeding from narrowing each Core discipline are non-obvious; innovation may surface cleaner patterns.
- **P5 — rejected-list reasoning templates** — how to write rejection reasoning that prevents relitigation is craft work; innovation can find standard forms.
- **P7 — canonical taxonomy location** — where the taxonomy spec LIVES canonically (in /MVL+ vs in a dedicated `enes/discipline_taxonomy.md` file) is an architectural decision with downstream impact on maintenance and discovery.

### Innovation should avoid re-litigating:

- The 4-category taxonomy choice (LOCKED)
- Which disciplines are in which category (LOCKED)
- /intuit placement (LOCKED)
- Pipeline sequence (LOCKED)
- R unchanged (LOCKED)
- Situational skipping Primitive Profile (LOCKED)
- Conservation verdict itself (LOCKED; only its FORMAT is open)
- Future-candidate register entries (LOCKED — initial 3; triggers may refine)

### Deliberately NOT decomposed further

- Per-discipline-spec rollout timing (scheduling detail; out of decomposition scope)
- Content-writing style consistency across discipline specs (authorial choice)
- Cross-linking styles between `enes/` and `commands/` files (documentation convention)
