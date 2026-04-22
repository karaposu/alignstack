# Branch: Finding Document Audit — Produce a Better Writing Guide

## Question
What common problems exist across finding.md documents produced by the extended SIC loop (E→S→D→I→C) — specifically around language ambiguity, missing summaries, and unclear next-action guidance — and what structural improvements to the finding.md template would systematically fix them?

## Goal
A rigorous, evidence-based writing guide for finding.md documents that:

1. **Corpus-grounded problem identification** — audit existing finding.md files across two projects (`vibe-driven-development` and `chatforge`) to identify concrete cases of: (a) language ambiguity, (b) missing or inadequate summary, (c) unclear/ambiguous next actions. Name specific examples with file paths + excerpts. Avoid theoretical complaints.
2. **Pattern extraction** — what's common across findings that WORK well? What's common across findings that FAIL readability? Convergent patterns beat individual critiques.
3. **Concrete template refinements** — updated finding.md template with explicit sections that address identified gaps. Each proposed section must have: a name, a purpose, a format, and a rule for what content belongs there vs elsewhere. Not "add a summary section" but "add a TL;DR section with this format and this content rule."
4. **Next-action clarity protocol** — specific format for writing next-action sections so a reader (or future Claude instance) knows exactly what to do with the finding: which files to edit, which commands to run, which decisions are gated on what triggers.
5. **Backward compatibility** — existing finding.md files don't need retroactive rewriting (but can be enhanced opt-in); new findings adopt the refined template.
6. **Update to /MVL+ spec** — the ITERATION COMPLETE section of /MVL+ currently specifies the finding.md structure (Question / Finding / Reasoning / Open Questions). If the audit validates template changes, /MVL+ gets the updated template.

## Scope Check
Question covers goal: YES — the question names ambiguity + missing summary + unclear next actions + systematic template fix; the goal asks for corpus evidence, pattern extraction, concrete template refinements, next-action protocol, backward compatibility, and /MVL+ update. All within question scope.

## Context — the user's observation verbatim

> "i realized with finding documents it is really hard to understand the findings, due to ambiguity of the language, lack of summary section, and also ambiguity of proposed next actions, and maybe if we inspect all finding.md files we created so far, we might be able to notice a common structure, or common problems and we can create a better guide on how to write finding md files?
>
> inspect all finding.md files in devdocs/inquiries and also in other project /Users/ns/Desktop/projects/chatforge/devdocs/inquiries and try to understand lack of things, common things, how they can be improved in generic way"

### Why this concern lands

Finding documents are the PRIMARY OUTPUT of the SIC loop — they're what survives after the 5 discipline files get archived. If findings are hard to understand, the entire loop's value decays over time: future readers (including future Claude instances) can't quickly extract what was decided, what was rejected, or what to do next.

The user named three specific problems; each is independently problematic:

- **Language ambiguity** — findings use phrasings like "mostly sound," "with caveats," "structurally justified" without making clear what the reader concretely knows. Academic hedging when decisive statements would serve better.
- **Missing summary** — a reader has to read 500-2000 words to find "the answer is X." Findings that have answers to one-sentence questions often bury the one-sentence answer 10 paragraphs in.
- **Ambiguous next actions** — "deferred until triggered" without the trigger; "ships with Phase β" without Phase β having a defined ship gate; "worth revisiting" without a revisit mechanism. Findings often propose work without specifying who/when/how.

Combined effect: a reader trying to USE a finding has to translate academic-hedged prose into operational decisions — a translation that could have been done once in the finding itself.

### Corpus to inspect

**Project 1 — `vibe-driven-development`** (this project):
- `devdocs/inquiries/regression_detection_design/finding.md`
- `devdocs/inquiries/importance_measurement_problem/finding.md`
- `devdocs/inquiries/thinking_space_dynamics/finding.md`
- `devdocs/inquiries/intuition_as_discipline/finding.md`
- `devdocs/inquiries/thinking_space_primitives/finding.md`
- `devdocs/inquiries/thinking_disciplines_audit/finding.md`
- `devdocs/inquiries/autonomous_consciousness_goal/finding.md`
- `devdocs/inquiries/discipline_architecture/finding.md` (if exists)
- `devdocs/inquiries/discipline_relevance_audit/finding.md` (if exists)
- `devdocs/inquiries/extended_mvl_architecture/finding.md` (if exists)
- `devdocs/inquiries/mvl_plus_implementation/finding.md` (if exists)
- `devdocs/inquiries/system_end_goal/finding.md` (if exists)

**Project 2 — `chatforge`**:
- `/Users/ns/Desktop/projects/chatforge/devdocs/inquiries/apt_missing_dimension/finding.md`
- `/Users/ns/Desktop/projects/chatforge/devdocs/inquiries/apt_self_focus_reframe/finding.md`
- `/Users/ns/Desktop/projects/chatforge/devdocs/inquiries/self_focus_dynamics/finding.md`
- `/Users/ns/Desktop/projects/chatforge/devdocs/inquiries/self_focus_generalization/finding.md`

Both corpora are needed: chatforge findings were produced by the same system in a different problem domain. Patterns that appear in BOTH corpora are genuinely about the template, not about project-specific concerns.

### Current finding.md template (from /MVL+)

The current template specifies four sections:

```markdown
---
status: active
---
# Finding: [inquiry name]

## Question
[From _branch.md — the question and goal]

## Finding
[The answer. Based on critique's "The Answer" or assembly verdict...
Must be complete, self-contained, non-compact.]

## Reasoning
[Why this finding over alternatives. Every KILL with reasoning,
every SURVIVE with why it held, contradictions reconciled...]

## Open Questions
[Collect frontier questions from all five loop output files...]
```

Observation: the template has no summary section, no explicit next-actions section, no ambiguity-resistance rules. If the user's three problems are real and systematic, they trace to template gaps — which is actionable.

### Likely audit findings (to be tested against corpus)

These are HYPOTHESES to test, not assumptions to confirm:

- **H1:** findings consistently lack an up-front 1-3 sentence TL;DR. Reader must read the full Finding section to extract the one-sentence answer.
- **H2:** the Reasoning section sometimes duplicates the Finding section (saying "the answer is X" twice, once in Finding and again in Reasoning's "why X over alternatives").
- **H3:** Open Questions section lists future work without categorizing it (what's urgent vs deferred vs research vs blocked).
- **H4:** the template has no explicit "Next Actions" section. Actions are scattered in Finding, Reasoning, or Open Questions without clear action-versus-context distinction.
- **H5:** academic hedging phrases ("mostly sound," "with caveats") appear in places where more decisive phrasing would serve the reader.
- **H6:** findings don't clearly distinguish what the reader/system MUST do vs what they COULD do vs what's deferred/conditional.
- **H7:** cross-inquiry references vary in format — some use full paths, some use partial names — inconsistency erodes discoverability.

### What this audit should AVOID

- **Retroactive prescription** — requiring existing findings to be rewritten is high-cost, low-value.
- **Over-specification** — rigid templates that kill authorial voice are worse than the current loose template.
- **Aesthetic complaints** — "it should be shorter" or "it should have more examples" without structural reasoning doesn't meet the bar.
- **Project-specific fixes** — the improvements must generalize to any SIC inquiry in any project.
- **Ignoring successful findings** — findings that WORK well have structural lessons too. Don't only focus on failures.

### Structural expectations

- Primary output: updated finding.md template specification
- Secondary output: updated `/MVL+` spec (the ITERATION COMPLETE section) with the new template
- Tertiary output: optional style-guide document for `enes/` folder (reader-first writing principles) if the audit surfaces principles general enough to codify

### Related prior context

- `commands/MVL+.md` — current finding.md template is specified here in the ITERATION COMPLETE section
- Previous audit `thinking_disciplines_audit` — identified related issue: "ambiguity in proposed next actions" at the discipline level; this audit probes the same issue at the finding level
- `devdocs/improvement_observations.md` if it exists — prior user observations about the loop
