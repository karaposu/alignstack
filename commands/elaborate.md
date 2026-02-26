# /elaborate — Rephrase for Alignment Verification

Take the input below and rephrase it back to me — clearer, more structured, more understandable. Use your understanding of the codebase to interpret what I mean and fill in obvious gaps.

## Input

$ARGUMENTS

## Instructions

1. Parse the input. It can be:
   - **Raw text only** — notes, a ticket, a data dump, or a loose description.
   - **A file path only** — read the file and use its contents as the input.
   - **A file path + additional text** — read the file first, then treat the remaining text as extra context or instructions on top of the file contents. Both parts matter.

   If the input starts with something that looks like a file path (e.g. `devdocs/...`, `src/...`, or any path with `/`), attempt to read it as a file. Everything after the path is additional context.

2. Use codebase context to understand what the user is referring to (existing modules, patterns, terminology).
3. Rephrase the input in clear, precise language. Make it structured and easy to follow — organize scattered thoughts, group related ideas, clarify vague phrasing. Keep the user's intent intact, don't reshape it into a format they didn't ask for.
4. After the rephrased version, add:
   - **Ambiguities**: Anything that is unclear, has multiple interpretations, or needs a decision — list these explicitly.

### Output

5. Save the output as markdown file(s). Split into multiple files if the input covers distinct topics or is large enough to warrant it.
   - **If the input was file path(s)** — save the elaborated output in the same folder as the input files.
   - **Otherwise** — save under `devdocs/clarifications/<suitable-name>/` (create the directory if needed, use a short descriptive name based on the content).
6. Print the output in the conversation as well.
7. End with: *"Does this capture what you meant? Correct anything that's off before we proceed."*

## Purpose

The primary goal is to take messy, scattered input and make it tidy — structured, clear, and easy to read. As a side effect, this also serves as an alignment check: if the rephrased version doesn't match intent, it gets caught here rather than three steps later. Only flag ambiguities that actually matter for moving forward — don't nitpick.
