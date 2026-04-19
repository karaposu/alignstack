# Innovation: Inquiry Finalization

## User Input
devdocs/inquiries/inquiry_finalization/sensemaking.md

---

## Seed

Two docs (evolution + survivors), archive source files. Innovation question: what improves the approach, makes it automatic, or connects it to the rest of the system?

---

## Key Innovations

### 1. TERMINATE writes the docs automatically (3b + 5c + 4a + 7b)

MVL's TERMINATE step already signals "question answered." Make it ALSO produce the summary docs and archive source files. Finalization isn't a separate step — it's built into TERMINATE. Zero human effort. Never forgotten. Consistent.

**Convergence: 4 mechanisms**

### 2. One file, not two (1b)

`summary.md` with sections:
```markdown
# Summary: [inquiry name]

## Survivors
[Answer, decisions, understanding, dead ends — self-contained]

## Evolution
[How ideas evolved, file references, key turns, what was killed]

## Open Questions
[Frontier questions — seeds for future work]
```

Survivors first (destination). Evolution second (journey). One file is simpler than two.

### 3. Survivors section is self-contained (4b)

Readable without ANY other context. A new session, different person, different AI — reads just the survivors section and knows: what was decided, what's the current understanding, what's open. Non-negotiable for cross-session value.

### 4. All survivors = project briefing (2b + 7a)

The briefing isn't a separate file the human maintains. It's the AGGREGATE of all survivors sections from finalized inquiries. After 50 inquiries: 50 summary.md files, each with a survivors section. Together = the project's knowledge base. The briefing assembles itself.

---

## Assembly

**TERMINATE writes `summary.md` automatically → one file with Survivors + Evolution + Open Questions → source files to docarchive/ → folder is lean → all survivors = project briefing.**

Simpler than the sensemaking design: one file instead of two, automatic instead of manual, integrated into TERMINATE.

---

## Verdicts

### SURVIVE
- **TERMINATE writes docs** — 4 mechanisms converge. Zero effort. Never forgotten.
- **One file** — Simpler. Survivors first, evolution second.
- **Self-contained survivors** — Non-negotiable for cross-session value.
- **All survivors = project briefing** — Solves briefing with zero maintenance.

### REFINE
- **Cross-inquiry links** — Valuable at 10+ inquiries. Premature now.
- **Finalization → next inquiry** — Elegant but optional. Suggest, don't auto-start.

### KILL
- **Delete source files** — Irreversible. Archive is safe and costs nothing.
- **Archive during inquiry** — Mid-inquiry file moves create confusion.

---

## Mechanism Coverage
* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — 4 → TERMINATE writes docs. 2 → survivors = briefing.
* **Survivors:** 4 SURVIVE + 2 REFINE / 2 killed
* **Assembly:** YES — automatic single-file finalization
* **Overall: PROCEED**
