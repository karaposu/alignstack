# Innovation: Finding Production Prompt

## User Input
devdocs/inquiries/finding_production_prompt/sensemaking.md

---

## Seed

The prompt is a directed synthesis recipe embedded in MVL's TERMINATE section. It maps SIC outputs to finding.md sections, counters AI compression tendency, and includes a coverage self-check. Innovation question: what concrete prompt design best produces consistently high-quality findings across varying inquiry complexity?

---

## Key Innovations

### 1. Template with embedded per-section instructions (2a + 4a + 6b)

The prompt IS the finding.md skeleton with extraction instructions in each section placeholder. Structural enforcement is automatic — the AI fills in sections, can't skip or reorder. Per-section instructions specify WHERE to look (which file, which section) and WHAT quality means for each section.

**Convergence: 3 mechanisms** (Combination + Constraint Manipulation + Domain Transfer from structured abstracts)

### 2. Anti-compression through reader persona (1a + 3a)

Instead of "be non-compact" (vague, negative), define the reader: "Write as if briefing someone who just joined the project. They haven't seen the SIC output." The AI naturally writes more when it believes the reader knows less. Reader persona is STRUCTURAL anti-compression — creates a constraint that REQUIRES expansion.

**Convergence: 2 mechanisms** (Lens Shifting + Inversion)

### 3. Coverage verification as final step (5a + 7a)

Template ensures structure; it doesn't ensure COMPLETENESS within each section. Post-write verification: "Is every KILL from critique in Reasoning? Is every SURVIVE in Finding? Are Open Questions drawn from all three files?"

**Convergence: 2 mechanisms** (Absence Recognition + Extrapolation)

### 4. Multi-iteration handling (5b + 4b)

Finding reflects the FINAL iteration's answer. Prior iterations contribute context to Reasoning ("iteration 1 explored X, killed because Y"). The final iteration's critique.md "The Answer" is the base.

**Convergence: 2 mechanisms** (Absence Recognition + Constraint Manipulation)

### 5. TERMINATE flow redesign (1b + 3b)

finding.md REPLACES the conversation output. Current "SIC Loop Complete" block is removed. TERMINATE flow: write finding.md → archive to docarchive/ → update _state.md → print pointer.

**Convergence: 2 mechanisms** (Lens Shifting + Inversion)

---

## Assembly

**The concrete TERMINATE "YES" branch replacement:**

```
- **YES — the question is answered:**

  Write `finding.md` in the inquiry folder. Read all four files 
  (_branch.md, sensemaking.md, innovation.md, critique.md) and 
  produce the finding as a single argumentative document.

  Write for a reader who has NOT seen the SIC output — someone 
  who just joined the project and needs to understand: what was 
  the question, what's the answer, why this answer over the 
  alternatives, and what's still open. Do not compress. Explain 
  fully. The test: can someone read ONLY finding.md and 
  understand the complete decision?

  Structure:

  ---
  status: active
  ---
  # Finding: [inquiry name]

  ## Question
  [From _branch.md — the question and goal]

  ## Finding
  [The answer. Base on critique's "The Answer" or assembly 
   verdict. Enrich with innovation's Assembly design and 
   sensemaking's SV6 understanding. Must be complete, 
   self-contained, non-compact.]

  ## Reasoning
  [Why this finding over alternatives. Include:
   - Every KILL from critique with prosecution reasoning
   - Every KILL from innovation with rejection reasoning
   - Every SURVIVE with why it held
   Show the full field of what was considered, not just 
   the winner.]

  ## Open Questions
  [Collect frontier questions from all three SIC files. 
   Include REFINE candidates from innovation (deferred, 
   not killed). Deduplicate.]

  After writing, verify coverage:
  - Every critique KILL is in Reasoning
  - Every critique SURVIVE is in Finding
  - Open Questions draws from all three files

  For multi-iteration inquiries: Finding reflects the FINAL 
  iteration's answer. Prior iterations' lessons go in 
  Reasoning as context.

  Then:
  - Archive: move sensemaking.md, innovation.md, critique.md 
    to docarchive/ subfolder
  - Update _state.md: Status → COMPLETE, append to History
  - Print: "finding.md written. Review it." with the file path
```

---

## Verdicts

### SURVIVE
- **Template with per-section instructions** — 3 mechanisms. Structure + directed extraction.
- **Anti-compression via reader persona** — 2 mechanisms. More robust than "don't compress."
- **Coverage verification** — 2 mechanisms. Catches dropped kills/insights.
- **TERMINATE flow redesign** — 2 mechanisms. File replaces conversation output.
- **The assembled prompt** — all innovations combine into concrete MVL spec text.

### REFINE
- **Multi-iteration handling** — correct but brief. Test after encountering a multi-iteration inquiry.
- **Relationship updates during TERMINATE** — should TERMINATE propose `_state.md` relationships? Defer to manual.

### KILL
- **Separate prompt file** — indirection. Prompt belongs inline in MVL spec.
- **Generic "summarize SIC output"** — no structure, no directed extraction. Inconsistent.
- **Narrative-only (no template)** — doesn't enforce structure.
- **Supplement conversation output** — duplication. File IS the output.

---

## Mechanism Coverage
* **Generators:** 4/4. **Framers:** 3/3.
* **Convergence:** YES — all innovations converge on single assembled prompt.
* **Survivors:** 5 SURVIVE + 2 REFINE / 4 killed
* **Assembly:** YES — concrete MVL spec text produced
* **Overall: PROCEED**
