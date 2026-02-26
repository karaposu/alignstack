# /arch-top-improvements — Highest-Impact Codebase Improvements

Based on all existing traces, identify the 5 highest-impact improvements for this codebase — the changes that would make the biggest difference to quality, stability, or maintainability.

## Input

$ARGUMENTS

## Instructions

1. Read all trace files under `devdocs/archaeology/traces/`. If no traces exist, tell the user to run `/arch-traces` first.

2. Identify the 5 improvements that would have the most impact across the codebase. These should come from patterns you see across multiple traces, not just one isolated issue.

3. For each improvement, document:
   - **What** — The improvement and why it matters
   - **Affected areas** — What it would touch across the codebase
   - **Why it probably hasn't been done yet** — A plausible reason. It may reflect an undocumented decision, a trade-off, or a constraint that isn't obvious from the code alone. Don't assume it was simply overlooked.

4. Rank them by impact, highest first.

### Metadata

Before writing the file, insert a metadata header at the very top by running `git branch --show-current`, `git rev-parse --short HEAD`, and `git config user.name` to populate:

```
---
created: YYYY-MM-DD
branch: <current branch>
base_commit: <short HEAD commit>
author: <git user.name>
---
```

### Output

Write to `devdocs/archaeology/top_improvements.md` (create the directory if needed). If the file already exists, overwrite it completely — rewrite fresh, don't patch.
