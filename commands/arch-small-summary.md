# /arch-small-summary — Non-Technical Project Summary from Code

Read all code files in the project and produce a non-technical summary of what this project is and does — based purely on what the code shows, not what documentation claims.

## Input

$ARGUMENTS

## Instructions

1. Read all code files in the codebase fully. Focus on source code — ignore existing documentation, READMEs, and comments that describe intent rather than behavior.

2. Based on what the code actually does, write a non-technical summary covering:
   - What the project is about (in plain language)
   - What it currently does (working functionality)
   - What it appears to be trying to do (partially implemented or in-progress)
   - Who would use this and why
   - The general shape of the project (is it a web app, a CLI tool, a library, an API, etc.)

3. Keep it readable by a non-engineer. Avoid jargon. If a technical concept is essential, explain it briefly in parentheses.

4. Be honest about the state of things — if something looks half-built, say so. If something looks abandoned, note it.

### Metadata

When saving to a file, insert a metadata header at the very top by running `git branch --show-current`, `git rev-parse --short HEAD`, and `git config user.name` to populate:

```
---
created: YYYY-MM-DD
branch: <current branch>
base_commit: <short HEAD commit>
author: <git user.name>
---
```

### Output

**If `--save` is passed as an argument:**
- Write the summary to `devdocs/archaeology/small_summary.md` (create the directory if needed).
- If that file already exists, overwrite it completely — do not append or patch, rewrite the whole thing fresh.

**Otherwise:**
- Print the summary directly in the conversation only.

### Examples

```
/arch-small-summary                → prints summary in conversation
/arch-small-summary --save         → prints + saves to devdocs/archaeology/small_summary.md
```
