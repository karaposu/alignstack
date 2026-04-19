# Innovation: Post-Completion Navigation

## User Input
devdocs/inquiries/post_completion_navigation/sensemaking.md

---

## Seed

The inquiry chain is a call stack. CONTINUES FROM = push. Missing: the pop. When a sub-inquiry completes, TERMINATE should point the user back to the parent context. Innovation question: what enrichments or alternatives improve the basic stack-pop pointer?

---

## Key Innovations

### 1. Return value, not just return address (5a + 6a + 2a)

In programming, function calls don't just pop the stack — they return a VALUE. The TERMINATE pointer should carry the one-sentence finding alongside the resumable command. The user knows WHAT they're bringing back before they go.

```
This finding is ready for the parent inquiry: [parent_name].
Finding: [one-sentence answer]
Resume: /MVL devdocs/inquiries/[parent_name]/
```

**Convergence: 3 mechanisms** (Absence Recognition + Domain Transfer + Combination)

### 2. Check parent status before suggesting (5b + 4a)

Read the parent's `_state.md` before suggesting return. If parent already has finding.md (independently completed), don't suggest resuming — just mention. Prevents stale pointers to dead inquiries.

**Convergence: 2 mechanisms** (Absence Recognition + Constraint Manipulation)

### 3. Forward-supply framing (1a + 1b)

"This finding is ready for the parent" > "go back to parent." The user isn't returning — they're moving forward with new information. Subtle but shapes the mental model correctly.

**Convergence: 2 mechanisms** (Lens Shifting × 2)

### 4. RELATED uses _state.md context (2b + 4b)

RELATED entries already have parenthetical context in `_state.md`. Use it:
```
Related: universal_vs_configurable (same topic, different angle) — this finding may affect it.
```

**Convergence: 2 mechanisms** (Combination + Constraint Manipulation)

---

## Assembly

**The complete post-completion suggestion:**

```
After printing the finding summary, check _state.md for ## Relationships:

If CONTINUES FROM: [parent_name] ([context]) exists:
  Print:
  "This finding is ready for the parent inquiry: [parent_name].
   Finding: [one-sentence answer]
   Resume: /MVL devdocs/inquiries/[parent_name]/"

If RELATED: [name] ([context]) exists:
  Print:
  "Related: [name] ([context]) — this finding may affect it."
```

Forward-framed, carries the return value, uses existing context, differentiates strength by relationship type.

---

## Verdicts

### SURVIVE
- **Return value in pointer** — 3 mechanisms. One-sentence finding + command.
- **Forward-supply framing** — 2 mechanisms. Progress, not retreat.
- **RELATED uses context** — 2 mechanisms. Concrete, not generic.

### REFINE
- **Check parent status** — valuable but adds file read. Test when chains form.

### KILL
- **Depth indicator** — premature. Chains 2-3 max.
- **Embed origin in finding.md** — backward metadata in forward content.
- **Observation asks about parent** — conflates process with content.

---

## Mechanism Coverage
* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — 3 → return-value pointer. 2 → forward framing.
* **Survivors:** 3 SURVIVE + 1 REFINE / 3 killed
* **Assembly:** YES — enriched pointer
* **Overall: PROCEED**
