# Critique: Elegant Alternative to Adapters

## User Input
devdocs/inquiries/elegant_alternative/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Honesty about what was lost** | CRITICAL | Every adapter capability accounted for |
| **Cross-session viability** | CRITICAL | New session has enough info without re-explanation |
| **Isn't just comfortable** | HIGH | "Stop building" is right answer, not easy answer |
| **Addresses user's concern** | HIGH | Elegant solution, not "don't build anything" |
| **Empirical grounding** | MEDIUM | Claims reference specific session events |

Burden: HIGH STAKES — killing three inquiries of design work.

---

## Candidate Evaluations

### Configuration IS input (sensemaking core)

**Prosecution:** Store-select-deliver still happens. Templates must exist, selection must happen, content must reach disciplines. `_branch.md` hides these in MVL — same operations, different location. Template selection is OPEN/unresolved.

**Defense:** Operations are the same but mechanism is simpler: consolidated in MVL vs distributed across 5 files. One file not two. Fewer points of failure.

**Verdict: SURVIVE (caveat)** — Mechanism is genuinely simpler. But template selection for cross-session use is unresolved.

---

### Build 1 = USE IT (innovation core)

**Prosecution:** "Use and fix what breaks" only catches VISIBLE failures. Silent failures (plausible but wrong answers) need proactive detection. "10+ successful inquiries" were WITH a compensating human.

**Defense:** Build mechanisms for OBSERVED failures, not speculative ones. Assembly check and scope check were both REACTIVE — built after observed failure. The alignment identity provides diagnostic framework when failures occur.

**Verdict: SURVIVE (caveat)** — Correct for human-driven use. Cross-session context persistence eventually needed.

---

### Understanding vs mechanism (innovation assembly)

**Prosecution:** Keeping insights while killing implementations = theory without practice. The identity IMPLIES mechanisms.

**Defense:** Keep PROVEN mechanisms (assembly check, scope check). Defer UNPROVEN ones (adapters, briefing, labels). Not cherry-picking — empirical discipline.

**Verdict: SURVIVE** — The proven-vs-unproven criterion is rigorous.

---

## Phase 3.5 — Assembly

**Configuration-is-input + use-and-fix + proven-vs-unproven = the elegant answer.**

Not "don't build anything." It's: **build only what's proven, defer what's speculative, use reveals the next need.**

### What stays (proven):
- MVL + discipline specs + inquiry folders
- Assembly check in innovation + critique specs
- Scope check in MVL's `_branch.md` creation
- `alignment_theory.md` + `alignment_matrix.md`
- Configuration-is-input principle

### What's deferred (unproven):
- Adapter files → deliver through `_branch.md` when needed
- Briefing → build when cross-session context loss is a real bottleneck
- Alignment labels → add when per-layer tracking is needed
- Command edits, cascade → unnecessary

### The path:
1. USE the system on real problems
2. OBSERVE what the human compensates for
3. BUILD the mechanism for the most frequent compensation

### The principle:
Understanding is permanent. Mechanisms are provisional. Build when empirical evidence demands. Not before.

---

## Convergence Telemetry

* **Dimensions:** 5/5, all critical: YES
* **Adversarial:** STRONG — prosecution identified store-select-deliver operations, silent failure risk, and cherry-picking risk. All forced genuine refinements.
* **Stability:** CHANGED — adapter system killed. Landscape narrowed toward empirical minimalism.
* **Clean SURVIVE:** YES — proven-vs-unproven criterion
* **Failure modes:** Rubber-stamping checked — all candidates have genuine caveats from prosecution
* **Overall: PROCEED**
