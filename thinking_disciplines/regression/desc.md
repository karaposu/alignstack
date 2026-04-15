# Regression — Detecting Quality Decline in a Self-Modifying System

## What Regression Is

Regression is the degradation of a system's quality as a result of change. A discipline that worked well yesterday works less well today — not because the problems changed, but because something in the discipline changed (an edit, a simplification, a well-intentioned "improvement" that removed something load-bearing).

In a self-modifying cognitive system — where the disciplines are used to improve themselves — regression is the central danger. Every self-improvement cycle that changes a discipline spec or command risks introducing regression. The system's greatest strength (it can modify its own architecture) is also its greatest vulnerability (those modifications can degrade it).

 It's the third structural component: system-level failure mode awareness.
Same concept as the failure modes inside each discipline, but at system scope:                     

Regression is not:
- **Failure** — failure is when the discipline doesn't work at all. Regression is when it works LESS WELL than before. The difference matters: failure is obvious; regression is subtle.
- **Limitation** — a discipline that can't do something it was never designed to do isn't regressed. Regression is losing a capability that previously existed.
- **Evolution** — sometimes a discipline changes intentionally and the new version is deliberately different from the old. That's evolution, not regression — IF the change was conscious and the tradeoffs were understood. Regression is UNINTENTIONAL loss of quality.

---

## Why Regression Matters

### The Self-Improvement Paradox

The thinking disciplines system is designed to improve itself. The SIC loop can be applied to the disciplines themselves: sensemaking identifies a discipline's weaknesses, innovation generates fixes, critique evaluates the fixes. This is the Baldwin Effect — learned improvements encoded into the architecture.

But every modification is a regression risk. If sensemaking's failure modes are edited and a critical safeguard is accidentally weakened, every future sensemaking run inherits the weakness. The regression propagates FORWARD through all future use, invisibly. Nobody detects it because the weakened version still WORKS — it just works slightly less well.

Over many self-improvement cycles, small regressions compound. Each one is too small to notice. Together, they can degrade the system below the self-improvement viability threshold — the point where the system's critique of its own changes is no longer reliable enough to catch bad changes. Below this threshold, the self-improvement loop becomes a self-degradation loop.

### The Three Regression Vectors

**1. Spec regression** — someone edits a discipline's spec file (`thinking_disciplines/*.md`) and accidentally removes, weakens, or contradicts a component that was earning its place. The most common cause: a future AI session that doesn't have the context for WHY a section exists.

**2. Command regression** — someone edits a discipline's command file (`commands/*.md`) and breaks the execution instructions, removes a telemetry section, weakens a safeguard, or changes the output format in a way that downstream disciplines can't consume.

**3. Threshold regression** — inquiry's telemetry thresholds are loosened, allowing lower-quality outputs to pass the quality gate. The disciplines themselves are fine; the gatekeeper is weakened.

---

## Why Regression Is Hard to Measure

The thinking discipline system has two types of disciplines with fundamentally different quality profiles:

| Type | Disciplines | Quality is... | Measurable? |
|---|---|---|---|
| **Mechanistic** | Comprehend, Exploration, Decomposition | Predictive accuracy, coverage completeness, structural correctness | YES — prediction accuracy is a number, coverage is countable, structure is verifiable |
| **Meaning-producing** | Sensemaking, Innovation | Depth of understanding, significance of insight, novelty of ideas | NO — depth and significance are judgments, not numbers |

For mechanistic disciplines, regression is detectable through numeric comparison: if Comprehend's prediction accuracy drops from 85% to 60% across runs, something regressed. The number tells you.

For meaning-producing disciplines, regression CANNOT be detected through numbers. "Perspectives checked: 5" doesn't tell you whether any perspective produced deep insight. A sensemaking run with 2 perspectives that both restructured understanding is BETTER than one with 6 perspectives that confirmed surface-level knowledge. Counting doesn't capture significance.

This asymmetry — mechanistic quality is measurable, meaning quality is not — is the fundamental obstacle to regression detection. It's why this system uses **symptom-based detection** rather than numeric measurement.

---

## How We Detect Regression: Symptoms, Not Measurements

### The Approach

Since meaning-quality can't be measured directly, we detect it INDIRECTLY through observable consequences. This is the medical model: doctors can't measure "health" directly, so they check symptoms — fever, pain, fatigue, blood pressure. No single symptom is conclusive. The pattern of symptoms is diagnostic.

A regression symptom is: **an observable consequence of cognitive quality decline, detectable from the discipline's output, the human's experience, or the pipeline's behavior — without requiring direct measurement of meaning-quality.**

### Why This Approach

1. **It works with unmeasurable quality.** Symptoms are observable even when the underlying quality isn't. You can't measure "depth of understanding" but you can observe "the discipline produced zero frontier questions" (a symptom of shallowness).

2. **It uses what already exists.** Frontier questions, discipline output structure, the SIC pipeline, the human's presence — all are existing components. No new infrastructure needed.

3. **It improves through use.** As more runs accumulate, the human's baseline sense of "what good looks like" sharpens. New symptoms are discovered. Existing symptoms get calibrated. The detection co-evolves with the system.

4. **It doesn't create false confidence.** A numeric score (e.g., "quality = 7.2/10") creates the illusion of precision. A symptom pattern ("thin frontier + no surprise + flat progression = likely shallow") is honest about uncertainty — it says "likely" not "definitely."

---

## The Symptom Schema

Every regression symptom is defined by:

| Field | What it captures |
|---|---|
| **Name** | Recognizable label for the symptom |
| **Type** | Where it's observable: output, experience, pipeline, error, or spec |
| **Signal** | What specifically to observe — the raw data point |
| **Baseline** | What "normal" looks like for this signal (or "calibrate from first 10 runs" if no baseline exists yet) |
| **Deviation** | What counts as abnormal — the threshold between "fine" and "symptom" |
| **Specificity** | How many different causes could produce this deviation. HIGH = specific to regression. LOW = many possible causes. |
| **Severity** | Impact on downstream work. LOW = cosmetic. MEDIUM = reduces quality. HIGH = blocks progress or introduces error. |
| **Context** | Conditions that modify interpretation — problem type, target depth, discipline type, session history |
| **Combination** | Which other symptoms strengthen the diagnosis when co-occurring |

The schema is the tool for DEFINING symptoms. Any observable pattern that fits this schema can be added as a symptom. The schema is also the tool for EVALUATING symptoms — checking whether a proposed symptom is genuinely useful (specific enough? severe enough? observable enough?).

---

## The Five Symptom Types

### Type 1: Output Symptoms

Observable in the discipline's output file AFTER a run. These are structural patterns in the written output that indicate quality decline.

| Symptom | Signal | Severity | Specificity |
|---|---|---|---|
| **Thin frontier** | Few or no frontier questions produced | HIGH — downstream disciplines lose direction signals | LOW — could be simple problem or shallow target depth |
| **Flat progression** | First version ≈ final version (SV1 ≈ SV6, CV1 ≈ CV3). The discipline didn't structurally transform understanding. | HIGH — the discipline went through motions without deepening | MEDIUM — some problems genuinely don't need much transformation |
| **Missing adversarial** | No genuine model-breaking attempts, or all challenges conveniently survive | MEDIUM — false confidence in the model | MEDIUM — might be genuinely robust |
| **Absent corrections** | No model corrections across the progression. Every version confirms the previous. | MEDIUM — suspicious: real comprehension almost always corrects something | LOW — could be a well-understood artifact |
| **Uniform confidence** | All areas rated HIGH in the confidence map with no MEDIUM or LOW | MEDIUM — likely untested overconfidence | MEDIUM — genuinely simple artifact could produce this |
| **No counter-interpretation** | Ambiguity collapsed without stating the strongest counter, or counter dismissed in one sentence without structural grounds | HIGH — Clean Resolution Trap indicator | HIGH — this is specific to sensemaking regression |

### Type 2: Experience Symptoms

Observable in the human's response DURING or immediately AFTER reading the output. These require the human's presence and attention.

| Symptom | Signal | Severity | Specificity |
|---|---|---|---|
| **No surprise** | Human wasn't taught anything new by the output | MEDIUM — indicates surface-level analysis | LOW — some confirmatory tasks legitimately don't surprise |
| **Can't act** | Human reads the output and doesn't know what to do next | HIGH — output isn't actionable | MEDIUM — might be the wrong discipline for the question |
| **Déjà vu** | "This feels like the same analysis we got last time" — same shape regardless of different input | HIGH — the discipline is pattern-locked | HIGH — very specific to regression (discipline applying same template regardless of input) |
| **Lost thread** | Human can't follow the reasoning from first version to last | MEDIUM — incoherent progression | MEDIUM — complex problems can have non-linear reasoning |
| **Boredom** | Human skims, stops reading partway, or feels no engagement | MEDIUM — predictable output with no information gain | LOW — could be human fatigue, not output quality |

### Type 3: Pipeline Symptoms

Observable at the JUNCTION between disciplines — when one discipline tries to use another's output.

| Symptom | Signal | Severity | Specificity |
|---|---|---|---|
| **Downstream rejection** | The consuming discipline explicitly notes insufficient input or struggles to proceed | HIGH — blocks the pipeline | HIGH — directly indicates upstream quality issue |
| **Downstream repetition** | The consuming discipline re-discovers something the producing discipline should have found | MEDIUM — wasted effort, incomplete upstream | MEDIUM — could be different aspect, not missed |
| **Pipeline stall** | Inquiry's telemetry check flags measurements below threshold | Depends on which threshold | HIGH for mechanistic disciplines, LOW for meaning disciplines (paradigm projection risk) |
| **Wayfinding confusion** | Wayfinding can't determine a clear steering move — the landscape is muddled | HIGH — the system can't steer | MEDIUM — could be a genuinely complex landscape, not bad input |

### Type 4: Error Symptoms

Observable when the discipline produces output that's not just shallow but WRONG. Higher severity than shallowness because wrong output leads to wrong downstream decisions.

| Symptom | Signal | Severity | Specificity |
|---|---|---|---|
| **Internal contradiction** | The output contradicts itself — an early section says one thing, a later section says the opposite without acknowledging the change | HIGH — the model is incoherent | HIGH — coherent disciplines don't contradict themselves |
| **Counter-factual failure** | The output makes claims the human knows to be false from domain knowledge | CRITICAL — the discipline is producing falsehoods | HIGH — but requires human domain knowledge to detect |
| **Upstream-downstream mismatch** | Innovation produces ideas that directly contradict sensemaking's findings, or critique evaluates against criteria that don't match the sensemaking | HIGH — disciplines aren't reading each other | HIGH — indicates broken pipeline, not just quality issue |
| **Circular reasoning** | The conclusion is the same as the starting assumption, restated in different words | HIGH — no genuine analysis occurred | HIGH — specific to cognitive regression, not other causes |

### Type 5: Spec Symptoms

Observable in the discipline's SPEC FILE — detectable BEFORE any run happens. These are the earliest possible regression signal.

| Symptom | Signal | Severity | Specificity |
|---|---|---|---|
| **Shorter than before** | The spec file has fewer lines than the previous version (git diff shows net deletion) | MEDIUM — content might have been genuinely redundant OR load-bearing was removed | LOW — needs human judgment on what was removed |
| **Missing sections** | A section that's referenced in the Change Log no longer exists in the spec | HIGH — something intentionally added was removed | HIGH — the Change Log reference makes this specific |
| **Weakened language** | "MUST" replaced with "should," "required" replaced with "recommended," structural safeguards softened | MEDIUM — might be intentional relaxation OR careless weakening | MEDIUM — requires checking if the change was conscious |
| **Removed safeguards** | Failure modes removed, adversarial requirements softened, telemetry sections deleted | HIGH — quality protections stripped | HIGH — very specific to discipline regression |

---

## Diagnostic Patterns

Individual symptoms are ambiguous. Patterns are diagnostic. When multiple symptoms co-occur, the diagnosis becomes more specific.

### Pattern 1: Surface Run

**Symptoms:** Thin frontier + no surprise + flat progression
**Diagnosis:** The discipline stayed surface-level. It described but didn't analyze. Went through the motions without deepening.
**Likely cause:** Discipline spec was simplified, or the AI executing it skipped depth phases.
**Action:** Check the discipline spec against its Change Log. Re-run with explicit depth target.

### Pattern 2: Confirmation Bias

**Symptoms:** No counter-interpretation + absent corrections + prior-confirmation (output matches expectations)
**Diagnosis:** The discipline confirmed what was expected without challenging it. Status Quo Bias or Clean Resolution Trap.
**Likely cause:** Sensemaking safeguards weakened, or the Definitional/Consistency check is protecting existing structures.
**Action:** Check sensemaking's failure modes section. Verify the structural grounds requirement is intact. Re-run with adversarial emphasis.

### Pattern 3: Introduced Error

**Symptoms:** Internal contradiction + counter-factual failure
**Diagnosis:** The discipline produced wrong output, not just shallow output.
**Likely cause:** Discipline spec was edited and internal consistency was broken, or the AI hallucinated due to insufficient grounding.
**Action:** Check the spec for recent edits (git log + Change Log). Compare current output to a known-good reference run.

### Pattern 4: Pipeline Degradation

**Symptoms:** Downstream rejection + upstream-downstream mismatch
**Diagnosis:** The disciplines aren't connecting properly. One discipline's output doesn't feed the next correctly.
**Likely cause:** Output format changed, save paths broken, or inquiry routing misconfigured.
**Action:** Check the output format against what the consuming discipline expects. Check inquiry's RESUME logic.

### Pattern 5: Slow Drift

**Symptoms:** No single-session symptoms, but ACROSS sessions: runs that used to surprise no longer do. Frontier questions get repetitive. Canary problem re-runs produce thinner output than the reference.
**Diagnosis:** Gradual degradation across many small changes, none of which individually triggered a symptom.
**Likely cause:** Cumulative small edits that each passed review but together degraded the discipline.
**Action:** Compare current discipline spec to the version that produced the peak reference run (canary). Identify what changed. The delta reveals the regression.

---

## The Detection Timeline

Symptoms appear at different points in the process. Earlier detection is cheaper to fix.

```
EARLIEST    Spec symptoms
            Detectable BEFORE a run — check git diff on the spec file.
            Catches: removed sections, weakened language, deleted safeguards.
            Cost to fix: edit the spec back.

DURING      Experience symptoms
            Detectable WHILE reading the output — human notices.
            Catches: shallowness, pattern lock, incoherence.
            Cost to fix: re-run with adjustments.

AFTER       Output symptoms
            Detectable AFTER the run — inspect the output file.
            Catches: thin frontier, flat progression, missing adversarial.
            Cost to fix: re-run or adjust the discipline.

DOWNSTREAM  Pipeline symptoms
            Detectable WHEN the next discipline runs.
            Catches: insufficient input, contradictory outputs.
            Cost to fix: re-run upstream discipline.

ACROSS      Slow drift
            Detectable ACROSS sessions — canary comparison.
            Catches: gradual degradation invisible in any single run.
            Cost to fix: identify and revert the cumulative changes.
```

---

## The Canary Test

For each discipline, maintain ONE saved reference run — a run that produced output the human judged as genuinely good. This is the canary.

Periodically (every 5-10 sessions, or after significant discipline edits), re-run the canary problem — the same input that produced the reference. Compare the new output to the saved reference:

- **As rich?** Does the new run discover the same depth?
- **As surprising?** Does it produce insights comparable to the reference?
- **As useful?** Could someone act on it as effectively as the reference?
- **Frontier comparable?** Does it produce frontier questions at similar depth?

The human judges qualitatively, not numerically. "Is this as good as the reference?" is the question. If the answer is no, something regressed between the reference session and now.

---

## The Role of the Human

The human is not an optional component of regression detection. The human IS the quality sensor for meaning-producing disciplines. Without the human:

- Experience symptoms are invisible (no one to feel surprise or boredom)
- Canary comparison requires judgment (is this "as good"?)
- Counter-factual failure requires domain knowledge (is this claim true?)
- The baseline for "what's normal" comes from human memory of past runs

As the system matures, some human functions may be partially automated (the system could compare frontier question depth across runs, or flag flat progressions automatically). But the JUDGMENT — "was this understanding deep?" — remains human. It's the one thing numeric telemetry cannot capture and the one thing the human naturally provides.

The graduated autonomy model (from `terminology.md`) describes how the human's role evolves:

- **Level 0:** Human reviews everything, provides all quality judgment
- **Level 1:** Human reviews process changes and spec edits; symptom detection partially automated for output symptoms
- **Level 2:** Human reviews only flagged items; system detects most symptoms automatically but defers judgment calls
- **Level 3:** Human sets strategic direction; system handles tactical regression detection
- **Level 4:** System identifies its own quality gaps and proposes canary tests

Each level is unlocked by demonstrated reliability at the previous level, not by time or aspiration.

---

## What We Do With Regression Detection

Detecting regression is not the end goal. It enables three things:

### 1. Protect the disciplines during self-improvement

When the SIC loop is used to improve a discipline, regression detection tells you whether the improvement ACTUALLY improved. Without it, you're changing code without tests. With it, you can verify: did the change make the discipline better, worse, or neutral?

### 2. Enable graduated autonomy

The graduated autonomy model requires knowing whether the system's self-modifications are net positive. The self-improvement hit rate (% of changes that improve quality) is the metric for autonomy graduation. Hit rate requires regression detection: you must know WHICH changes degraded quality to count them.

### 3. Build trust incrementally

The human's willingness to reduce oversight depends on confidence that degradation will be caught. Regression detection IS the confidence mechanism. Better detection → more confidence → less oversight → faster self-improvement cycles → more data → better detection. This is the virtuous cycle — the tinder fire.

---

## Current State and Next Steps

### What exists now
- 23 symptoms defined across 5 types
- 5 diagnostic patterns identified
- Symptom schema for generating new symptoms
- Detection timeline (earliest → across sessions)
- Change Log sections planned for critical files (not yet added)
- Pre-edit git check planned for CLAUDE.md (not yet added)

### What needs to happen
1. **Add Change Log sections** to critical spec files (sensemaking, wayfinding, comprehend, inquiry) — enables spec symptom detection
2. **Add pre-edit git check** to CLAUDE.md — creates friction against uninformed edits
3. **Create the first canary reference** — run a discipline on a known problem, save the output as the quality reference
4. **Use the system on a real problem** — generate the first real data, observe symptoms (or their absence)

### What remains open
- Slow drift detection is the hardest problem — requires cross-session comparison with no good automated mechanism for meaning-quality
- The baseline problem: what's "normal" for each symptom depends on experience that doesn't exist yet. Baselines emerge from use, not from design.
- Whether the symptom approach is sufficient or whether additional mechanisms will be needed — this will be revealed by real use, not by further analysis
