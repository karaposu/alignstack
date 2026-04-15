# Exploration: What Are Regression Symptoms?

## What a symptom IS

> An observable consequence of a cognitive quality problem, detectable from the discipline's output, the human's experience, or the pipeline's behavior — without requiring direct measurement of meaning-quality.

## The Symptom Schema

```
name          — recognizable label
type          — output | experience | pipeline | error | spec
signal        — what to observe
baseline      — what "normal" looks like
deviation     — what counts as abnormal
specificity   — how many other causes could produce this
severity      — impact on downstream work
context       — conditions that modify interpretation
combination   — which other symptoms strengthen the diagnosis
```

## 23 Symptoms Across 5 Types

### Output Symptoms (in the output file)
1. Thin frontier — few/no frontier questions
2. Flat progression — SV1 ≈ SV6 (no structural change)
3. Missing adversarial — no genuine model-breaking attempts
4. Absent corrections — no model corrections through CV progression
5. Uniform confidence — all HIGH with no real testing
6. No counter-interpretation — ambiguity collapsed without testing

### Experience Symptoms (human's reaction)
7. No surprise — human wasn't taught anything new
8. Can't act — human doesn't know what to do with the output
9. Déjà vu — same shape as last time regardless of input
10. Lost thread — can't follow reasoning from start to end
11. Boredom — human skims or stops reading

### Pipeline Symptoms (between disciplines)
12. Downstream rejection — next discipline can't use the input
13. Downstream repetition — next discipline re-discovers what upstream missed
14. Pipeline stall — telemetry below threshold
15. Wayfinding confusion — can't determine a clear steering move

### Error Symptoms (wrong output, not just shallow)
16. Internal contradiction — output contradicts itself
17. Counter-factual failure — claims something the human knows is false
18. Upstream-downstream mismatch — disciplines contradict each other
19. Circular reasoning — conclusion = restated assumption

### Spec Symptoms (pre-run, in the spec file)
20. Shorter than before — lost content vs. previous version
21. Missing sections — sections from Change Log are gone
22. Weakened language — "MUST" → "should", "required" → "recommended"
23. Removed safeguards — adversarial requirements softened

## Five Diagnostic Patterns

| Pattern | Key symptoms | Diagnosis |
|---|---|---|
| Surface Run | Thin frontier + no surprise + flat progression | Stayed shallow |
| Confirmation Bias | No counter + absent corrections + prior-confirmation | Confirmed not challenged |
| Introduced Error | Internal contradiction + counter-factual failure | Produced wrong output |
| Pipeline Degradation | Downstream rejection + upstream-downstream mismatch | Disciplines not connecting |
| Slow Drift | Declining surprise + repetitive frontiers across sessions | Gradual degradation |

## Detection Timeline

```
EARLIEST:   Spec symptoms      → git diff before running
DURING:     Experience symptoms → human notices while reading
AFTER:      Output symptoms     → inspect the output file
DOWNSTREAM: Pipeline symptoms   → next discipline flags issues
ACROSS:     Slow drift          → canary comparison over sessions
```
