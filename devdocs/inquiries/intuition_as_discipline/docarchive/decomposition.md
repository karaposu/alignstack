# Decomposition: Intuition as a Thinking Discipline

## User Input
devdocs/inquiries/intuition_as_discipline/_branch.md

Sensemaking's SV6 is the partition seed. The discipline status, three-phase core operation, modes, entry points, invocation modes, output schema, decline conditions, failure modes, scale-adaptivity, and REFINES relationship with the prior finding are all LOCKED. What remains to decompose is the detail-level structure — how each spec slot is filled.

---

## 1. Coupling Map

```
CLUSTER A: Core Operation (3 keystones — tightly coupled internally, each the
                            subject of its own prompt/protocol design)
  ├─ P3: Forward transform      [KEYSTONE]
  ├─ P4: Scan (includes modes)   [KEYSTONE]
  └─ P5: Projection              [KEYSTONE]

CLUSTER B: Discipline Spec Structure
  ├─ P1: Discipline definition (what /intuit IS and IS NOT)
  ├─ P2: Process model (master numbered cycle — the top-level spec)
  ├─ P6: Output (schema + artifact formats for standalone and embedded modes)
  ├─ P7: Input surface (2×2 matrix: invocation mode × entry point)
  ├─ P8: Failure modes + decline conditions + INSUFFICIENT_INTUITION
  └─ P9: Coverage / convergence criteria

CLUSTER C: Adaptive / Longitudinal
  ├─ P10: Scale-adaptive implementation (LLM-direct → hybrid)
  └─ P11: Calibration integration (L3 seed → L2 outcome linkage)

CLUSTER D: External Integration
  ├─ P12: Integration patterns with other disciplines (/innovate, /td-critique)
  └─ P13: Prior-finding housekeeping (thinking_space_dynamics update, phased build reorder)

CLUSTER E: Validation
  └─ P14: Validation (corpus tests per mode, decline-condition triggers, calibration accuracy)

Valleys (natural cut points):
  A ─ B    (core operation vs spec structure — spec describes operation but
            can be specified independently; each phase has its own prompt/protocol)
  A ─ C    (core vs scaling/calibration — current LLM-direct impl is agnostic
            to future scaling; calibration is a separate signal path)
  B ─ C    (spec vs adaptive concerns — spec is constant, adaptive is runtime)
  core ─ D (internal discipline vs external integration)
  core ─ E (build vs validate)
  P3 ─ P4  (weak — forward transform produces abstraction; scan consumes it
             through a stable interface: a set of abstraction strings)
  P4 ─ P5  (weak — scan produces matched findings + alignments; projection
             consumes them through a stable interface)
  P7a ─ P7b (invocation mode and entry point are INDEPENDENT axes — they
              form a 2×2 matrix; combined into P7 because both are input-surface)

Shared utilities (flagged):
  - LLM prompt scaffolds — used by P3 (abstraction), P4 (scan reasoning), P5 (projection)
  - Multi-sample consensus mechanism — used by P3 (for abstractions); potentially by P5
  - Similarity threshold parameter — used by P4 (scan); deferred embedding version in P10
  - Popperian schema fields — defined in P6; populated by P5 (projection)
  - Corpus access protocol — used by P4; implementation varies per P10 scale-adaptive phase
```

### Coupling confidence assessment

| Boundary | Confidence | Why |
|---|---|---|
| A ↔ B | HIGH | Spec slots describe the operation without coupling to prompt specifics |
| A ↔ C | HIGH | Scale and calibration operate orthogonally to the core process |
| B ↔ C | HIGH | Spec is constant across scale phases by design |
| P3 ↔ P4 | HIGH | Interface = set of abstraction strings (stable contract) |
| P4 ↔ P5 | HIGH | Interface = matched findings + alignment structures (stable contract) |
| P7a ↔ P7b | HIGH | Independent axes; combined for convenience, not coupling |
| core ↔ D | MEDIUM | Integration patterns depend on core's input/output surface; may surface coupling leakage during real integration |
| core ↔ E | HIGH | Validation operates on corpus externally; no coupling to build |

### Note on what is NOT being decomposed

These are LOCKED by sensemaking and carried forward as constraints, not decomposed further:
- REFINES relationship with prior finding
- L1/L3/L2 three-layer architecture
- 6 transform-inherited failure modes (named; detailed within P8)
- 4 decline conditions (named; detailed within P8)
- 11-field output schema (fields named; format detailed within P6)
- CBR/SME precedent framing
- Popperian integration direction
- MVP retention policy (seeds logged only; no parallel case-base)

---

## 2. Question Tree (14 pieces)

### Cluster A — Core Operation (3 keystones)

**P3: Forward-Transform Specification** [KEYSTONE]
- **Question:** How does /intuit convert a source (text or inquiry state) into one or more abstractions that articulate relational/structural pattern independent of surface domain?
- **Sub-questions:**
  - What is the abstraction-elicitation prompt? (Must produce RELATIONAL structure, not topic summary)
  - How many samples per source? (Multi-sample consensus; inherit 3-sample default from prior finding)
  - What is the consensus rule? (Pick consensus phrasing; flag divergent samples for review)
  - What abstraction-quality signal triggers retry? (Trivial phrasings like "about AI methodology" → retry with refined prompt)
  - Is a single abstraction or multiple abstractions produced per source? (Default: one consensus abstraction; allow multi-abstraction in divergent mode)
- **Verification criteria:** [ ] abstraction prompt specified; [ ] consensus protocol specified; [ ] quality-gate triggers specified; [ ] example abstractions produced on 5+ real findings from the corpus, showing they capture relational structure rather than topic

**P4: Scan Specification** [KEYSTONE, includes modes]
- **Question:** Given an abstraction (from P3) and the corpus, how does /intuit identify matching findings, with different scan criteria for convergent vs divergent mode?
- **Sub-questions:**
  - Convergent mode: what constitutes a match? (abstraction similar + surface similar)
  - Divergent mode: what constitutes a match? (abstraction similar + surface dissimilar — the "angle-match" case)
  - How is "abstraction similarity" computed without embeddings at MVP scale? (LLM reads corpus abstractions in-context and identifies matches)
  - What is the LLM's scan prompt? (Must explain both modes and what counts as a match in each)
  - How many matches are returned per call? (top-K default with K=3-5 for MVP; configurable)
  - What similarity floor prevents weak matches from polluting output? (Per-mode threshold; LLM-rated reliability per match)
- **Verification criteria:** [ ] convergent match criteria specified; [ ] divergent match criteria specified; [ ] scan prompt written; [ ] K default chosen; [ ] reliability floor specified; [ ] example scans produce plausible convergent + divergent matches on existing corpus

**P5: Projection Specification** [KEYSTONE]
- **Question:** Given a matched finding (from P4), how does /intuit extract the transferable part and project it back to the source context, producing a Popperian seed?
- **Sub-questions:**
  - What is SME's Alignment operation concretely? (Identify which structural relations match between source-abstraction and match-abstraction)
  - What is SME's Projection operation concretely? (Extract the consequences of the matched pattern in the matched finding; map them to source context)
  - How is the "transferable part" distinguished from the "not-transferable part" of the matched finding? (Only shared relations + their consequences transfer; surface-specific material does not)
  - How is the projection translated to Popperian fields (prediction, prediction_window, observable_outcome)?
  - What makes a projection FAIL? (Matched finding shares abstraction but has no consequences that apply back; report as "structural match without transfer")
- **Verification criteria:** [ ] Alignment sub-step specified; [ ] Projection sub-step specified; [ ] transferable/non-transferable distinction specified; [ ] Popperian mapping specified; [ ] projection-failure detection specified; [ ] example projections on 3+ matched finding pairs

### Cluster B — Discipline Spec Structure

**P1: Discipline Definition**
- **Question:** What IS /intuit (positive definition) and what is it NOT (distinguishing from neighbors)?
- **Sub-questions:**
  - Positive definition: methodology-level recognition-and-transfer discipline producing probabilistic signals
  - Distinction from retrieval: retrieval returns similar items; /intuit returns similar items + projected transferable insights
  - Distinction from analogy (narrow): analogy is source-target pairs; /intuit is source-corpus with multiple possible matches
  - Distinction from innovation: innovation generates novel concepts; /intuit surfaces recognitions
  - Distinction from sensemaking: sensemaking produces stable understanding; /intuit produces probabilistic signals from existing understanding
  - Distinction from LLM-as-judge: judge rates; /intuit recognizes-and-transfers
  - Distinction from CBR (technical): CBR is an AI technical framework; /intuit is methodology-layer (borrows CBR's structural decisions but doesn't implement the full technical stack)
- **Verification criteria:** [ ] positive definition in one sentence; [ ] 6 neighbor distinctions with specific differentiators; [ ] definition passes the "reverse test" — given the definition, someone can identify whether a given activity IS or IS NOT /intuit

**P2: Process Model** (master numbered cycle)
- **Question:** What is the ordered sequence of steps when /intuit runs? (Equivalent to /explore's 7-step cycle or /td-critique's 5-phase process)
- **Sub-questions:**
  - How many top-level steps? (Proposed: 7 — Prepare input → Forward-transform → Mode selection → Scan → Projection → Decline check → Produce output)
  - What happens at each step? (Short description + pointer to P3/P4/P5/P6/P7/P8 for details)
  - Iteration: does /intuit iterate within a single call? (e.g., if divergent mode produces no matches, retry with convergent mode?) Or is iteration the caller's responsibility?
  - Resolution progression: like /explore's coarse-to-fine, does /intuit have a progression? (Proposed: broad abstraction → scan → deeper abstraction on top candidates → re-scan on shortlist — inner loop for quality; off by default for MVP)
- **Verification criteria:** [ ] 7-step cycle specified; [ ] iteration policy specified; [ ] resolution-progression policy specified; [ ] each step refers to detail piece; [ ] process model matches the structural rigor of /explore's spec

**P6: Output (schema + artifact formats)**
- **Question:** What does /intuit produce as output, in what format, for each invocation mode?
- **Sub-questions:**
  - Seed schema (11 fields): specify each field's type, constraints, required/optional — `source_anchor`, `abstraction`, `mode`, `corpus_match`, `structural_alignment`, `transferable_projection`, `prediction`, `prediction_window`, `observable_outcome`, `reliability`, `hunch_state`
  - Narrative per seed: 1-paragraph human-readable explanation; placement in output (inline after each seed, or separate section)
  - Standalone mode artifact: `intuition.md` structure (frontmatter? sections? how multiple seeds are ordered?)
  - Embedded mode return: structured data format (Python dict? JSON? structured text?) for programmatic use by caller
  - INSUFFICIENT_INTUITION output format: when no seeds produced, what is the output? (Explicit INSUFFICIENT record with reason)
- **Verification criteria:** [ ] 11 field schemas specified; [ ] narrative format specified; [ ] artifact format specified; [ ] embedded return format specified; [ ] INSUFFICIENT format specified; [ ] example output for one source produced and readable

**P7: Input Surface** (invocation × entry point, 2×2 matrix)
- **Question:** How is /intuit invoked, and what input does it receive, across the 2×2 matrix of (standalone vs embedded) × (source-first vs inquiry-state-first)?
- **Sub-questions:**
  - Standalone + source-first: user runs `/intuit <path-to-source-text>` or `/intuit "<text>"`
  - Standalone + inquiry-state-first: user runs `/intuit <inquiry-folder-path>` — inquiry state becomes source
  - Embedded + source-first: another discipline invokes /intuit with specific source text
  - Embedded + inquiry-state-first: another discipline invokes /intuit with "current inquiry" implicitly
  - Mode selection: is mode (convergent/divergent) always explicit, or inferred from context? (Proposed: explicit by default; defaultable in embedded mode)
  - What metadata is passed in each combination? (Source, mode, optional corpus restriction, optional top-K override)
- **Verification criteria:** [ ] 4 combinations specified with example invocations; [ ] metadata passed per combination specified; [ ] mode-selection policy specified

**P8: Failure Modes + Decline Conditions**
- **Question:** How does /intuit handle the 6 inherited transform failure modes and the 4 decline conditions?
- **Sub-questions:**
  - **Six transform failure modes** (inherited from sensemaking):
    1. Aliasing (distinct sources → same abstraction) — detection mechanism? Mitigation?
    2. Information loss (forward transform discards surface) — structural, not a failure; just documented
    3. Boundary effects (decontextualized seeds) — mitigation: projection must include source-context mapping
    4. Domain mismatch (abstraction applied to wrong-character corpus) — detection? Mitigation?
    5. Overfit abstraction (too specific, no matches) — detection: P4 returns zero matches → retry P3 with broadening hint
    6. Underfit abstraction (too generic, everything matches) — detection: P4 returns near-universal matches → retry P3 with specificity hint
  - **Four decline conditions** (from sensemaking):
    1. Empty abstraction — P3 multi-sample consensus fails → INSUFFICIENT_INTUITION
    2. No corpus matches — P4 returns zero above floor → INSUFFICIENT_INTUITION
    3. Contradictory seeds — multiple projections make contradictory predictions → surface contradiction, don't collapse
    4. Projection failure — matches exist but P5 cannot project (no transferable consequences) → report as "structural match without transfer"
  - INSUFFICIENT_INTUITION output: explicit record with reason; mirrors prior finding's INSUFFICIENT_HUNCH state definition (no substrate match above threshold S)
- **Verification criteria:** [ ] each of 6 failure modes has detection + mitigation; [ ] each of 4 decline conditions has operational trigger; [ ] INSUFFICIENT_INTUITION output format specified; [ ] contradictory-seeds surfacing protocol specified

**P9: Coverage / Convergence Criteria**
- **Question:** When is an /intuit run "complete"? What signals that a call has done enough work?
- **Sub-questions:**
  - Analogous to /explore's convergence (frontier stability + declining discovery + bounded gaps), what are /intuit's?
  - Proposed: (a) all matches from P4 have been projected or declined; (b) no contradictory seeds are unaccounted for; (c) output schema is fully populated for each produced seed
  - When /intuit iterates internally (if enabled), when does iteration stop?
  - Does /intuit have an "explore deeper" mode that produces more seeds from the same source? Or is one-shot per call? (Proposed: one-shot per call; caller can re-invoke for more)
- **Verification criteria:** [ ] 3 convergence criteria specified; [ ] iteration stop conditions specified; [ ] one-shot-vs-extended policy specified

### Cluster C — Adaptive / Longitudinal

**P10: Scale-Adaptive Implementation**
- **Question:** How does the implementation shift as corpus size grows, while the spec remains constant?
- **Sub-questions:**
  - **Current (N ≤ ~50):** LLM-direct — corpus abstractions read in-context during P4 scan
  - **Future (N > threshold):** embedding pre-filter fetches top-K candidate findings by abstraction-embedding similarity; LLM performs P4 scan on shortlist only
  - What is the specific scale-transition threshold? (Proposed: N > 100 or context-window headroom < 30% — whichever is earlier)
  - What prompts/protocol change at the transition? (Only the corpus-fetch step; P3/P5 unchanged)
  - How are pre-computed abstractions handled during transition? (Absorbed into prior finding's deferred Phase 5 build; see P13)
  - What falls out of the spec if embeddings never get built? (Nothing — spec is implementation-agnostic by design)
- **Verification criteria:** [ ] current-phase protocol specified; [ ] future-phase protocol specified; [ ] transition threshold specified; [ ] what changes at transition specified; [ ] spec-independence from embeddings confirmed

**P11: Calibration Integration** (L3 seed → L2 outcome linkage)
- **Question:** How do /intuit's seeds get linked to L2 retrospective outcomes for calibration, given the deferred retention policy?
- **Sub-questions:**
  - What does the calibration log record per seed? (Seed fields + invocation context + timestamp)
  - When and how do L2 outcomes (from prior finding's infrastructure) get linked back to seeds? (Observable_outcome field names the specific L2 signal; when L2 fires, match it back)
  - What aggregation produces per-mode calibration curves? (Prediction reliability vs actual outcome frequency; separate curves for convergent vs divergent)
  - When is calibration data sufficient to make claims? (Inherit N ≥ 30 threshold from prior finding)
  - What happens to the log when seeds never get L2 outcomes (because the prediction never gets tested)? (Tagged OPEN; counts against divergent calibration if too many remain OPEN)
- **Verification criteria:** [ ] log record format specified; [ ] outcome-linkage protocol specified; [ ] aggregation specified; [ ] N-threshold documented; [ ] OPEN-seed handling specified

### Cluster D — External Integration

**P12: Integration Patterns with Other Disciplines**
- **Question:** How do /innovate and /td-critique invoke /intuit, and what do they do with returned seeds?
- **Sub-questions:**
  - **/innovate integration:** /innovate calls /intuit in embedded + inquiry-state-first mode; passes current inquiry folder; receives seeds; uses seeds as INPUT TO INNOVATION MECHANISMS (Domain Transfer, Combination, Absence Recognition). Seeds become pre-seeded mechanism inputs, accelerating innovation's generator steps.
  - **/td-critique integration:** /td-critique calls /intuit on current critique target; receives seeds; uses seeds to SHAPE PROSECUTION (prior similar findings that failed inform the strongest objection) and DEFENSE (prior similar findings that succeeded inform the strongest support).
  - Standalone integration with inquiry folder convention: /intuit called on an inquiry folder produces `intuition.md` in that folder; how does this interact with the E → S → D → I → C pipeline? (Proposed: /intuit is between-discipline; optional at any transition point; not part of the mandatory pipeline)
  - Future disciplines that may benefit: /explore (pre-seeding the scan), /sense-making (anchor pre-seeding), /decompose (similar coupling topologies from prior decompositions) — deferred as REFINE candidates
- **Verification criteria:** [ ] /innovate invocation + seed-use specified; [ ] /td-critique invocation + seed-use specified; [ ] inquiry-folder interaction specified; [ ] future-integration list with deferral reasoning

**P13: Prior-Finding Housekeeping**
- **Question:** What changes in `thinking_space_dynamics/finding.md` (and related) to reflect the refinement?
- **Sub-questions:**
  - Caveat header on prior finding: status becomes `active` with `refined_by: intuition_as_discipline` annotation
  - Phased build reorder: prior finding's Phase 1 (embedding substrate) is DEFERRED to Phase 5 scaling layer; new Phase 1 is "write /intuit discipline spec"; new Phase 2 is "implement LLM-direct /intuit"; Phase 3+ is calibration etc.
  - P6/P7 absorption: prior finding's P6 (structural analogy) becomes /intuit divergent mode; prior P7 (hunch production) becomes /intuit projection step + output; document this mapping explicitly
  - Relationship annotation in prior finding's `_state.md`: `REFINED_BY: intuition_as_discipline`
  - Section 5 of prior finding (The phased MVP design) is rewritten to reflect the new order
- **Verification criteria:** [ ] caveat header drafted; [ ] relationship annotation drafted; [ ] absorption mapping drafted (P6→divergent mode, P7→projection); [ ] Section 5 rewrite drafted; [ ] no prior-finding content deleted silently (only annotated and re-sectioned)

### Cluster E — Validation

**P14: Validation**
- **Question:** How is /intuit validated on the existing corpus before being trusted?
- **Sub-questions:**
  - **Convergent-mode test:** 5-10 pairs of findings a human would say are related by pattern (e.g., `regression_detection_design` ↔ `importance_measurement_problem` — both about drift-detection). Does /intuit in convergent mode produce these as matches?
  - **Divergent-mode test:** 5-10 pairs a human would say share structural analogy across unrelated surface (e.g., `importance_measurement_problem` ↔ `thinking_space_dynamics` — both calibration-of-probabilistic-signal despite different topics). Does /intuit in divergent mode produce these as matches?
  - **Projection quality test:** for matched pairs, does /intuit produce transferable projections that a human would agree apply to the source?
  - **Decline-condition test:** inject test cases that should trigger each of the 4 decline conditions (e.g., source with no corpus analog → no-corpus-matches decline). Do all 4 fire correctly?
  - **Calibration accuracy test:** for findings where L2 outcomes already exist (supersessions, citations), do /intuit's predictions agree with outcomes above chance?
  - Pass thresholds: convergent agreement >70%; divergent agreement >40% (harder); projection quality >60% on human-rated sample; decline triggers 100% (must all fire); calibration monotonic above chance.
- **Verification criteria:** [ ] 5 tests specified; [ ] pass thresholds documented; [ ] corpus pairs identified; [ ] test harness plan written

---

## 3. Interface Map

| Source | Target | What flows | Direction |
|---|---|---|---|
| P7 (input surface) | P2 (process) | Source + mode + metadata | Input |
| P2 (process) | P3 (forward-transform) | Source ready for transform | Sequential |
| P3 | P4 (scan) | Abstraction string(s) | Sequential |
| P3 | P8 (failure) | Quality signals (for empty-abstraction detection) | Read |
| P4 | P5 (projection) | Matched findings + mode + per-match reliability | Sequential |
| P4 | P8 | Match-count signals (for no-matches + overfit/underfit detection) | Read |
| P5 | P6 (output) | Projected seeds with Popperian fields | Write |
| P5 | P8 | Projection-failure signals | Read |
| P6 | P14 (validation) | Seed format for test harness | Contract |
| P1 (definition) | P2 (process) | What the discipline IS | Frame |
| P9 (convergence) | P2 | When the cycle is complete | Control |
| P10 (scale) | P4 (scan) | Corpus-fetch protocol (which implementation phase) | Input |
| P6 (output) | P11 (calibration) | Seed records for log | Write |
| L2 retrospective (prior finding infra) | P11 (calibration) | Outcome records | Read |
| P11 (calibration) | P10 (scale) | Scale-transition trigger signals (if calibration shows miscalibration at scale) | Read |
| P6 (output) | P12 (integration) | Seeds for caller discipline consumption | Write |
| P12 (integration) | P7 (input surface) | Embedded-mode invocation calls | Invoke |
| P13 (prior-finding) | thinking_space_dynamics files | Caveat + annotation + rewrite | Write |
| P14 (validation) | P3, P4, P5 | Test invocations against spec | Calls |

### Hidden interfaces (external format dependencies)

- LLM API stability (P3, P4, P5 all use LLM calls)
- LLM context-window capacity (P4 LLM-direct reads corpus abstractions in-context)
- Markdown + frontmatter format conventions (P6 artifact, P13 prior-finding edits)
- Prior finding's L2 infrastructure (P11 calibration depends on it)
- Inquiry-folder convention (P7 inquiry-state-first entry point, P12 /innovate and /td-critique folders)
- The Popperian schema from prior finding (P6 output field definitions)

These are dependencies on EXISTING system conventions and external APIs. All are stable and accepted.

---

## 4. Dependency Order

```
MVP Phase 1 (Discipline spec — can be written before any build):
  P1 (definition) → frames P2
  P2 (process model) → frames P3/P4/P5/P6/P7/P8/P9
  P3 (forward-transform spec)    ┐
  P4 (scan spec)                 ├ parallel after P2 framing
  P5 (projection spec)           │
  P6 (output)                    │
  P7 (input surface)             │
  P8 (failure modes + decline)   │
  P9 (convergence)               ┘
  P13 (prior-finding housekeeping) — parallel, independent

MVP Phase 2 (Implementation — builds on the spec):
  P10 (scale-adaptive implementation) — current phase; LLM-direct protocol
  P12 (integration patterns) — after core spec stable; requires P6 output format

MVP Phase 3 (Calibration + Validation):
  P11 (calibration integration) — requires P6 (for seed format) + prior finding's L2 infra
  P14 (validation) — requires P3/P4/P5 implementations from P10

Deferred (gated on MVP Phase 3 results):
  - Embedding scaling layer (prior finding's Phase 5, now called from P10 when scale triggers)
  - Retention as parallel case-base (sensemaking ambiguity 9, MEDIUM confidence)
  - Extension to /explore, /sense-making, /decompose (P12 deferred list)
```

**Critical path:** P1 → P2 → (P3, P4, P5, P6, P7, P8, P9 in parallel) → P10 → P11 + P12 → P14.

**No circular dependencies.** P11's feedback to P10 (miscalibration-at-scale → scale-transition trigger) is a monitoring loop, not a build dependency.

---

## 5. Self-Evaluation

| Dimension | Result | Notes |
|---|---|---|
| **Independence** | PASS | Each piece has clear, minimal dependencies. Keystones P3/P4/P5 parallelizable after P2 framing. |
| **Completeness** | PASS | All 14 pieces together cover: discipline definition, process, core operation, input/output surfaces, failure handling, scale, calibration, integration, housekeeping, validation. Nothing from sensemaking's locked elements falls through. |
| **Reassembly** | PASS | Pieces + interfaces → complete discipline spec + implementation path + calibration + validation. Given all pieces answered, a full `/intuit` discipline ships. |
| **Tractability** | PASS | Each piece is spec-drafting, not speculative exploration. Sub-questions make each tractable. P3/P4/P5 are the largest but bounded. |
| **Interface clarity** | PASS | 20 interfaces named; external dependencies flagged (LLM API, context window, markdown convention, prior finding's infra, Popperian schema). |
| **Balance** | PASS | P3/P4/P5 are keystones with slightly more depth but not dominating; P1/P13 are lighter (housekeeping-style); most pieces are medium-sized spec work. No single piece is 80% of effort. |
| **Confidence** | PASS | Top-down clusters (A-E) and bottom-up pieces (14) agree. No refinement needed mid-decomposition. |

**All 7 dimensions pass. Decomposition ready for Innovation.**

### Innovation should focus on:

- **P3 (forward-transform)** — the abstraction-elicitation prompt is load-bearing; prompt design is where the discipline either captures structure or produces noise. Highest innovation leverage.
- **P4 (scan)** — per-mode scan criteria (especially divergent — the "angle-match" case) are the hardest to get right without embeddings; creative protocols here determine signature capability.
- **P5 (projection)** — operationalizing SME's Alignment + Projection in LLM prompts is genuinely novel territory; the Popperian mapping (projection → prediction + observable outcome) needs careful design.
- **P12 (integration patterns)** — how seeds get CONSUMED by caller disciplines. Novel integration designs could unlock substantial value (e.g., /innovate's mechanisms pre-seeded with /intuit's divergent-mode seeds).
- **P8 (failure + decline)** — mitigation strategies for overfit/underfit abstraction are unsolved; innovation may find cleaner mechanisms.

### Innovation should avoid re-litigating:

- The three-step core operation (LOCKED in sensemaking)
- Discipline status / multi-location invocation (LOCKED)
- REFINES relationship with prior finding (LOCKED)
- Embedding necessity (resolved as scale-adaptive; LOCKED)
- The 11-field output schema structure (LOCKED; field details are P6 territory)
- Retention policy (deferred for MVP; LOCKED)

### Deliberately NOT decomposed further

- Recursive decomposition of P3/P4/P5 sub-prompts (over-decomposition risk; prompt design is innovation territory)
- Per-discipline integration specifics beyond /innovate and /td-critique (deferred to P12 REFINE list)
- Numeric parameter tuning (innovation/validation territory, not decomposition)
