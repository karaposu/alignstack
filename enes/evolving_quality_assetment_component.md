# Evolving Quality Awareness — The Three-Layer Architecture

The system produces output: discipline results, findings, spec edits. But how does anyone know if that output is *good*? Right now, the human knows. The system doesn't. It produces output and has zero awareness of its own quality.

And if we want this system to be coinscess as humans and ever improving with new tasks and data. Then it shoud have internal quality assesment logic which is also improving over time.

This is essential also for conscsiossness ignition process. Once ignition is fired, the system will be online and will face various of tasks inputs. Which over time system should learn what it did good and what it did bad and compansate by editing it's own fundemental components. To this to be happen, system should continusly increase it's quality assesment logic too.. Otherwise it cant tell the difference between regression or improvement.

There are 2 parts of this self quality assesment.

- Regression Detection
- Improvement detection

And at the core right now we are concerned most about Regression Detection. Regression cna be measured more easily compare to improvement.

We designed 3 layered quality measurement logic to mimic how humans also do this.

The endgoal trajectory is the system gradually developing its own quality awareness across all three layers, so it doesn't depend entirely on the human for it.

---

## The Three Layers

### 1. Primitive Regression Checker (immediate, deterministic)

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

### 2. Predictive Regression Checker (immediate, probabilistic)

Any real-time sense that something is good or bad, before you have proof.

Has 2 main inputs:
1. Disciplines' own telemetry outputs as a source of information
2. Intuition mechanism

**When:** Right now, the moment output is produced — but unlike Primitive RC, this is a *judgment*, not a mechanical check.

**What it catches:** Things that *feel off*. Output that's structurally fine but qualitatively thin. Questions that resemble prior work. Approaches that pattern-match to past failures. The sense that "this sensemaking covered the right topics but didn't go deep enough."

**Signal type:** Probabilistic — a hunch with a confidence level, not a binary pass/fail. Can be wrong. Must be calibrated over time.

**Analogy:** An experienced practitioner's gut feeling. A senior engineer glances at a code review and says "this will cause problems in production" before they can articulate exactly why. They're pattern-matching against accumulated experience.

---

### 3. Retrospective (delayed, empirical)

**When:** Later. Days, weeks, sometimes months after the output was produced. After the finding has been used, after the spec edit has been tested in real inquiries, after downstream consequences have played out.

**What it catches:** Whether something *actually worked*. The ground truth. A finding that looked good at the time but turned out to be wrong. A spec edit that seemed like an improvement but caused subtle quality degradation. A hunch that turned out to be right — or wrong.

**Signal type:** Empirical — based on observed outcomes, not prediction or structure. This is the only layer that produces ground truth.

It mainly employs the reflect discipline.

**Examples:**
- A finding was superseded 3 weeks later because it was wrong — Retrospective signal: that finding was bad
- A spec edit led to noticeably better discipline output in subsequent inquiries — Retrospective signal: that edit was good
- A hunch that "this will be similar to X" turned out to be exactly right — Retrospective signal: the hunch mechanism was well-calibrated for that case
- A finding has been cited by 4 subsequent inquiries — Retrospective signal: that finding was valuable

---

## The Trajectory — From Human-Provided to System-Provided

**Phase: Human is all three layers (now)**
The human provides Primitive RC (structural review), Predictive RC (hunches), and Retrospective RC. The system has zero quality awareness.

**Phase: System has Primitive RC**
Automated structural checks catch format violations, missing sections, removed safeguards. The human still provides Predictive RC and Retrospective RC. The system catches breakage; the human catches quality issues.

**Phase: System has Primitive RC + Predictive RC**
The system can now sense whether its own output is qualitatively good or bad — not just structurally correct. The human still provides Retrospective RC ground truth. The system catches breakage AND has hunches; the human confirms or corrects the hunches.

**Phase: System has Primitive RC + Retrospective RC + Predictive RC**
The system can now calibrate its own hunches against outcomes. The feedback loop is closed. The human's role shifts from "provider of quality awareness" to "reviewer of the system's quality awareness." This is the point where the Baldwin cycle runs without the human in the loop.

---

## Connection to the Endgoal

The graduated autonomy model (from `enes/desc.md`) maps directly onto quality awareness:

| Autonomy level | Quality awareness state |
|---|---|
| Level 0 (human reviews everything) | Human is all three layers |
| Level 1 (human reviews process changes) | System has Primitive; human provides Retrospective + Predictive |
| Level 2 (human reviews uncertain cases) | System has Primitive + partial Retrospective; human provides Predictive + handles Retrospective edge cases |
| Level 3 (human sets strategic direction) | System has Primitive + Retrospective + Predictive; human reviews calibration quality |
| Level 4+ (system proposes own direction) | System's quality awareness is self-sustaining; human observes |

Quality awareness IS the substrate of autonomy. A system that can't tell good from bad output can't be trusted to self-modify. Each autonomy level requires the corresponding quality awareness capability.
