# Structural Critique: Is the Wayfinding Diagnosis Correct?

## Candidates & Verdicts

### 1. "Wayfinding was used outside its scope" — REFINE

Partially right but frames it wrong. Wayfinding's core question ("what action would change the landscape most?") promises general steering. Its layers deliver only search-specific steering. That's a **design inconsistency in wayfinding**, not user misuse.

### 2. "Wayfinding should include dependency awareness" — REFINE

Already HAS dependency tracking (Memory Layer — verdict dependency chains). The question is scope: search-only vs. broader build dependencies. Two viable options:
- **Option A:** Extend Memory Layer to include build prerequisites
- **Option B:** Keep wayfinding scoped, add PRIORITIZE protocol

### 3. "Wayfinding should be used after Comprehend" — SURVIVE

Genuine improvement. Comprehension gives wayfinding a causal model instead of raw signals. Comprehend's output distinguishes infrastructure from theory. Frontier questions serve as dependency signals. **Works today with no spec changes.**

## Key Finding

The sensemaking was too quick to let wayfinding off the hook. "Outside scope" protects wayfinding from legitimate criticism. The user's point survives: if wayfinding tells you what to focus next, it should be able to see dependencies — either by extending its own awareness or by being preceded by comprehension.

## Practical Path

**Short-term:** Comprehend → Wayfinding (works today)
**Long-term:** Extend wayfinding's Memory Layer OR add PRIORITIZE protocol (architectural decision)
