# Sensemaking: Is Wayfinding Suggesting Insignificant Things?

## SV6 — Yes. TODO fixation.

### The two items are insignificant right now

**CLAUDE.md git check** — insurance for future edit sessions. Doesn't affect system functionality. DEFERRED.

**Change Log sections** — documentation insurance for future editors. Not about where to save files — it's notes at the bottom of spec files explaining what changed and why. Also DEFERRED.

Neither is a gate. Neither blocks testing. Do them before the next edit session, not before the next test run.

### The actual next step

Test on a real problem. Nothing blocks it. Pick a task. Run /inquiry.

### Wayfinding's failure: TODO FIXATION

Wayfinding reads undone items from a plan and keeps recommending them without assessing significance. It treats all undone items equally. "Add a CLAUDE.md instruction" and "test on a real problem" both look like "undone" — but one changes the landscape drastically and the other changes nothing.

Wayfinding's core question: "what would change the landscape MOST?" The answer was clearly "test on a real problem." Wayfinding answered its own question wrong by reading a TODO list instead of the landscape.

### Design gap

Wayfinding has no mechanism for distinguishing real gates (this MUST be done before that) from fake gates (this was planned before that but doesn't block it). Both look the same: undone. The reachability component needs SIGNIFICANCE awareness — not all undone items are equal.
