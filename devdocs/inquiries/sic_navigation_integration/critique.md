# Critique: SIC + Navigation Integration

## User Input
devdocs/inquiries/sic_navigation_integration/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Simplicity** | CRITICAL | No new commands/files. MVL upgrade only. |
| **Correctness of flow** | CRITICAL | Each step executable. No gaps. |
| **Doesn't over-design** | HIGH | Map = vocabulary (useful now). Branching = mechanism (later). |
| **Addresses user need** | HIGH | Multi-headed paths visible. |
| **Coherence** | MEDIUM | Configuration IS input. Build what's proven. |

---

## Candidate Verdicts

### Questions not actions (3a+2a)
**Prosecution:** Generating specific questions from C's output requires understanding (which aspect unexplored?). Not pure "reading + formatting" — lightweight cognition.
**Defense:** Reasonable questions achievable from C + templates. Human refines. Doesn't need to be perfect — useful starting point.
**Verdict: SURVIVE (caveat)** — Quality varies with C output. Generic fallback acceptable.

### Confidence + scannable (2b+4a)
**Prosecution:** Confidence is subjective. Symbols create illusion of precision.
**Defense:** Rough signal > no signal. Basis labels manage expectations.
**Verdict: SURVIVE** — All dimensions pass.

### WHY per item (4b+6a)
**Prosecution:** Doubles line count. Slows scanning.
**Defense:** Scan uses symbols (fast). WHY is depth layer (on-demand). Two layers serve different moments.
**Verdict: SURVIVE** — Presentation choice, no mechanism.

### Excluded items (5a)
**Prosecution:** Cognitive overhead. Contradicts "enumerate without filtering."
**Defense:** Transparency window, not filtering. Structurally inapplicable types only.
**Verdict: SURVIVE (caveat)** — Only structurally inapplicable, not low-priority.

---

## Assembly

Complete navigation map format: questions + types + confidence + WHY + excluded. Confirmed.

Additional finding: question generation is LIGHTWEIGHT COGNITION (template + context-aware fill-in), not pure orchestration. Not fully automatable through simple mapping — requires LLM judgment. Fine for current use.

---

## The Complete Design

1. Navigation in MVL's iteration-complete
2. Produces typed questions with confidence + WHY + excluded
3. Map in `_state.md`
4. Branches as sub-folders
5. Enumeration only — selection is separate
6. Use the vocabulary manually first, build auto-production when proven

---

## Convergence Telemetry

* **Dimensions:** 5/5, all critical: YES
* **Adversarial:** STRONG — forced cognitive-not-orchestration finding, rough-signal framing, structural-inapplicability criterion
* **Stability:** STABLE — all confirmed
* **Clean SURVIVE:** YES
* **Failure modes:** None
* **Overall: PROCEED**
