# Navigation: What Is Next (project-level)

## User Input
what is next

Date: 2026-04-20
Context: After completing extended_mvl_architecture, mvl_plus_implementation, and building /MVL+ command with APPENDIX8 + install.sh updates.

---

## Navigation Map (9 items, 2 HIGH)

### Content [5]

■ **DEVELOP: Run the /MVL+ showcase (Layer 0)** [HIGH]
WHY: `mvl_plus_implementation/finding.md` names Layer 0 as the first buildable step. Command is built, untested.

Guidelines:
- Use the NEXT real question — don't invent a showcase → bc the finding said "zero extra cost"
- Watch for filename conventions (exploration.md, decomposition.md) → bc Option B relies on convention; first run validates it
- Observe if /innovate handles 3 inputs coherently → bc if it fumbles, Layer 3 becomes a concrete next inquiry
- Log which commands feel natural vs awkward → bc human experience IS the training data for Level 3+ orchestration
- Archive the showcase artifacts even if messy → bc raw first-run data is more valuable than polished analysis

■ **INVESTIGATE FRONTIER: Regression Detection design** [HIGH]
WHY: `autonomous_consciousness_goal/finding.md` named this as "the immediate next buildable step" to unlock Baldwin cycles.

Guidelines:
- Frame as its own SIC inquiry → bc too substantial to hand-design
- Anchor to the bootstrap dilemma resolution → bc human-as-calibration-entry must be preserved
- Start from existing per-discipline telemetry → bc mechanism is persistence + comparison, not new signals
- Consider storage location → bc _state.md is per-inquiry; cross-run needs something else
- Define "regression" operationally → bc without testable definition, detection is subjective

○ **CONSOLIDATE: Unified architecture overview** [MEDIUM]
WHY: 10+ completed inquiries define pieces of the system. No single document integrates them.

Guidelines:
- Use `/sense-making` on `devdocs/inquiries/` folder → bc synthesis = sensemaking on a folder
- Distinguish CURRENT from HISTORICAL (superseded) → bc mixing confuses readers
- Structure around the end-goal's capability stages → bc stages give natural spine
- Link to findings rather than restate → bc findings are self-contained

○ **DEVELOP: Document the living shape taxonomy** [MEDIUM]
WHY: Extended MVL made shape-based orchestration unnecessary at L0-2, but taxonomy still informs /mvl vs /mvl+ choice.

Guidelines:
- Keep lightweight (one page) → bc heavy docs don't get maintained
- Add shapes as encountered → bc premature taxonomy encodes wrong categories
- Co-locate with /MVL command docs → bc that's where users look

· **TERMINATE: Stop building, start using** [LOW]
WHY: Architecture thread reached a natural pause. Further design without usage data is speculation.

Guidelines:
- Resist adding Layer 4 items before needed → bc user said "not needed for now"
- Note the pause in memory → bc natural pause deserves recognition

### Process [1]

○ **WIDEN: Update /MVL.md to cross-reference /MVL+** [MEDIUM]
WHY: Classic /mvl doesn't mention /mvl+ exists. Users might not know /mvl+ is default for new inquiries.

Guidelines:
- Add brief note in /MVL.md's header → bc one-line pointer is enough
- Don't modify classic behavior → bc regression protection
- Reciprocal note with /MVL+ → bc symmetry helps comprehension

### Context [3]

○ **MERGE: Relationship graph visualization** [MEDIUM]
WHY: `_state.md` relationships form a graph across 20+ inquiries. No visualization exists.

Guidelines:
- Text-based graph is enough → bc structure becomes visible once drawn
- Auto-generate from _state.md → bc manual graphs go stale
- Include in unified overview → bc complementary to CONSOLIDATE

○ **TEST: First MVL+ run IS the test** [MEDIUM]
WHY: Extended MVL design is unvalidated. Running it is the only validation.

Guidelines:
- Overlaps with DEVELOP (showcase) → bc DEVELOP is action, TEST is framing
- Pre-commit to capturing failures → bc failures are data user values

· **REVISIT: discipline_architecture for shape taxonomy** [LOW]
WHY: Superseded finding's shape taxonomy still partially relevant for /mvl vs /mvl+ distinction.

Guidelines:
- Extract only the shape taxonomy → bc rest is superseded

### Excluded (considered and rejected)

✗ **REFINE** — no specific weakness in recent findings needing focused refinement
✗ **PURSUE SEED** — recent inquiries had clean survivals, no killed ideas with promising seeds
✗ **RE-RUN DEEPER** — no telemetry flags indicate need for deeper re-runs
✗ **REFRAME** — the extended MVL frame works
✗ **DIFFERENT APPROACH** — SIC/MVL approach is validating in practice
✗ **UNBLOCK** — no blocker preventing progress

---

## Summary

Two HIGH items converge on: **start using /MVL+ on real problems**.
- DEVELOP (showcase) — validates current build
- INVESTIGATE FRONTIER (Regression Detection) — unlocks next capability

MEDIUM items (CONSOLIDATE, WIDEN, MERGE, TEST) are maintenance/documentation — valuable but not urgent.

---

## Telemetry

* Types considered: 15/15 (9 included + 6 excluded)
* Category balance: Content [5] / Process [1] / Context [3]
* Guideline depth: All items have per-guideline WHY
* Excluded with reasoning: YES
* Failure modes observed: none
* **Overall: COMPLETE**
