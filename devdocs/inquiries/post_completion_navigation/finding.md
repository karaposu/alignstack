---
status: active
---
# Finding: Post-Completion Navigation

## Question
When an inquiry completes (YES — answered) and it was part of a bigger task or chain (CONTINUES FROM, RELATED), should TERMINATE prompt the user to go back to the parent/source context and re-evaluate — and if so, how?

Goal: A design for post-completion flow that naturally guides the user upstream instead of the chain silently ending.

## Finding

Yes — TERMINATE should print a post-completion pointer after writing finding.md, whenever `_state.md` has upstream relationships. The inquiry chain is a call stack: CONTINUES FROM is the push (branching into a sub-question), and the TERMINATE pointer is the pop (returning to the parent with the answer). Without the pop, completed sub-inquiries silently end and the parent context is never revisited — the user must track the chain mentally, which breaks across sessions.

The pointer is added to TERMINATE's flow after printing the finding summary. It reads `_state.md`'s `## Relationships` section and prints suggestions based on relationship type:

**For CONTINUES FROM** — strong, actionable suggestion with return value:
```
This finding is ready for [parent_name] ([context]).
Finding: [one-sentence answer]
Resume: /MVL devdocs/inquiries/[parent_name]/
```

**For RELATED** — soft mention using existing `_state.md` context:
```
Related: [name] ([context]) — this finding may affect it.
```

**If no relationships** — nothing additional. Standalone inquiries get only the finding summary.

The pointer is framed as forward-supply ("this finding is ready for the parent") rather than backward-return ("go back to parent"). The user isn't retreating — they're moving forward with new information that the parent inquiry needs. This framing validates the sub-inquiry as productive work rather than a detour.

The CONTINUES FROM pointer carries a return value: the one-sentence finding from the conversation summary. This makes the pointer self-contained — the user knows WHAT they're bringing back before deciding whether to resume the parent. In cross-session scenarios (where the user resumes days later and doesn't remember the chain), the return value provides immediate context.

The pointer is purely advisory. No cross-file writes to parent folders. No automatic updates. The human decides whether to act on the suggestion. TERMINATE only reads from and writes to its own inquiry folder — the pointer is a print statement, not a side effect.

This is a lightweight REVISIT shortcut, not a replacement for full `/navigate`. Navigation maps ALL possible directions (15 types). The TERMINATE pointer handles ONE specific direction — the most common case of returning to where you came from. Full navigation remains available when the user wants the complete possibility space.

## Reasoning

**Return value over bare command:** A bare "Resume: /MVL parent_folder/" is generic — the user sees a command but doesn't know WHY they should resume. Adding the one-sentence finding ("Finding: [X]") tells the user what they're bringing back. Prosecution argued this duplicates the finding summary printed two lines above. Defense: the duplication is two lines, and it makes the pointer self-contained for cross-session resume where the summary may not be visible. The return-value framing (from Domain Transfer: function calls return values, not just pop the stack) adds motivation to act.

**Forward-supply framing over backward-return:** Prosecution argued "this finding is ready for" adds words without changing the action. Defense: framing shapes interpretation. "Go back" implies the sub-inquiry was a detour. "Ready for the parent" implies it was productive — the sub-inquiry PRODUCED something the parent needs. The user's demonstrated sensitivity to naming (the entire value_extraction_design inquiry was about naming) supports that framing matters in this project.

**RELATED uses `_state.md` context over generic mention:** No meaningful prosecution. Using the existing parenthetical context from `_state.md` (e.g., "same topic, different angle") makes the mention specific and actionable. Zero additional mechanism.

**Parent status check killed:** Innovation proposed reading the parent's `_state.md` to check if it's already complete before suggesting return. Prosecution: this breaks folder isolation (TERMINATE currently only reads/writes within its own folder), the edge case is rare (if the parent is already complete, why does the child exist?), and a stale pointer is harmless (user runs `/MVL parent_folder/`, sees COMPLETE, moves on in 5 seconds). The cost of permanent cross-folder read complexity exceeds the cost of an occasional stale pointer.

**Depth indicator killed:** Chains rarely exceed 2-3 levels in observed usage (19 inquiries, max chain depth 4). Building depth tracking adds complexity for a problem that doesn't exist yet.

**Origin embedded in finding.md killed:** Adding "this inquiry was spawned from X" to finding.md's content contradicts finding.md's design as a forward-looking, self-contained argument. Origin is backward-looking metadata that belongs in `_state.md` (where it already lives as CONTINUES FROM).

**Observation step asking about parent killed:** The Observation step is about PROCESS quality, not CONTENT connections. Asking about the parent conflates two different concerns.

## Open Questions
- After implementing: does the pointer actually get acted on? Or does the user learn to ignore it? Monitor after 5-10 completions.
- If chains regularly exceed 3 levels, should the pointer include chain depth? Currently killed as premature.
- Should the NO branch ("question not fully answered") also check relationships and print context? Currently only the YES branch has this addition.
