---
status: active
---
# System Quality Awareness — The Three-Layer Architecture

## What This Is

The system produces output: discipline results, findings, spec edits. But how does anyone know if that output is *good*? Right now, the human knows. The system doesn't. It produces output and has zero awareness of its own quality.

The three-layer architecture is a model of quality awareness — three structurally different ways of knowing whether output is good or bad. They differ in *when* they fire, *what kind* of signal they produce, and *how certain* that signal is.

The endgoal trajectory is the system gradually developing its own quality awareness across all three layers, so it doesn't depend entirely on the human for it.

---

## The Three Layers

### L1 — Structural (immediate, deterministic)

**When:** Right now, the moment output is produced or a spec is changed.

**What it catches:** Things that are *broken*. Format violations, missing sections, removed safeguards, internal contradictions, deleted failure modes.

**Signal type:** Binary — something is structurally wrong or it isn't. No judgment needed.

**Analogy:** A spell-checker. It doesn't know if your writing is good, but it knows if you misspelled a word.

**Examples:**
- A spec edit removed a failure mode that was previously defined
- A sensemaking output has no ambiguity collapse section
- A finding references a file path that doesn't exist
- An innovation output applied zero generators (minimum coverage violated)

**Current state:** Not built. The human does this informally (eyeballing spec edits for breakage). No automated structural checks exist.

**Source of signal:** Git diff, text scanning, telemetry field checks, format validation against discipline specs.

---

### L3 — Real-Time Hunch (immediate, probabilistic)

**When:** Right now, the moment output is produced — but unlike L1, this is a *judgment*, not a mechanical check.

**What it catches:** Things that *feel off*. Output that's structurally fine but qualitatively thin. Questions that resemble prior work. Approaches that pattern-match to past failures. The sense that "this sensemaking covered the right topics but didn't go deep enough."

**Signal type:** Probabilistic — a hunch with a confidence level, not a binary pass/fail. Can be wrong. Must be calibrated over time.

**Analogy:** An experienced practitioner's gut feeling. A senior engineer glances at a code review and says "this will cause problems in production" before they can articulate exactly why. They're pattern-matching against accumulated experience.

**Examples:**
- "This question is structurally similar to one we investigated three months ago"
- "This critique feels like it rubber-stamped — prosecution was too weak"
- "This decomposition partitioned along the wrong axis — the coupling is actually elsewhere"
- "This approach will fail for the same reason the regression_detection approach failed"

**Current state:** The human IS the L3 layer. Every time the user reads output and thinks "this doesn't feel right" — that's L3. The system has no L3 of its own.

**Source of signal:** Pattern recognition against accumulated experience (for the human: lived experience with the system; for the system eventually: corpus of prior findings, structural similarity matching, failure-pattern detection).

---

### L2 — Retrospective (delayed, empirical)

**When:** Later. Days, weeks, sometimes months after the output was produced. After the finding has been used, after the spec edit has been tested in real inquiries, after downstream consequences have played out.

**What it catches:** Whether something *actually worked*. The ground truth. A finding that looked good at the time but turned out to be wrong. A spec edit that seemed like an improvement but caused subtle quality degradation. A hunch (L3) that turned out to be right — or wrong.

**Signal type:** Empirical — based on observed outcomes, not prediction or structure. This is the only layer that produces ground truth.

**Analogy:** A report card. You took the test (L3 guessed how you did), and now the grades are back (L2 tells you how you actually did).

**Examples:**
- A finding was superseded 3 weeks later because it was wrong — L2 signal: that finding was bad
- A spec edit led to noticeably better discipline output in subsequent inquiries — L2 signal: that edit was good
- A hunch that "this will be similar to X" turned out to be exactly right — L2 signal: the hunch mechanism was well-calibrated for that case
- A finding has been cited by 4 subsequent inquiries — L2 signal: that finding was valuable

**Current state:** The human IS the L2 layer. The user looks back at past work, notices what held up and what didn't, and edits specs accordingly. No systematic mechanism tracks outcomes over time.

**Source of signal:** Downstream usage (was the finding cited? superseded? corrected?), relationship tracking in `_state.md` (SUPERSEDED BY density, CORRECTED BY relationships), telemetry trends across inquiries, human retrospective judgment.

---

## How the Layers Interact

The three layers are not independent — they form a feedback loop:

```
L3 produces a hunch at T0
   ↓
The system acts on it (or doesn't)
   ↓
L2 observes what actually happened at T2+
   ↓
The delta (was the hunch right?) calibrates L3
   ↓
L3 produces better hunches next time
```

This feedback loop — **hunch → outcome → better hunch** — is how human intuition develops. It is also the mechanism the system calls the Baldwin cycle. L3 predicts. L2 confirms or contradicts. The delta is learning.

**L1 sits outside this loop.** It doesn't predict or learn — it catches structural breakage mechanically. L1 is always useful, never improves (it either checks a rule or it doesn't), and never interacts with L3 or L2.

**L2 is the calibrator of L3.** Without L2, L3 hunches have no feedback — they never learn, never improve, and may become confidently wrong. Without L3, L2 has nothing to calibrate — there are no predictions to check against outcomes.

---

## Why Three Layers, Not Two or Four

**Why not two (just L1 + L2)?**
That was the original design (from the `importance_measurement_problem` inquiry). It leaves real-time value judgment unaddressed — the system has no way to pre-empt problems, only to detect them after the fact. The human fills this gap, but the system can't develop this capability without an L3 layer.

**Why not two (just L1 + L3)?**
L3 without L2 is hunches without feedback. Hunches that never get checked become superstitions — confidently held beliefs with no empirical grounding. L2 is what keeps L3 honest.

**Why not four or more?**
Each layer corresponds to a structurally distinct signal type: deterministic-immediate, probabilistic-immediate, empirical-delayed. There are no other combinations. A fourth layer would need to be either a new signal type or a new temporal position — neither has been identified.

---

## Who Provides Each Layer Today

| Layer | What the human provides | What the system provides |
|---|---|---|
| L1 | Eyeballs spec edits for breakage, notices missing sections | Nothing — no automated structural checks |
| L3 | Gut feelings about output quality, pattern recognition from experience, "this feels thin" | Nothing — no self-assessment capability |
| L2 | Looks back at past work, notices what held up, edits specs accordingly | Partial — `_state.md` relationships track supersession/correction, but no systematic outcome tracking |

The endgoal trajectory is each row's "What the system provides" column gradually filling in, reducing dependence on the human for quality awareness.

---

## The Trajectory — From Human-Provided to System-Provided

**Phase: Human is all three layers (now)**
The human provides L1 (structural review), L3 (hunches), and L2 (retrospective judgment). The system has zero quality awareness.

**Phase: System has L1**
Automated structural checks catch format violations, missing sections, removed safeguards. The human still provides L3 and L2. The system catches breakage; the human catches quality issues.

**Phase: System has L1 + L3**
The system can now sense whether its own output is qualitatively good or bad — not just structurally correct. The human still provides L2 (retrospective ground truth). The system catches breakage AND has hunches; the human confirms or corrects the hunches.

**Phase: System has L1 + L3 + L2**
The system can now calibrate its own hunches against outcomes. The feedback loop is closed. The human's role shifts from "provider of quality awareness" to "reviewer of the system's quality awareness." This is the point where the Baldwin cycle runs without the human in the loop.

---

## Connection to the Endgoal

The graduated autonomy model (from `enes/desc.md`) maps directly onto quality awareness:

| Autonomy level | Quality awareness state |
|---|---|
| Level 0 (human reviews everything) | Human is all three layers |
| Level 1 (human reviews process changes) | System has L1; human provides L3 + L2 |
| Level 2 (human reviews uncertain cases) | System has L1 + partial L3; human provides L2 + handles L3 edge cases |
| Level 3 (human sets strategic direction) | System has L1 + L3 + L2; human reviews calibration quality |
| Level 4+ (system proposes own direction) | System's quality awareness is self-sustaining; human observes |

Quality awareness IS the substrate of autonomy. A system that can't tell good from bad output can't be trusted to self-modify. Each autonomy level requires the corresponding quality awareness capability.

---

## What This File Is Not

This is not a spec for a tool or command. It's an architectural concept — the framework for understanding what "quality" means in the system and how the system develops its own quality awareness. Specific implementations (structural checkers, hunch mechanisms, calibration systems) are designed in their own specs and inquiries. This document is the stable-view reference for the three-layer architecture as it applies to quality awareness.

---

## References

- `enes/thinking_space_dynamics.md` — the three-layer architecture in full technical detail, including the typed 11-primitive set
- `enes/desc.md` — the autonomous consciousness endgoal, including the graduated autonomy model and Baldwin cycles
- `devdocs/inquiries/importance_measurement_problem/finding.md` — the inquiry that introduced the two-layer model (L1 + L2)
- `devdocs/inquiries/thinking_space_dynamics/finding.md` — the inquiry that corrected it to three layers (L1 + L3 + L2) and introduced the real-time hunch concept
