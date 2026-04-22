# Decomposition: Regression Detection Design

## User Input
devdocs/inquiries/regression_detection_design/_branch.md

(Reads exploration.md + sensemaking.md; sensemaking's 4 sub-problems + 2-tier signaling + phased build is the partition seed.)

---

## 1. Coupling Map

```
CLUSTER A: Spec-regression (MVP)
  ├─ git diff mechanism
  ├─ 4 spec symptoms (types 20-23)
  ├─ thresholds, word lists, safeguard terms
  └─ pre-commit trigger

CLUSTER B: Output-regression (Phase 2)
  ├─ text-scan + telemetry-check
  ├─ 10 output/error symptoms (1-6, 16-19)
  └─ post-discipline trigger

CLUSTER C: Experience-regression (Phase 3)
  ├─ human prompt
  ├─ 5 experience symptoms (7-11)
  └─ TERMINATE trigger

CLUSTER D: Pipeline-regression (Phase 4)
  ├─ cross-discipline telemetry check
  ├─ 4 pipeline symptoms (12-15)
  └─ next-discipline trigger

CLUSTER E: Infrastructure (cross-cutting)
  ├─ Symptom Log Schema [HUB]
  ├─ Pattern Detector [reads hub]
  └─ Human Validation [writes hub]

CLUSTER F: Retrospective Test Harness
  └─ validates Piece 2 on historical git commits

Boundaries (valleys):
  A—B, B—C, C—D   (sub-problems, weakly coupled)
  A/B/C/D — E     (detectors vs infrastructure, moderate)
  E — F           (infrastructure vs validation, weak)

Shared utilities (flagged):
  - Telemetry parser — used by B and D
  - Human Q/A prompt template — used by C and E's validation
```

---

## 2. Question Tree (9 pieces)

### P1: Symptom Log Schema (FOUNDATION)
**Question:** What is the exact format for recording a detected symptom, such that all 4 detectors write to it, pattern detector reads from it, and human validation annotates it?

**Verification:**
- [ ] Required fields: symptom name, type, signal evidence, severity, context, inquiry_folder, discipline, timestamp
- [ ] Optional fields: human_validation (TP|FP|UNKNOWN|DEFER), validator note, pattern_matches
- [ ] Both storage locations (`_state.md` section + global `regression_log.md`) use same format
- [ ] Append-only semantics (never overwrite; validations are new records referencing originals)
- [ ] Readable by humans, parseable by scripts/prompts

### P2: Spec-Regression Detector (MVP CORE)
**Question:** Given a changed spec file, what exact checks detect spec symptoms 20-23, and what report format signals pattern-level alerts?

**Verification:**
- [ ] Type 20 rule (shorter than before): net line loss threshold (e.g., > 20% OR any section removed)
- [ ] Type 21 rule (missing sections): header extraction HEAD~1 vs HEAD, diff sections
- [ ] Type 22 rule (weakened language): word-pair list (MUST→should, required→recommended, always→usually, shall→may, exclusively→primarily, etc.)
- [ ] Type 23 rule (removed safeguards): safeguard term list (prosecution, defense, failure modes, adversarial, telemetry, etc.), present HEAD~1 but absent HEAD
- [ ] Emits records per P1 schema
- [ ] Spec Degradation pattern (all 4 fire) → strong alert
- [ ] Partial (2-3 fire) → alert, weaker
- [ ] Single → log + mild alert (spec changes are high-stakes)

### P3: Pattern Detector (INFRASTRUCTURE)
**Question:** How does the pattern detector read symptom logs, match against diagnostic patterns, and emit alerts?

**Verification:**
- [ ] Reads from `_state.md` symptom section and global log
- [ ] Pattern registry: 5 original (Surface Run, Confirmation Bias, Introduced Error, Pipeline Degradation, Slow Drift) + 1 new (Spec Degradation)
- [ ] Match rule: 2-3 constituent symptoms co-occurring within a scope
- [ ] Scope per pattern: within-run, within-discipline, cross-discipline, cross-run
- [ ] Alert: pattern name + constituent symptoms + context + severity
- [ ] MVP scope: Spec Degradation only (other patterns need phases 2-4)

### P4: Human Validation (INFRASTRUCTURE)
**Question:** How does a human mark logged symptoms as TP/FP/UNKNOWN, and how does that annotation build calibration data?

**Verification:**
- [ ] Validation action: append new record referencing original (not edit in place)
- [ ] States: TP | FP | UNKNOWN | DEFER
- [ ] Optional reason field
- [ ] Readable by pattern detector and future Level 3+ calibrators
- [ ] MVP form: markdown comment on log entry OR separate validations section
- [ ] Trigger: human-initiated at MVP (automatic prompting is future)

### P5: Output-Regression Detector (PHASE 2 — DEFERRED DESIGN)
**Question:** For a completed discipline run, what checks detect output symptoms 1-6 and error symptoms 16-19 via text scan + telemetry parse?

**Verification:** (specified when Phase 2 begins)
- [ ] Symptom-by-symptom rules for 10 symptoms
- [ ] Map each to text-scan-prompt OR telemetry-field-check
- [ ] Thresholds per symptom
- [ ] Writes P1 schema — dependency preserved

### P6: Experience-Regression Detector (PHASE 3 — DEFERRED DESIGN)
**Question:** How does the post-TERMINATE human prompt capture experience symptoms 7-11, handling subjectivity?

**Verification:** (specified when Phase 3 begins)
- [ ] Prompt format for 5 experience symptoms
- [ ] Optional-by-default at MVP
- [ ] Cross-check with output symptoms (Déjà vu reported → output actually similar to prior?)
- [ ] Writes P1 schema

### P7: Pipeline-Regression Detector (PHASE 4 — DEFERRED DESIGN)
**Question:** How do we detect pipeline symptoms 12-15 by cross-checking upstream/downstream outputs?

**Verification:** (specified when Phase 4 begins)
- [ ] Detect downstream rejection (next discipline says prior inadequate)
- [ ] Detect upstream-downstream mismatch (outputs contradict)
- [ ] Detect pipeline stall (telemetry below threshold across sequence)
- [ ] Writes P1 schema

### P8: Integration with MVL/MVL+
**Question:** Where in the MVL/MVL+ flow do detectors hook in, how triggered, how interact with existing commands?

**Verification:**
- [ ] Spec trigger: pre-commit hook OR manual (MVP: manual)
- [ ] Output trigger: at discipline completion OR TERMINATE (Phase 2)
- [ ] Experience trigger: TERMINATE, optional (Phase 3)
- [ ] Pipeline trigger: next-discipline start (Phase 4)
- [ ] Does not modify MVL/MVL+ spec at MVP (manual invocation)
- [ ] Future integration points documented

### P9: Retrospective Testing
**Question:** How do we test P2 against past spec changes to measure TP/FP rates before general adoption?

**Verification:**
- [ ] Test corpus: 5-10 past commits modifying `commands/` spec files
- [ ] Per commit, manual assessment: regression per 4 spec symptoms?
- [ ] Run P2 on the commit
- [ ] Compute agreement: TP / FP / FN rates
- [ ] Acceptable MVP rates (e.g., FP < 20%)
- [ ] Refine thresholds / word lists based on results

---

## 3. Interface Map

| Source | Target | What flows | Direction | Type |
|---|---|---|---|---|
| P2, P5, P6, P7 (detectors) | P1 (Schema) | Symptom record | Write | Data |
| P1 (Schema) | P3 (Pattern) | Logged symptoms | Read | Data |
| P3 (Pattern) | Human (via P8) | Pattern alert | Notify | Signal |
| P4 (Validation) | P1 (Schema) | Validation record (references original) | Write | Data |
| P8 (Integration) | P2, P5, P6, P7 | Trigger invocation | Call | Control |
| P9 (Retro Test) | P2 (Spec Detector) | Historical commit | Input | Data |
| P2 → P9 | Detection result | Output | Data |
| P9 → P4 | Expected results for validation | Input | Data |
| Symptom taxonomy doc | All detectors | Reference definitions | Read | Prerequisite |
| Pattern registry (5+1) | P3 (Pattern) | Pattern definitions | Read | Prerequisite |

**Hidden interfaces:**
- Symptom name consistency: taxonomy doc labels ARE the schema enum values
- Pattern scope specifier: each pattern definition includes scope (within-run/cross-run/etc.)

---

## 4. Dependency Order

**MVP critical path:**
```
P1 (Schema) → P2 (Spec Detector) → P8 (Integration, manual doc) → 
P9 (Retro Test) → P4 (Validation, optional) → P3 (Pattern, minimal = Spec Degradation only)
```

**Phase 2-4 (after MVP proven):**
```
P5 (Output) // P6 (Experience) // P7 (Pipeline)   ← parallel, all depend on P1 being stable
```

**Parallel opportunities at MVP:**
- P1 schema design + P2 detection rule design can happen in parallel once fields agreed
- P9 test cases can be specified before P2 is implemented

**No circular dependencies.**

---

## 5. Self-Evaluation

| Dimension | Result | Notes |
|---|---|---|
| **Independence** | PASS | Each piece has minimal, clearly ordered dependencies |
| **Completeness** | PASS | All 23 symptoms + 5+1 patterns + both storage + validation + integration + test harness covered |
| **Reassembly** | PASS | Full set solves the branch's goal; Baldwin feed comes from P4 accumulating TP/FP data |
| **Tractability** | PASS | Each piece fits one focused pass; MVP pieces are small-to-medium |
| **Interface clarity** | PASS | All cross-piece flows documented; hidden coupling (symptom name consistency, pattern scope) made explicit |
| **Balance** | PASS | No piece is 80% of work; P2 is heaviest at MVP but scoped |
| **Confidence** | PASS | Top-down (4 sub-problems + infra + integration + validation) matches bottom-up atoms |

**All 7 dimensions pass. Decomposition is ready for Innovation.**

Innovation should focus on:
- **P1 (schema)** — field choice, format, dual-location sync
- **P2 (spec detector)** — threshold decisions, word list completeness, report format
- **P3 (pattern detector)** — MVP scope (just Spec Degradation) vs preparing for future patterns
- **P9 (retro test)** — corpus selection criteria
