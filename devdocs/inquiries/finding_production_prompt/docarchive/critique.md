# Critique: Finding Production Prompt

## User Input
devdocs/inquiries/finding_production_prompt/

---

## Phase 0 — Dimensions

| Dimension | Weight | Success criteria |
|---|---|---|
| **Structure enforcement** | CRITICAL | Four-section structure guaranteed every time. |
| **Coverage completeness** | CRITICAL | Nothing significant dropped from SIC docs. |
| **Non-compact output** | CRITICAL | Self-contained, fully-explained findings. |
| **Automation viability** | HIGH | TERMINATE executes reliably without pre-review. |
| **Prompt clarity** | HIGH | Unambiguous across different AI sessions. |
| **MVL integration** | HIGH | Fits cleanly into existing MVL spec. |
| **Robustness** | MEDIUM | Works for 1-iteration and multi-iteration inquiries. |

---

## Candidate Verdicts

### The assembled prompt
**Prosecution:** "Complete" can conflict with "judicious." Coverage check ("every KILL in Reasoning") treats all kills equally — trivial kills listed alongside significant ones buries important reasoning in noise.
**Defense:** Reader persona resolves this — you don't bore a newcomer with 15 trivial kills. Template bounds over-expansion. Coverage check is a safety net, not a mandate for equal coverage.
**Verdict: SURVIVE (caveat)** — add triage guidance: significant kills get full explanation, trivial kills get brief mention.

### TERMINATE flow redesign (file replaces conversation)
**Prosecution:** Replacing conversation output with "go read the file" adds friction. Inconsistent with NO branch (which still prints in conversation).
**Defense:** finding.md IS the deliverable. Files persist across sessions; conversation is ephemeral. User already reviews files throughout SIC.
**Verdict: SURVIVE (caveat)** — add brief 2-3 line summary to conversation confirmation (question + one-sentence answer + path). Not the full finding — just enough for immediate signal.

### Coverage verification
**Prosecution:** Self-checks are unreliable — same AI, same blind spots. "All three files" may force manufactured Open Questions.
**Defense:** Re-scanning in "check mode" IS different from writing mode. Fix wording to "where relevant."
**Verdict: SURVIVE** — add "where relevant." Self-checks are imperfect but meaningfully better than nothing.

### Reader persona as anti-compression
**Prosecution:** None meaningful.
**Defense:** Structural anti-compression. Positive constraint naturally produces right verbosity level.
**Verdict: SURVIVE** — clean, no caveats.

### Multi-iteration handling
**Prosecution:** One-sentence instruction is thin. Prior iteration files may not exist.
**Defense:** In current system, each iteration overwrites same filenames. Only final files exist at TERMINATE time. Instruction is trivially correct.
**Verdict: SURVIVE** — correct for current system. Revisit if per-iteration archiving is added.

---

## Assembly

Five survivors combine. Concerns are orthogonal (template = structure, persona = tone, coverage = verification, summary = feedback, triage = judgment). ~45 lines. Well within coherent AI instruction scope.

**Verdict: SURVIVE**

---

## The Answer

```
TERMINATE "YES" branch writes finding.md using:

1. Template with per-section extraction instructions
   - Question: from _branch.md (question + goal)
   - Finding: from critique's Answer + innovation Assembly + sensemaking SV6
   - Reasoning: ALL kills with reasoning.
     Significant: full explanation. Trivial: brief mention.
     All survives with why they held.
   - Open Questions: from all three files where relevant.

2. Reader persona: "Write for someone who hasn't seen the SIC output"

3. Coverage self-check: every KILL in Reasoning, every SURVIVE in Finding,
   Open Questions from all files where relevant

4. Conversation: brief summary (question + one-sentence answer + path)

5. Post-finding: archive to docarchive/, update _state.md
```

Caveats addressed: kill triage added, conversation summary added, "where relevant" added.

---

## Convergence Telemetry

* **Dimensions:** 7/7, all critical: YES
* **Adversarial:** STRONG — complete-vs-judicious tension found, conversation friction found, self-check reliability tested
* **Stability:** CHANGED slightly — two caveats refined the design
* **Clean SURVIVE:** YES — the assembly with caveats
* **Failure modes:** None
* **Overall: PROCEED**
