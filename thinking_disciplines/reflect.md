# Structural Reflection — The Learning Step

Reflection is the meta-cognitive step that examines HOW a SIC loop performed — not the problem, not the answer, but the PROCESS that produced the answer. It reads the outputs of S, I, and C alongside any human interventions, and produces structured observations about what each step did well, what it missed, and what future runs should know.

Reflection is what makes the SIC loop a LEARNING loop. Without it, SIC produces answers. With it, SICR produces answers AND learns from producing them.

> **Structural Reflection is the process of examining a completed SIC run to identify where the process was strong, where it was weak, where the human had to compensate, and what lessons should carry forward to future runs.**

---

## What Reflection Is

**Reflection is the second-order observation of a first-order cognitive process.** S, I, and C operate on the problem (first-order). R operates on S, I, and C themselves (second-order). It asks: how did the thinking go? Not: what did the thinking produce?

Reflection is not:
- Critique (critique evaluates CANDIDATES — ideas, plans. Reflection evaluates the PROCESS — how S, I, C each performed)
- Sensemaking (sensemaking resolves ambiguity about the PROBLEM. Reflection resolves ambiguity about the PROCESS)
- Telemetry (telemetry reports NUMBERS — perspectives checked, mechanisms applied. Reflection produces OBSERVATIONS — "S missed the compliance angle because the spec doesn't prompt for it")
- Summarizing (summarizing compresses the answer. Reflection examines the journey, not the destination)

Reflection is the step that enables self-improvement. Every other step produces output about the problem. Reflection produces output about the system itself — what it does well, where it struggles, what it needs to learn.

---

## What Reflection Reads

R reads everything produced during the SIC run:

| Input | What R looks for |
|---|---|
| **S output** (sensemaking.md) | Which perspectives were checked? Were any critical ones missed? Did the SV progression show genuine structural change or was it flat? |
| **I output** (innovation.md) | How many mechanisms were applied? Did they converge? Were the outputs genuinely novel or all conventional? Was there diversity in the approaches? |
| **C output** (critique.md) | Was prosecution genuinely strong? Did anything survive too easily (rubber-stamping)? Was anything killed unfairly (nitpicking)? |
| **Human interventions** | Where did the human redirect, correct, add context, or disagree during the run? Every intervention is a signal that the system missed something. |
| **The original question** (_branch.md) | Does the final answer actually address the question and goal? Or did the SIC drift away from the original intent? |

---

## What Reflection Examines

R looks for five specific things:

### 1. Human Interventions

Where did the human have to step in? Every human intervention means the system couldn't handle something on its own. These are the most valuable observations because they reveal the EXACT points where the system's configuration is insufficient.

- "The human added the compliance perspective after S missed it" → S needs compliance in its perspective list for this problem type
- "The human rejected I's output and asked for more unconventional approaches" → I's mechanism application was too conservative
- "The human overrode C's verdict" → C's evaluation missed something the human saw

### 2. Cross-Step Leaks

Where did a later step catch something an earlier step should have found? Information flowing "backward" in the pipeline indicates an earlier step was incomplete.

- "I discovered a constraint that S should have extracted during anchor extraction" → S was incomplete on constraints
- "C's prosecution found a fatal flaw that I should have tested during the Generate→Test cycle" → I didn't test thoroughly enough
- "S produced anchors that only became relevant during C" → S was ahead of I, which is normal. But if S produced anchors that C used directly (skipping I), the pipeline had a gap.

### 3. Step Quality

Was each step thorough or thin? This is NOT about numeric telemetry (perspectives counted, mechanisms applied). It's about the SUBSTANCE of each step's contribution.

- "S checked 5 perspectives but none were technical — for a code architecture question" → S was broad but missed the most relevant angle
- "I applied 4 generators but all produced the same type of approach" → I had coverage without diversity
- "C's prosecution was structurally identical to S's risk perspective" → C didn't add independent evaluation, it restated what S already found

### 4. Surprises

What was unexpected in this run? Surprises indicate the system's priors were wrong — which is learning data.

- "S assumed this was a straightforward API design question but discovered it was actually a distributed systems problem" → The problem type shifted during sensemaking. This is valuable context for similar-looking problems.
- "I's domain transfer from manufacturing produced the winning approach — nobody expected it" → Domain transfer was unusually productive for this problem type.
- "C killed the approach everyone expected to win" → The expected approach had a hidden flaw. Worth noting for future similar problems.

### 5. Answer-Goal Alignment

Does the final answer actually address the original question and goal from _branch.md? Sometimes SIC produces a thorough, well-critiqued answer to a DIFFERENT question than what was asked — the process drifted.

- "The question was about auth module design but the answer focused on API versioning" → The SIC pipeline drifted from the original intent
- "The answer is technically correct but doesn't help the user DO anything" → SIC produced understanding without actionability

---

## What Reflection Produces

R generates three outputs:

### 1. Per-Step Observations

Structured observations about each step's performance:

```
## S (Sensemaking)
[What S did well. What S missed. Where human had to compensate.]

## I (Innovation)
[What I did well. What I missed. Whether outputs were diverse or clustered.]

## C (Critique)
[What C did well. Where prosecution was weak. Where defense was weak. Whether the right dimensions were evaluated.]
```

These are diagnostic — they tell you what happened in this specific run. Useful for the human reviewing the run. Not necessarily lessons for future runs (single observations, not patterns).

### 2. Proposed Memory Cells

Lessons that MIGHT be worth carrying forward. R proposes them. The human confirms which ones to persist.

```
## Proposed Memory Cells
- [tags: auth, security, compliance] "For auth-related questions, S must include the compliance perspective — missed it this run, human caught it."
- [tags: architecture, innovation] "Domain transfer from manufacturing was unexpectedly productive for architecture questions."
```

Each proposed cell has: tags (for future matching), the lesson (one sentence), and the evidence (what happened in this run that produced the lesson).

The human decides: persist this cell to `devdocs/memory_cells.md`? Or dismiss as a one-off?

### 3. Process Frontier

Questions about the PROCESS that this run raised but didn't answer. Unlike regular frontier questions (about the problem), these are about the SYSTEM.

```
## Process Frontier
- Why doesn't the sensemaking spec include compliance as a standard perspective for security questions?
- Should innovation have a "diversity check" — detecting when all outputs are the same type?
- Is critique's prosecution genuinely independent from sensemaking, or does it just restate S's risk analysis?
```

These point to potential spec improvements — but as QUESTIONS, not as changes. The questions accumulate. When the same question appears across multiple runs, it becomes a pattern worth acting on.

---

## Failure Modes

Reflection can fail in predictable ways:

### 1. Rubber-Stamp Reflection

"S was fine. I was fine. C was fine. No observations." R produces empty reflections because it's not looking hard enough. The equivalent of a retrospective where everyone says "everything went well."

**How to recognize:** R produces no observations across multiple runs. Every step is rated as adequate. No proposed memory cells.

**How to prevent:** R must check all five examination points (human interventions, cross-step leaks, step quality, surprises, answer-goal alignment). If NO observations emerge from any of these, R should explicitly state: "No process issues detected on any of the five dimensions." This forces the check to actually happen rather than being skipped.

### 2. Over-Reflection

R produces 20 observations per run, most trivial. "S used the word 'however' instead of 'but'." The reflection is thorough but not USEFUL — it buries real observations in noise.

**How to recognize:** Long reflection output. Many observations. Few are actionable. The human skims or ignores.

**How to prevent:** R should produce a MAXIMUM of 3 per-step observations (one per step, or fewer). Focus on the MOST significant observation per step. If everything was fine for a step, say so in one sentence and move on.

### 3. Blaming the User

"The human should have provided more context." R attributes process failures to the human's input rather than to the system's capabilities. This is the opposite of useful — the system should adapt to what the human provides, not demand more.

**How to recognize:** Observations that start with "the human should have..." or "if the user had provided..."

**How to prevent:** R should always frame observations as system capabilities: "S didn't extract enough context from the input" rather than "the user didn't provide enough context." The system should work with what it gets.

### 4. Content Reflection Instead of Process Reflection

R comments on the ANSWER ("the auth module should use JWT tokens") instead of the PROCESS ("S missed the performance perspective"). This is summarizing, not reflecting.

**How to recognize:** R's observations are about the problem domain, not about how S/I/C performed.

**How to prevent:** Every R observation must reference a specific step (S, I, or C) and say something about THAT STEP'S performance. If the observation doesn't name a step, it's not reflection.

---

## Summary

| Component | What it is |
|---|---|
| **Core operation** | Second-order observation of a completed SIC run's process |
| **Reads** | S output, I output, C output, human interventions, original question |
| **Examines** | Human interventions, cross-step leaks, step quality, surprises, answer-goal alignment |
| **Produces** | Per-step observations (max 3), proposed memory cells (human confirms), process frontier questions |
| **Failure modes** | Rubber-stamp reflection, over-reflection, blaming the user, content instead of process |
| **When it runs** | After C completes in the SICR loop. Reads what already exists. Lightweight. |
| **What makes it different** | S/I/C are first-order (about the problem). R is second-order (about the process). R is what makes the loop LEARN. |
