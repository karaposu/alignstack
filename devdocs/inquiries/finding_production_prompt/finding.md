---
status: active
---
# Finding: Finding Production Prompt

## Question
What prompt should MVL's TERMINATE use to automatically produce finding.md after critique completes — such that it enforces the four-section argumentative structure AND ensures comprehensive coverage of insights, decisions, and reasoning spread across the SIC output files?

Goal: A concrete prompt that (1) enforces structure, (2) ensures non-compact self-contained content, (3) captures all killed alternatives with reasoning, and (4) pulls from all three SIC docs.

## Finding

MVL's TERMINATE "YES — the question is answered" branch is replaced with a finding.md production step. The prompt is a **directed synthesis recipe** — a template with per-section extraction instructions, framed by a reader persona that structurally prevents compression, followed by a coverage self-check.

The concrete prompt to embed in MVL's TERMINATE section:

```
Write `finding.md` in the inquiry folder. Read all four files
(_branch.md, sensemaking.md, innovation.md, critique.md) and
produce the finding as a single argumentative document.

Write for a reader who has NOT seen the SIC output — someone
who just joined the project and needs to understand: what was
the question, what's the answer, why this answer over the
alternatives, and what's still open. Do not compress. Explain
fully even if finding is long. The test: can someone read ONLY finding.md and
understand the complete decision?

Use this structure:

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
 Significant kills: full explanation of what was proposed
 and why it was rejected. Trivial kills: brief mention.
 Show the full field of what was considered.]

## Open Questions
[Collect frontier questions from all three SIC files
 where relevant. Include REFINE candidates from innovation
 (deferred, not killed). Deduplicate.]

After writing, verify coverage:
- Every critique KILL is in Reasoning
- Every critique SURVIVE is reflected in Finding
- Open Questions draws from all three files where relevant

For multi-iteration inquiries: Finding reflects the FINAL
iteration's answer. Prior iterations' lessons go in
Reasoning as context.

Then:
- Archive: move sensemaking.md, innovation.md, critique.md
  to docarchive/ subfolder
- Update _state.md: Status → COMPLETE, append to History
- Print in conversation: brief summary (the question +
  one-sentence answer + file path). Not the full finding.
```

This replaces the current TERMINATE "YES" block in `commands/MVL.md`. The current block prints "SIC Loop Complete" with Answer + What Survived + Frontier in conversation — that conversation output is replaced by finding.md as the primary deliverable. The conversation gets a brief confirmation (question + one-sentence answer + path) so the user has immediate signal without duplication.

The prompt has three quality controls working together:
1. **Template** — enforces structure. The AI fills in four sections; it can't skip or reorder.
2. **Reader persona** — prevents compression. "Write for someone who hasn't seen the SIC output" naturally produces the right verbosity because the AI expands when it believes the reader has no prior knowledge. This is more robust than "don't compress" (a negative instruction the AI may ignore).
3. **Coverage self-check** — catches dropped content. After writing, the AI re-scans critique's verdicts to verify every kill and survive is represented. Imperfect (same AI checking its own work) but meaningfully better than no check.

## Reasoning

**Template with per-section instructions over generic "summarize SIC output":** A generic prompt ("read the SIC output and write a summary") produces inconsistent results — some findings would capture all kills, others would miss half, structure would vary. The template makes structure AUTOMATIC and the per-section extraction instructions tell the AI exactly WHERE to look for each section's content. Critique confirmed: structural enforcement is the highest-confidence quality control.

**Reader persona over "don't compress" directive:** The AI's default behavior is to compress. "Don't compress" is a negative instruction — the AI must fight its default, and often doesn't succeed. "Write for a newcomer" is a positive constraint — the AI naturally writes more for a reader it believes knows less. Critique found no meaningful prosecution against this approach; it's the cleanest innovation in the design.

**Coverage self-check over no verification:** Prosecution argued self-checks are unreliable (same AI, same blind spots). Defense: re-scanning in "check mode" IS a different cognitive operation than writing mode. The AI in check mode compares a list (critique's kills) against written content — a mechanical operation where misses are more visible. Not perfect, but meaningful. Critique confirmed: add "where relevant" to the Open Questions check to prevent manufactured frontier questions when a file has none.

**Kill triage over equal treatment:** Prosecution identified that "include every KILL" could produce 3000-word kill-by-kill replays. Defense: the reader persona naturally triages (you don't bore a newcomer with trivial kills). Critique refined this: add explicit triage guidance — significant kills get full explanation, trivial kills get brief mention.

**finding.md replaces conversation output over supplementing it:** Prosecution argued "go read a file" adds friction. But the file IS the deliverable — conversation is ephemeral. Critique refined: add a 2-3 line conversation summary (question + one-sentence answer + path) so the user gets immediate signal without opening the file. This is a pointer, not a duplicate.

**Inline in MVL spec over separate prompt file:** Having the prompt in a standalone document that MVL references would add indirection. The prompt belongs directly in the TERMINATE section of `commands/MVL.md` because that's where it's executed. No new files, no references to chase.

**Narrative-only approach (no template) killed:** Without the structural skeleton, the AI can reorder or skip sections. Structure must be enforced by the template, not trusted to the AI's judgment.

**"Supplement conversation output" killed:** Printing the full finding in conversation AND writing it to a file creates duplication and the risk of divergence. One source of truth: the file.

## Open Questions
- How does the coverage self-check perform in practice? After 5-10 findings are produced, review whether the check actually catches omissions or is rubber-stamped.
- Should TERMINATE also propose `_state.md` relationship updates (SUPERSEDED BY, CONTINUES FROM) semi-automatically? Currently deferred to manual.
- Multi-iteration handling is correct but thin — only one sentence of guidance. Revisit after encountering a multi-iteration inquiry that produces finding.md.
- The "NO — question not fully answered" branch still prints in conversation. Is the asymmetry (NO in conversation, YES in file) confusing? Or is it correct because NO doesn't produce a deliverable?
