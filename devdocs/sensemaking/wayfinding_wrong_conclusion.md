# Sensemaking: Why Did Wayfinding Produce a Wrong Conclusion?

## SV6 — Stabilized Model

**Wayfinding didn't make a mistake — it was used outside its scope.**

It's a search steering discipline. It was asked a development planning question. It answered with the only tools it has (trajectory, position, past verdicts) and missed the critical dependency: protocols are a prerequisite for the operational layer, not more theory.

### Root Cause: Missing Dependency Awareness

| Layer | What it senses | What it MISSES |
|-------|---------------|----------------|
| Present | Position + heading | Dependencies (what blocks what) |
| Trend | Velocity + acceleration | Output TYPE (infrastructure vs. theory) |
| Memory | Past verdicts | Build dependencies (what must exist before X) |

No layer reads: "what is a prerequisite for what?"
No move means: "build the foundation first"

### Why the Conclusion Was Wrong

Wayfinding read: velocity declining, heading increasingly abstract → NARROW (stop broadening).

But: protocol formalization is NOT "more theory." It's INFRASTRUCTURE — the prerequisite that the operational layer depends on. Wayfinding couldn't see this because it doesn't read dependency graphs.

### Fix

Don't change wayfinding. Add a **PRIORITIZE** protocol to the Pipeline protocols category.

PRIORITIZE reads: dependency graph + current state → build order.

Wayfinding stays clean as search steering. PRIORITIZE handles "what to build next" questions.

### The User Was Right

Formalizing protocols IS the next step. It's the prerequisite everything operational depends on. Wayfinding categorized it as "theory" because protocol specs and discipline specs both look like .md files. But infrastructure-for-operations and theory-about-thinking are fundamentally different — even when the artifact format is the same.
