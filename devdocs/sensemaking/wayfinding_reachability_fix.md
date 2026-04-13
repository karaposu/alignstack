# Sensemaking: How to Fix Wayfinding's Design Gap

## SV6 — Stabilized Model

**The fix is one concept: Reachability.**

Add as a third component to the Present Layer:

```
PRESENT LAYER (fixed):
  Position     — where on the landscape?
  Heading      — which direction focused?
  Reachability — what's accessible? what gates block the rest?
```

### Gate Structure

```
Gate:
  Blocked region  — what becomes reachable when this opens
  Condition       — what must be true for the gate to open
  Current state   — open / closed
```

### Move Extension

No new moves. Existing moves gain a gate-awareness qualifier:

"BROADEN into X — but gate Y must be opened first (condition: Z)"

### Example (the case that exposed the gap)

Gate(
  blocked: operational layer improvements,
  condition: protocol specs must be formalized,
  state: CLOSED
)

Wayfinding would now say: "The most impactful action is to formalize protocols (opens the gate to operational layer work)" instead of "NARROW — stop broadening."

### Why This Works

- Reachability is SPATIAL and PRESENT-TENSE → belongs in Present Layer (not a 4th layer)
- Gates are GENERIC (blocked region + condition + state) → domain-agnostic
- Parallel to Exploration's frontier tracking → same concept, different landscape
- No identity change → wayfinding is still search steering, now with topology awareness
- Minimal → one component addition, no new layers or moves
