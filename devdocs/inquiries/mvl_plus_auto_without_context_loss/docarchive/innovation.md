# Innovation: MVL+ Auto-Chain Without Context Loss

## User Input
/innovate on full first-phase output (exploration.md + sensemaking.md + decomposition.md) for the mvl_plus_auto_without_context_loss inquiry.

## Seed
The design for MVL+ auto-chaining is understood and decomposed into four pieces (state format → spec loading → checkpoint design → command flow). Seed: what are the best concrete designs for each piece, and does an assembly produce something more powerful than the pieces?

## Direction
User wants to stop being a dumb relay. MVL+ already has routing intelligence. Innovation focuses on MECHANISM, not CONCEPT (concept is settled by sensemaking).

---

## Mechanism Outputs

### 1. Lens Shifting — Checkpoint Mode
MVL+ puts the session into "checkpoint mode" after each discipline. User's next message is ALWAYS interpreted as intent: Enter/"go" = proceed, substantive text = redirection. No command parsing. LLM reads intent.

**Verdict:** SURVIVE (focused version). The controversial "no slash commands ever" version REFINED — too fragile for intent detection on first message, but checkpoint mode between disciplines is clean.

### 2. Combination — Directive-as-Program + Telemetry Extraction
- `_state.md` directive becomes executable: LLM reads "Next: Sensemaking" and DOES it (not tells user to do it)
- Checkpoint telemetry extracted from EXISTING discipline indicators (saturation, mechanism coverage, etc.) — no new metrics needed
- `/loop` combination KILLED (wrong tool — /loop is for same-task recurrence)

**Verdict:** BOTH SURVIVE. Directive-as-program is highly fertile (enables cross-session automation). Telemetry extraction is necessary infrastructure.

### 3. Inversion — Command IS Auto-Chain + Checkpoint-as-Preamble
- Level 3: Rewrite MVL+ spec from "router that tells" to "executor that does"
- Checkpoint is the OPENING of the next response (preamble), not the CLOSING of the previous (barrier)
- The pipeline is ONE cognitive operation split into phases; responses are just buffering

**Verdict:** BOTH SURVIVE. Clean structural reframes. Command-IS-auto-chain eliminates the manual/auto distinction entirely. Checkpoint-as-preamble makes transitions seamless.

### 4. Constraint Manipulation — Default-Flip + Telemetry Gating
- Flip default: must-act-to-PAUSE instead of must-act-to-PROCEED
- Replace Rule 5 ("human reviews between steps") with "system presents telemetry at each checkpoint and flags below-threshold metrics" — more reliable quality gate

**Verdict:** BOTH SURVIVE. Default-flip is the UX implication of the executor design. Telemetry gating is structurally superior to mandatory human review (supported by sensemaking anchor R1).

### 5. Absence Recognition — Telemetry Normalization
- Each discipline reports telemetry differently. Checkpoints need a NORMALIZED 2-3 line view.
- Missing: per-discipline checkpoint template defining which metrics to surface
- Rollback mechanism deferred (human can say "re-run X" at checkpoint)
- Run object killed (over-engineering)

**Verdict:** TELEMETRY NORMALIZATION SURVIVES. Essential for checkpoint design. Blocks Piece 2 of decomposition without it.

### 6. Domain Transfer — Pass Manager + Meaningful Change
- From compiler optimization: MVL+ as pass manager running discipline "passes" sequentially
- "Meaningful change" check per discipline: did this discipline meaningfully transform inquiry state? (Maps to existing metrics: SV delta, discovery rate, mechanism coverage, landscape stability)
- Invalidation-based re-run deferred (premature)

**Verdict:** PASS MANAGER + CHANGE CHECK SURVIVE. Clean mental model + practical quality signal.

### 7. Extrapolation — Threshold Calibration from Day One
- Log telemetry values and thresholds from first use so calibration data accumulates
- Cross-session auto-chain deferred (build same-session first)
- Level 2-3 autonomy is the directional endpoint

**Verdict:** THRESHOLD LOGGING SURVIVES. Low-cost, high-future-value.

---

## Assembly

10 survivors combine into one architecture:

**MVL+ becomes an executor, not a router** (Inversion #4). Creates folder and immediately begins Exploration. On resume, reads `_state.md` directive and executes next discipline directly.

**Between disciplines**, checkpoint-as-preamble (Inversion #5): next response OPENS with normalized telemetry (Absence #8) from existing indicators (Combination #3), checking meaningful change (Domain Transfer #9), then proceeds to next discipline.

**Default is auto-proceed** (Constraint #6). User input interpreted via checkpoint mode (Lens Shifting #1): Enter = proceed, text = redirect. Quality gated by telemetry (Constraint #7), not manual command typing.

**From day one**, telemetry values and thresholds logged (Extrapolation #10) for progressive calibration.

**Assembly verdict: SURVIVE.** Produces emergent value:
- Cognitive flow preservation (user watches, intervenes when they CHOOSE)
- Quality gating superior to manual mode (structured telemetry > mandatory command typing)
- Progressive calibration (system improves with use)
- Cross-session compatible (`_state.md` directive works from any session)

---

## Mechanism Coverage (Telemetry)

- Generators applied: 4/4
- Framers applied: 3/3
- Convergence: YES — 5+ mechanisms converge on executor-with-checkpoint-preamble-and-telemetry-gating
- Survivors tested: 10/10 + 1 assembly
- Failure modes observed: none
- **Overall: PROCEED**
