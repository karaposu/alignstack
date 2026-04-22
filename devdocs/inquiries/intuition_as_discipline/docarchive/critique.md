# Critique: Intuition as a Thinking Discipline

## User Input
devdocs/inquiries/intuition_as_discipline/

---

## Phase 0 — Dimensions

Extracted from sensemaking SV6, branch goal, and the LOCKED elements.

| Dimension | Weight | Success criteria |
|---|---|---|
| **Honest about structural limits** | CRITICAL | Discipline respects what it cannot do: value retrospective at T0; hunches probabilistic; information loss is structural not repairable; honest about source (corpus vs training distribution) |
| **Discipline rigor / spec completeness** | CRITICAL | Matches /explore's, /sense-making's spec quality: numbered process, named failure modes, convergence criteria, clear I/O, decline conditions |
| **Buildability at L0-2** | CRITICAL | Constructible with current tooling (LLM calls, markdown files, inquiry-folder convention); no new infrastructure required for MVP |
| **Coherence with prior finding** | CRITICAL | REFINES thinking_space_dynamics cleanly: L3 mechanism replaced, L1/L2 untouched, Popperian schema extended (not broken) |
| **Signal honesty** | HIGH | Explicit reliability; decline conditions distinct from low-confidence; source-type labels verifiable, not self-reported |
| **Actionability for callers** | HIGH | Output is directly useful to /innovate, /td-critique, etc.; not information-for-information's-sake |
| **Falsifiability / Popperian integration** | HIGH | Every recorded seed is a testable prediction with observable outcome and prediction window |
| **Integration fit** | MEDIUM | Doesn't bloat the SIC loop; coexists with existing disciplines; opt-in where appropriate |
| **Scope discipline / MVP sanity** | MEDIUM | Each innovation earns its place; no gratuitous complexity; phased build feasible |

Validation: all 9 dimensions correspond to explicit sensemaking anchors (I1–I7, FP1–FP6, constraints list). No missing critical axes.

---

## Candidate Verdicts

### 1. Structured relational abstractions [CRITICAL: discipline rigor, buildability, honest limits]

**Landscape position preview:** Viable region on rigor; boundary on buildability (LLM-discipline concern).

**Prosecution:** LLMs are trained on prose and drift back to prose under any prompt. Forcing `predicate(typed_arg, typed_arg)` form will produce SYNTACTICALLY-FORMATTED PROSE ("calibrates(AI_system, downstream_outcome)") that looks structured but doesn't have type-checked predicates. Worse: there is no predicate VOCABULARY — each call invents predicates ad hoc, so no two abstractions across calls are reliably comparable without re-normalization. The rigor is a veneer; the underlying noise remains.

**Defense:** Even structured-as-veneer form improves scan-time matching over free prose — extracting the predicate NAME alone is more matchable than full prose. Predicate vocabulary converges via multi-sample consensus within a call and per-domain convergence across calls. The "veneer" criticism is testable: if predicate stability across similar sources is >70%, the form is real, not veneer.

**Collision:** Prosecution has a real structural concern — without a vocabulary convergence mechanism, cross-call comparability suffers. Defense's testability is correct but depends on results. The design must include the vocabulary mechanism proactively.

**Verdict: SURVIVE (caveat)** — structured relational abstractions are kept AND require: (a) multi-sample consensus within each call to pick the consensus predicate; (b) prior-abstraction hint: the LLM is shown "here are the predicates other abstractions have used in this corpus" as context; true novelty allowed but flagged; (c) P14 validation MUST test predicate stability across runs on similar sources (≥70% agreement threshold or fall back to prose-with-predicate-extraction).

---

### 2. Differential-hypothesis output with discriminators [CRITICAL: actionability, rigor]

**Landscape position preview:** Viable on actionability; boundary on buildability (LLM discriminator quality).

**Prosecution:** Discriminators require the LLM to articulate "what observation would favor hypothesis A over hypothesis B" — a DIAGNOSTIC ability LLMs are uneven at without domain expertise. On novel territory, discriminators will be generic ("need more evidence") or trivially true. Bad discriminators make the differential structure a FALSE PROMISE — looks like a ranked differential with choice points, but the choice points are illusory; the caller gets nothing more than a flat reliability-ranked list dressed up.

**Defense:** Discriminators can be prompt-scaffolded with examples (as in differential medicine, legal reasoning, forensic analysis). Even imperfect discriminators beat flat seed lists because they force the caller to consider how hypotheses DIFFER — a cognitive move the flat list never prompts.

**Collision:** Prosecution's concern is valid — discriminator quality must be validated. Defense's upside holds even with imperfect discriminators IF the caller is taught to ignore weak ones. The architectural choice (differential vs flat) is correct; the implementation risk is in the discriminator prompt.

**Verdict: SURVIVE (caveat)** — differential-with-discriminators is the target design, BUT P14 validation must include a discriminator-quality test: on a sample of produced differentials, are discriminators actionable (a caller could meaningfully use them to narrow)? If <60% actionable, fall back to flat ranked list with reliability scores only; upgrade to differential in Phase B after prompt iteration.

---

### 3. Honest source-type labeling (CORPUS / TRAINING_DIST / ADVERSARIAL / NOT_APPLICABLE) [CRITICAL: honest limits, signal honesty]

**Landscape position preview:** Viable on honesty; boundary on rigor if self-reported.

**Prosecution:** The LLM cannot reliably self-report whether a hunch came from in-context corpus vs its pre-training. It will claim CORPUS_MATCH whenever something in the context looks plausible, even when the actual match is a plausible-sounding paraphrase of training-distribution knowledge. The LLM has no internal provenance signal. Source-type labels based on LLM self-assessment are systematically unreliable.

**Defense:** The labels are NOT self-reported — they are VERIFIABLE by external checking. CORPUS_MATCH requires a cited `load_bearing_match` with a specific file path and excerpt; verification = the path exists AND the excerpt appears in it (checkable). TRAINING_DISTRIBUTION_MATCH = no cited path. ADVERSARIAL_MATCH = cited match has specific failure-relationship annotations (see candidate #4 caveat). NOT_APPLICABLE = LLM explicitly declines with reason. Four labels with mechanically-verifiable triggers, not introspection.

**Collision:** Defense wins cleanly. Prosecution's concern applies only to self-reported labels; verifiable-trigger design eliminates it.

**Verdict: SURVIVE** — clean SURVIVE on honesty and rigor. Caveat for spec: the verification mechanism (path existence check, excerpt presence check) MUST be specified in P6/P8 explicitly, not left implicit. Without verification, the design collapses to the self-report case prosecution describes.

---

### 4. Adversarial / failure-pattern scan mode [HIGH: actionability, signal honesty]

**Landscape position preview:** Boundary region — right direction, underdefined trigger.

**Prosecution:** "Failure pattern" is underdefined. A `SUPERSEDED BY` annotation in `_state.md` doesn't necessarily mean the superseded finding FAILED — it could have been refined, extended, or architecturally superseded while its content remained valid. Example from this session: `regression_detection_design` was superseded by `importance_measurement_problem`, but the seeds transferred (L1 spec-diff MVP persisted). Treating every SUPERSEDED finding as a failure pattern produces FALSE ADVERSARIAL MATCHES that predict failure repetition where no failure occurred.

**Defense:** The distinction between "superseded with transfer" vs "superseded as failure" IS observable via relationship annotations. Specific relationship types can distinguish: `CORRECTED_BY` (wrong claim identified — failure), `REPLACED_BY` (fully superseded content — failure), explicit `status: failed` / `status: retracted` frontmatter. `SUPERSEDED BY` alone is too coarse.

**Collision:** Prosecution is correct that SUPERSEDED ≠ failure. Defense is correct that finer distinctions exist. The innovation as written uses SUPERSEDED BY, which is the coarse version. Needs sharpening.

**Verdict: REFINE** — adversarial mode keeps the core idea but requires REFINED trigger criteria:
- `CORRECTED_BY` relationship in `_state.md` (explicit wrong claim) → adversarial match
- `REPLACED_BY` relationship (full content replacement) → adversarial match
- Frontmatter `status: failed` or `status: retracted` → adversarial match
- `SUPERSEDED_BY` with `correction_scope` field (like `importance_measurement_problem`'s correction metadata) → adversarial match IF the scope names a wrong claim
- `SUPERSEDED_BY` alone with no failure indicators → NOT adversarial (supersession-with-transfer)

Document these as failure-indicator relationships explicitly. Until the corpus has enough failure-annotated findings, adversarial mode may produce low volume — acceptable for MVP.

---

### 5. Pipeline-early auto-invocation + opening-book framing [MEDIUM: integration, scope]

**Landscape position preview:** Boundary on scope (mandatory overhead risk).

**Prosecution:** Auto-invoking /intuit on every new inquiry adds MANDATORY overhead. Many inquiries won't benefit (novel territory with no corpus precedent; implementation detail inquiries where analogy is noise). Mandatory pre-run on these produces INSUFFICIENT_INTUITION or NOT_APPLICABLE output that clutters the folder and user review. Process bloat before the discipline has proved value.

**Defense:** Auto-invocation can be DEFAULT-ON with an opt-out flag at `/MVL+`; the INSUFFICIENT/NOT_APPLICABLE outputs are short and explicit (honest scope, not clutter); the opening-book mental model is architectural branding that establishes intuition as first response.

**Collision:** Prosecution's concern is real at MVP scale; defense's opt-out design mitigates it. But at MVP, the DEFAULT should be OFF (opt-in), not ON — let the user trigger it while calibration develops; switch default to ON after calibration matures.

**Verdict: REFINE** — pipeline-early invocation is OPT-IN for MVP (user runs `/MVL+ <question> --intuit` or similar to enable). Opening-book mental model is kept regardless as framing. Default-on reconsidered after P11 calibration matures (≥N=30 per discipline with good calibration curves).

---

### 6. Failed-projection as corpus-limit data [MEDIUM: signal honesty, scope]

**Landscape position preview:** Viable on signal honesty; boundary on scope (overhead concern).

**Prosecution:** Adds a new data type (`corpus_limit_seeds`) with no clear consumer. Who reads them? What triggers action? Without a downstream purpose, this is data accumulation for its own sake — information without function. Process bloat.

**Defense:** Corpus-limit seeds identify "structural patterns the system doesn't yet handle" — these are latent inquiry seeds. The downstream consumer is the user reviewing corpus_limit_seeds periodically to identify high-frequency gaps and start new inquiries. Low-overhead logging with clear retrospective value.

**Collision:** Prosecution's concern is real IF the overhead is nontrivial. Defense holds IF storage is minimal (one line per failed projection, single log file, no elaborate metadata) and consumer use is optional.

**Verdict: SURVIVE (caveat)** — corpus_limit_seeds are kept BUT must be LIGHTWEIGHT: one-line-per-entry in a single log file (`devdocs/intuit_corpus_limits.log` or similar); no elaborate metadata; user review is optional and manual; no automated escalation. Do not let this grow into heavy infrastructure. If in practice the file accumulates noise rather than useful signals, kill it.

---

### 7. Hypothesis-first inversion [HIGH: falsifiability, signal honesty]

**Landscape position preview:** Boundary — strong Popperian fit, confirmation-bias risk.

**Prosecution:** Hypothesis-first makes every /intuit call START with a prediction, which biases the entire process toward confirming that prediction. Classic confirmation-bias-by-construction. The LLM generates a hypothesis, then extracts a predicate that fits the hypothesis, then scans for matches that fit the predicate, then projects — each step narrowing toward the initial guess. The original abstraction-first design (source → pattern → matches → projection) was LESS biased because no prediction was committed upfront.

**Defense:** Popperian framing makes hypothesis-first valuable IF the scan explicitly TESTS the hypothesis rather than confirming it. A scan that actively searches for CONTRADICTING evidence (including adversarial matches from candidate #4) turns hypothesis-first into honest falsification testing. Without adversarial scan, hypothesis-first collapses to confirmation bias. With adversarial scan mandatory, it becomes honest hypothesis testing.

**Collision:** Defense holds ONLY IF adversarial scan is mandatory in hypothesis-first mode. Without adversarial scan, hypothesis-first is the trap prosecution names. The two innovations are COUPLED — hypothesis-first cannot ship alone.

**Verdict: SURVIVE (caveat)** — hypothesis-first mode is kept AND coupled: whenever hypothesis-first is invoked, adversarial scan (candidate #4 with its refined triggers) runs alongside convergent/divergent. The scan MUST include explicit search for evidence against the hypothesis. Document the coupling in P2 process model. If adversarial scan is not available (e.g., corpus has no failure-annotated findings yet), hypothesis-first mode is DISABLED until the corpus can support it.

---

### 8. Validator invocation mode [MEDIUM: scope, integration fit]

**Landscape position preview:** Boundary — real use case, scope concern.

**Prosecution:** Validator mode adds a fifth cell to the input-surface matrix and a distinct call pattern. It DUPLICATES what the caller discipline could do with a direct LLM call ("here's a hypothesis; is it supported by prior findings?"). The abstraction-scan-projection machinery is overkill for this specific use case. Process bloat.

**Defense:** Validator mode ensures caller-supplied hypotheses are checked against the SAME corpus with the SAME abstraction protocol used by standard /intuit — calibration consistency. If callers bypass /intuit for validation via direct LLM calls, calibration data becomes FRAGMENTED across different mechanisms, breaking P11's per-discipline calibration curves.

**Collision:** Defense's concern (fragmented calibration) is real. But validator mode's complexity cost is also real. The compromise: validator mode survives but as a LIGHTER PATH through the standard process, not a new matrix cell.

**Verdict: REFINE** — validator is a LIGHTER PATH, not a new cell:
- Caller supplies `hypothesis` (the prediction) and `abstraction` (pre-computed or skip the forward-transform entirely)
- /intuit runs scan + projection as normal but uses the supplied abstraction as-is
- Output is a single verdict per hypothesis (supported / contradicted / INSUFFICIENT) rather than a differential
- Invocation via flag on embedded-mode call: `intuit(source=X, validator_hypothesis=Y, validator_abstraction=Z)`

Document as a variant of embedded invocation, not a distinct matrix cell. Scope stays manageable.

---

## Assembly Check

Do the 8 candidates (as refined) assemble into a coherent discipline? Dependency graph:

- **Structured abstractions (1)** ←coupled→ **Discriminators (2)** (structured predicates make discriminators easier to articulate)
- **Source labels (3)** ←contributes→ **Adversarial mode (4)** (adversarial is one of the source_type values)
- **Adversarial mode (4)** ←coupled→ **Hypothesis-first (7)** (hypothesis-first requires adversarial to avoid confirmation bias)
- **Pipeline-early (5)** ←uses→ **Opening-book framing** (5's mental model); opt-in for MVP
- **Failed projections (6)** ←consumed by→ P11 calibration (low-overhead logging)
- **Validator (8)** ←variant of→ embedded invocation (lighter path)

The assembly is COHERENT but has real scope. Every pair has defined interaction.

### Assembly-level dimension check

| Dimension | Assembly result |
|---|---|
| Honest about structural limits | YES — verifiable source labels, corpus_limit_seeds, INSUFFICIENT + NOT_APPLICABLE states |
| Discipline rigor | YES — numbered process, named modes, decline conditions, failure modes |
| Buildability L0-2 | YES — LLM + markdown + convention; no new infra |
| Coherence with prior finding | YES — REFINES; three-layer architecture intact; schema extended additively |
| Signal honesty | YES — reliability + labels + verification + decline states |
| Actionability | YES (conditional on discriminator quality) — differential output with discriminators directly usable |
| Falsifiability | YES — Popperian schema preserved and extended |
| Integration fit | YES — opt-in pipeline-early; embedded + validator paths; opening-book mental model |
| Scope discipline | **BOUNDARY** — a lot of features for a first ship |

**Scope concern is real.** The assembled spec has: 3 scan modes (convergent/divergent/adversarial) + 2 entry points + 2 invocation modes + validator variant + hypothesis-first option + structured abstractions + differential output + 4 source labels + 5 states + corpus_limit_seeds + pipeline-early opt-in + opening-book framing.

That's feature-rich. Existing disciplines (/explore, /sense-making) have ~2-3 modes / ~2 entry points / 1 invocation mode / ~6 failure modes each. /intuit as specced is ~2x the surface.

**Assembly verdict: REFINE (scope staging)** — design is coherent; ship order matters. Propose phased build within the discipline itself:

**Phase A — /intuit MVP (first ship, core discipline works)**
- Convergent mode only
- Standalone invocation + source-first entry point
- Abstraction-first process (NOT hypothesis-first yet)
- Structured relational abstractions with vocabulary hint (candidate 1)
- Flat ranked output with reliability (differential structure deferred)
- Source labels: CORPUS_MATCH + INSUFFICIENT_INTUITION only (TRAINING_DIST + ADVERSARIAL + NOT_APPLICABLE deferred)
- Standard 11-field output schema (extended fields deferred)
- P14 validation on convergent mode correctness

**Phase B — /intuit expansion (after Phase A calibration ≥N=15)**
- Add divergent mode
- Add inquiry-state-first entry point
- Add embedded invocation + validator lighter path
- Upgrade output to differential with discriminators (candidate 2)
- Add TRAINING_DISTRIBUTION_MATCH and NOT_APPLICABLE source labels
- Add failed-projection logging (candidate 6)

**Phase C — /intuit adversarial + hypothesis-first (after corpus has failure-annotated findings)**
- Add adversarial mode with refined triggers (candidate 4 refined)
- Add hypothesis-first process variant (candidate 7, coupled with adversarial)
- Add ADVERSARIAL_MATCH source label
- Pipeline-early opt-in flag (candidate 5)

**Phase D — scale and maturity**
- Embedding pre-filter activation (from prior finding's Phase 5)
- Pipeline-early default-on decision (after calibration threshold)
- Extension to /explore, /sense-making, /decompose as consumers

Each phase delivers standalone value. Failure in a later phase doesn't invalidate earlier phases.

---

## The Answer

```
REFINED MVP DESIGN (/intuit, phased, post-critique):

DISCIPLINE IDENTITY (all phases):
  Methodology-level recognition-and-transfer discipline operating the L3
  real-time hunch layer; first-class + multi-location; grounded in CBR
  (Retrieve-Reuse-Revise) + SME (Alignment-Projection); scale-adaptive
  implementation (LLM-direct at current N); REFINES prior finding.

PHASE A — CORE DISCIPLINE (first ship)
  Process model:
    1. Prepare input (source text, source-first entry point)
    2. Forward transform: extract structured relational abstraction
       - Output: predicate(typed_args) form
       - Multi-sample consensus (3 samples) + prior-abstraction hint
       - Quality gate: trivial/empty → INSUFFICIENT
    3. Scan: CONVERGENT mode only (abstraction-similar + surface-similar)
    4. Projection: SME Alignment + Projection on top matches
    5. Produce output: flat ranked seeds with reliability
  Output schema (reduced):
    source_anchor, abstraction, corpus_match, structural_alignment,
    transferable_projection, prediction, prediction_window,
    observable_outcome, reliability, hunch_state
    + source_type (CORPUS_MATCH | INSUFFICIENT_INTUITION — verifiable)
  Decline conditions (4 of the eventual 5):
    empty abstraction | no matches | contradictory seeds | projection failure
  Failure modes (6 inherited from transforms + detection rules)
  Validation (P14): convergent correctness test + predicate stability test
                    (≥70% agreement threshold)
  NOT INCLUDED: divergent, adversarial, hypothesis-first, validator,
                differential output, pipeline-early, failed-projection log

PHASE B — EXPANSION (gated on Phase A N≥15 calibration)
  Adds: divergent mode; embedded invocation; validator lighter path;
        inquiry-state-first entry; differential output with discriminators
        (discriminator-quality P14 test, ≥60% actionable threshold or fall
        back to flat); TRAINING_DISTRIBUTION_MATCH + NOT_APPLICABLE labels;
        failed-projection logging (one-line-per-entry, lightweight)

PHASE C — ADVERSARIAL + HYPOTHESIS-FIRST (gated on failure-annotated corpus)
  Adds: adversarial mode with REFINED triggers (CORRECTED_BY, REPLACED_BY,
        status:failed/retracted, SUPERSEDED_BY + correction_scope);
        hypothesis-first process variant COUPLED with adversarial (cannot
        ship alone); ADVERSARIAL_MATCH source label; pipeline-early
        opt-in flag

PHASE D — SCALE + MATURITY
  Adds: embedding pre-filter activation (from prior finding's Phase 5);
        pipeline-early default-on; extension to additional disciplines

LOCKED CAVEATS (all phases):
- CORPUS_MATCH label VERIFIED by path-existence + excerpt-presence check
- Adversarial triggers require explicit failure-indicator relationships,
  not bare SUPERSEDED_BY
- Hypothesis-first CANNOT ship without adversarial mode (coupling)
- Validator is a lighter-path variant, not a new matrix cell
- Corpus_limit_seeds are lightweight logs; kill if they accumulate noise
- Structured abstractions require vocabulary-hint mechanism to prevent
  per-call predicate explosion
- Discriminator quality is a P14 gate; fall back to flat if <60% actionable
```

Refinements applied:
- Monolithic 8-feature MVP → 4-phase build (A/B/C/D) with each delivering standalone value
- Structured abstractions get vocabulary-hint mechanism (prevents veneer)
- Adversarial mode triggers refined (CORRECTED_BY / REPLACED_BY / status:failed, not bare SUPERSEDED_BY)
- Hypothesis-first coupled with adversarial (cannot ship alone)
- Validator demoted from matrix cell to lighter-path variant
- Pipeline-early is opt-in, not default-on
- Source labels verified by external check, not LLM self-report
- Discriminator quality gated by P14 test

One structural KILL (assembly-level): pure-monolithic MVP is not viable; phased build mandatory.
No individual-candidate kills added in critique.

---

## Confirming Innovation's Kills

### K1. RAG as lead framing (1a, 2a, 6a) — demoted
**Check:** holds. Novelty is WHAT we retrieve (abstractions, failure patterns) and HOW we use it (Alignment-Projection, differential, adversarial), not the retrieval mechanism. **DEMOTION CONFIRMED.**

### K2. Innovation-intuition merger (7c) — premature future-proofing
**Check:** holds. Distinction is architecturally load-bearing today (intuition is corpus-grounded recognition; innovation is mechanism-driven generation). Designing for hypothetical LLM convergence destabilizes the present spec. Revisit if actual merger signals appear. **KILL CONFIRMED.**

### K3. Depth-2 inversion (human-rated hypotheses) — too invasive
**Check:** holds. Level 3+ concern; MVP is system-autonomous. P11 calibration against L2 outcomes substitutes for human rating. **KILL CONFIRMED.**

### K4. Unlabeled training-distribution hunches (pure 4c) — dilutes calibration
**Check:** holds. Without labels, unrestricted LLM-memory hunches erode the discipline's corpus-grounded calibration basis. The labeled REFINE variant (training-distribution admitted WITH explicit label) preserves value; unlabeled does not. **KILL CONFIRMED.**

---

## Coverage + Convergence

**Accumulator update:**
- 8 candidates evaluated: 5 SURVIVE with caveats, 3 REFINE
- 4 innovation kills confirmed
- 1 assembly-level REFINE (phased build)
- No additional kills introduced in critique

**Coverage assessment:**
- All 4 CRITICAL dimensions tested against every candidate
- All 4 HIGH dimensions tested against every candidate
- 2 MEDIUM dimensions drove scope REFINE and integration timing
- Unexplored region check: "LLM drift on structured form" — addressed via vocabulary-hint mechanism + P14 stability test; not a blind spot
- Unexplored region check: "adversarial mode with empty failure corpus" — addressed by deferring adversarial to Phase C after corpus has failure-annotated findings
- Unexplored region check: "validator calibration vs fragmented direct-LLM calls" — addressed by the lighter-path design preserving calibration coherence

**Convergence signal:**
- At least one CRITICAL-dimension-clean SURVIVE: **candidate 3 (source labeling) is clean on all CRITICAL dimensions** given verification mechanism
- All caveats are engineering gates / phase sequencing, not fundamental doubts
- Landscape: STABLE — candidates land in predicted regions

**Overall: PROCEED** (with phased build requirement and documented engineering gates). The design is coherent; ship order is the only remaining structural decision, and it's resolved.

---

## Convergence Telemetry

* **Dimensions evaluated:** 9 / 9, all critical covered: YES
* **Adversarial strength:** STRONG — prosecution found specific, structural concerns per candidate (LLM prose drift, discriminator weakness, SUPERSEDED ≠ failure, confirmation bias, process bloat, self-report unreliability, scope explosion). Strongest advocate would pause on each.
* **Landscape stability:** STABLE — candidates landed in boundary or viable regions as predicted; no new regions discovered. Scope concern led to phased-build refinement (the discipline working correctly, not a failure mode).
* **Clean SURVIVE:** PARTIAL — candidate 3 (source labeling) is clean given verification mechanism; others have engineering-gate caveats. Assembly passes all CRITICAL dimensions under phased build.
* **Failure modes observed:** None from the 7. The assembly scope concern is critique operating correctly (catching the premature-over-engineering trap).
* **Overall: PROCEED** — dimensions covered, adversarial STRONG, at least one clean SURVIVE, assembly-with-phased-build passes all critical dimensions. Ready for finding.
