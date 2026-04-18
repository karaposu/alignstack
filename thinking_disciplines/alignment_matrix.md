# Alignment Matrix — Living Document

The 24-check matrix instantiated for the current system. Each cell represents one alignment check (layer × pillar). Filled cells are guarantees. Empty cells are improvement targets. The shape reveals systemic gaps.

**Last updated:** 2026-04-16
**Assessment basis:** System state after this session's inquiries and spec edits.

---

## The Matrix

```
              Explicit    Visible    Measurable    Comparable
L0 Workspace    [~]         [~]         [~]           [ ]
L1 Intent       [✓]         [✓]         [~]           [ ]
L2 Scope        [✓]         [✓]         [~]           [ ]
L3 Approach     [~]         [~]         [ ]           [ ]
L4 Actions      [✓]         [✓]         [✓]           [~]
L5 Coherence    [✓]         [✓]         [✓]           [~]
L6 Outcome      [✓]         [✓]         [~]           [ ]
```

**Legend:** ✓ = implemented and working. ~ = designed or partial. [ ] = empty.

**Score:** ~15/28 implemented, ~6/28 designed, ~7/28 empty.
**Weakest column:** Comparable (0/7 implemented, 2/7 partial).
**Weakest row:** L3 Approach (1/4 partial, rest empty or partial).

---

## Cell-by-Cell Assessment

### L0: Workspace Alignment

| Pillar | Status | What exists | What's missing | Next action |
|---|---|---|---|---|
| **Explicit** | ~ | Briefing format defined. Sections: Current State, Strategic Direction, Recent Findings, Open Frontiers, Dead Ends, Completed Inquiries. | Briefing file not yet created for this project. Auto-create logic not yet added to MVL. | Add auto-create to MVL's NEW step. Create initial briefing for this project. |
| **Visible** | ~ | Briefing would be at `devdocs/briefing.md`, readable by any session. | File doesn't exist yet. MVL doesn't read it yet. | Create the file. Add briefing-read to MVL's RESUME. |
| **Measurable** | ~ | Freshness detectable via `Updated:` date field. Fresh/stale/absent is assessable. | No quality metric beyond binary (exists/doesn't, fresh/stale). No measurement of whether the briefing's content is ACCURATE. | For now, binary freshness is sufficient. Quality measurement deferred until briefing has usage history. |
| **Comparable** | [ ] | Nothing. | No way to compare workspace alignment across inquiries. "Was this inquiry's context better or worse than the last one's?" — unanswerable. | R's alignment delta: after each SICR, R notes whether L0 was sufficient ("S had the context it needed" vs "S had to discover context that should have been in the briefing"). Accumulate across inquiries. |

### L1: Task Alignment (Intent)

| Pillar | Status | What exists | What's missing | Next action |
|---|---|---|---|---|
| **Explicit** | ✓ | `## Question` and `## Goal` in `_branch.md`. MVL creates both on NEW. | Three-field progression (original → rephrased → scoped) designed but not yet in MVL. L0/L1/L2/L3 alignment labels designed but not yet in `_branch.md`. | Update MVL's NEW step to use the alignment-labeled `_branch.md` format with three question fields. |
| **Visible** | ✓ | Question and goal are in `_branch.md`, printed in conversation. Scope check result visible. | Alignment uncertainty revelation ("L1 ✓, L2 ?") designed but not in MVL output yet. | Add uncertainty revelation to MVL's NEW output. |
| **Measurable** | ~ | Delta between original and rephrased question shows how much clarification was needed. Large delta = L1 was initially misaligned. | The delta isn't computed or reported. It's implicit in the text. No metric like "L1 clarification effort: high/low." | R could report: "L1 delta: original question was significantly rephrased → L1 was initially misaligned." Track across inquiries to see if L1 misalignment is a pattern. |
| **Comparable** | [ ] | Nothing. | No cross-inquiry tracking of intent alignment quality. | R's alignment delta for L1. Accumulate "how often was L1 initially misaligned?" across inquiries. |

### L2: Task Alignment (Scope)

| Pillar | Status | What exists | What's missing | Next action |
|---|---|---|---|---|
| **Explicit** | ✓ | `## Scope Check` added to MVL's `_branch.md` creation. Compares question to goal. | Current scope vs. strategic scope fields not yet added. | Add `## L2: Current Scope` and `## L2: Strategic Scope` to `_branch.md` format when briefing exists to provide strategic scope. |
| **Visible** | ✓ | Scope check result in `_branch.md` ("Question covers goal: YES/NO"). | Gap description could be more structured (currently prose). | Sufficient for now. Structured gap description deferred. |
| **Measurable** | ~ | Binary YES/NO with prose gap description. | No graduated metric. "How narrow was the scope?" is not quantified. Hard to quantify scope coverage — it's a judgment, not a number. | May be fundamentally non-numeric. R's structural comparison ("L2 pre: covers goal. L2 post: answer missed automation") is the right measurement — structural, not numeric. |
| **Comparable** | [ ] | Nothing. | No tracking of "how often does L2 misalign?" across inquiries. | R's alignment delta for L2. Track scope misalignment frequency. Patterns reveal whether scope checking needs improvement or is working well. |

### L3: Action-Space Alignment (Approach)

| Pillar | Status | What exists | What's missing | Next action |
|---|---|---|---|---|
| **Explicit** | ~ | Adapter pattern designed: `_adapter.md` with three sections (S guidance, I guidance, C traps). Central templates planned at `thinking_disciplines/adapters/`. | Nothing built. No adapter files exist. MVL doesn't read adapters. | **Priority: Build 1.** Create adapter templates. Add adapter-read to MVL. This is the most impactful empty row. |
| **Visible** | ~ | The adapter would be a file in the inquiry folder, readable. | File doesn't exist. | Created when Build 1 is implemented. |
| **Measurable** | [ ] | Nothing. | No way to assess whether the right adapter was selected. "Was wayfinding the right approach for this question?" — unanswerable after the fact. | Hard to measure directly. Indirect: R could note "the adapter's C traps were all relevant" (good fit) vs "the adapter's traps didn't match any issues that arose" (bad fit). Track adapter-question fit across inquiries. |
| **Comparable** | [ ] | Nothing. | No cross-inquiry tracking of approach selection quality. | Depends on L3 Measurable existing first. Deferred. |

### L4: Action-Set Alignment (SIC Pipeline)

| Pillar | Status | What exists | What's missing | Next action |
|---|---|---|---|---|
| **Explicit** | ✓ | SIC pipeline is always S→I→C. Defined in MVL command. Each discipline has a full spec. | Nothing missing — the pipeline is fully explicit. | None. |
| **Visible** | ✓ | S, I, C outputs saved as files in inquiry folder. Telemetry sections in each output. | Nothing missing — outputs are visible and persistent. | None. |
| **Measurable** | ✓ | Each discipline has telemetry: S (perspective saturation, SV delta, ambiguity ratio, anchor diversity), I (mechanism coverage, convergence, test completion), C (dimension coverage, adversarial strength, clean survive, landscape stability). | Telemetry exists but MVL doesn't READ it to quality-gate transitions. Telemetry is reported but not acted on. | **Build 1.5:** MVL reads telemetry sections and flags when below thresholds. The telemetry exists — the gate doesn't. |
| **Comparable** | ~ | Within-inquiry: critique's accumulator tracks across iterations. Cross-inquiry: nothing. | No cross-inquiry telemetry comparison. "Is S getting better over time?" — unanswerable. | R's alignment delta for L4: compare this inquiry's discipline telemetry to rolling averages. Track improvement trends. |

### L5: Coherence Alignment

| Pillar | Status | What exists | What's missing | Next action |
|---|---|---|---|---|
| **Explicit** | ✓ | Critique spec fully defines: evaluation dimensions, adversarial structure, verdicts, assembly check, convergence criteria. | Pre-SIC question-level coherence check (does this question conflict with prior findings?) designed but not built. | Add `## L5: Prior Coherence` to `_branch.md` — checks question against briefing's Recent Findings and Dead Ends. Requires briefing to exist first. |
| **Visible** | ✓ | Critique output with dimensions, prosecution/defense, verdicts, coverage map, convergence signal. | Question-level coherence not visible (not checked pre-SIC). | Visible once the pre-SIC L5 check is added. |
| **Measurable** | ✓ | Convergence telemetry: dimension coverage, adversarial strength, landscape stability, clean survive existence, failure mode check. | Pre-SIC coherence is binary (conflicts/no conflicts), not graduated. | Sufficient. Post-SIC measurement is robust. Pre-SIC is appropriately simple. |
| **Comparable** | ~ | Within-inquiry accumulator tracks evaluations across iterations. Cross-inquiry: nothing persistent. | No cross-inquiry coherence tracking. "Are our answers becoming more coherent with each other over time?" — unanswerable. | R tracks: "did this inquiry's answer contradict any prior findings?" Accumulate across inquiries. Rising contradiction rate = coherence degrading. |

### L6: Outcome Alignment

| Pillar | Status | What exists | What's missing | Next action |
|---|---|---|---|---|
| **Explicit** | ✓ | MVL's iteration-complete: "Is the original question answered?" with answer/gap/frontier output. | Inter-iteration intent check designed ("does refined question still serve goal?") but not built. | Add intent check to MVL's iteration-complete step. |
| **Visible** | ✓ | Answer compiled in iteration-complete output. Frontier questions listed. Status in `_state.md`. | Nothing missing — outcome is visible. | None. |
| **Measurable** | ~ | Frontier questions serve as quality signal (more frontier = deeper exploration). Answered/not-answered is binary. | No graduated outcome quality metric. "How well does the answer actually serve the goal?" is a judgment. | R could assess: "the answer technically addresses the question but doesn't help the user DO anything" (from the reflect spec's answer-goal alignment check). This IS the L6 measurement — already designed in R. |
| **Comparable** | [ ] | Nothing. | No cross-inquiry outcome tracking. "Are our answers getting better over time?" — unanswerable. | R's alignment delta for L6: "did the answer serve the goal well?" tracked across inquiries. Declining quality = outcome alignment degrading. |

---

## Summary of Gaps

### By Column (Systemic Pillar Gaps)

| Pillar | Implemented | Designed | Empty | Assessment |
|---|---|---|---|---|
| **Explicit** | 5 | 2 | 0 | Strong. Everything is stated somewhere. |
| **Visible** | 5 | 2 | 0 | Strong. Everything is in files. |
| **Measurable** | 3 | 3 | 1 | Moderate. L4-L5 have telemetry. Others are binary or missing. |
| **Comparable** | 0 | 2 | 5 | **Weakest. The next frontier.** Nearly nothing tracks alignment quality across inquiries. |

### By Row (Specific Layer Gaps)

| Layer | Implemented | Designed | Empty | Assessment |
|---|---|---|---|---|
| **L0 Workspace** | 0 | 3 | 1 | Designed but nothing built. Briefing is the blocker. |
| **L1 Intent** | 2 | 1 | 1 | Mostly working. Three-field format and delta tracking needed. |
| **L2 Scope** | 2 | 1 | 1 | Working. Comparable is the gap. |
| **L3 Approach** | 0 | 2 | 2 | **Weakest row.** Adapter pattern entirely unbuilt. |
| **L4 Actions** | 3 | 0 | 1 | Strongest row. Telemetry exists. Comparable is the gap. |
| **L5 Coherence** | 3 | 0 | 1 | Strong. Pre-SIC question-coherence is the gap. |
| **L6 Outcome** | 2 | 1 | 1 | Mostly working. Comparable and intent check are the gaps. |

---

## Priority Actions (The Roadmap)

### Immediate (fills the most impactful gaps)

1. **Build adapter templates + MVL reads them** — Fills L3 Explicit and Visible. The weakest row gets its foundation. This is Build 1 from the adapter-pattern inquiry.

2. **Create project briefing** — Fills L0 Explicit and Visible. Auto-create in MVL + initial briefing for this project.

3. **Update `_branch.md` format** — Fills L1 and L2 design gaps. Add alignment labels (L0-L3), three question fields, current/strategic scope, prior coherence.

### Next (quality gates and measurement)

4. **MVL reads telemetry and flags** — Activates L4 Measurable as a quality gate. Build 1.5. Telemetry exists, the gate doesn't.

5. **Add inter-iteration intent check** — Fills L6 Measurable. "Does refined question still serve goal?" in MVL's iteration-complete.

6. **Add pre-SIC L5 question-coherence check** — Fills L5 pre-SIC gap. Requires briefing (action 2) to exist first.

### Future (the Comparable column — requires R's alignment delta)

7. **Implement R's alignment delta** — R compares pre-SIC alignment state to post-SIC output per layer. Reports where alignment held and where it drifted. This single mechanism fills MOST of the Comparable column across all layers.

8. **Persist R's deltas across inquiries** — Accumulate alignment quality data. Enables pattern detection: "L2 consistently drifts" → improve S's scope methodology.

9. **Cross-inquiry telemetry comparison** — Compare discipline telemetry (L4-L5) across inquiries against rolling averages. "S checked 3 perspectives this run vs. average of 5 — below normal."

---

## How to Update This Document

This matrix is a LIVING DOCUMENT. Update it when:

- A gap is filled (change [ ] to [~] or [✓])
- A designed feature is implemented (change [~] to [✓])
- A new gap is discovered (add notes to the relevant cell)
- The assessment changes based on real usage (revise "What's missing" and "Next action")

The matrix is the roadmap. Its shape — which columns are empty, which rows are weak — tells you what to build next. Don't optimize the score. Follow the shape.
