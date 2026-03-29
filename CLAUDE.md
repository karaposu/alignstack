# Project Instructions

## Archaeology Freshness Check

Before doing any codebase analysis or implementation work, check if archaeology context exists and is fresh. Use file modification dates to determine age.

1. `devdocs/archaeology/small_summary.md` — if missing or older than 30 days, run `/arch-small-summary`
2. `devdocs/archaeology/intro2codebase.md` — if missing or older than 15 days, run `/arch-intro`
3. `devdocs/archaeology/traces/` — if missing or older than 7 days, run `/arch-traces`

Run them in order (summary first, intro second, traces last). Skip any that are still fresh. If all are fresh, proceed directly to the task.

Only check when the task involves reading or modifying code. Skip for doc-only or conversation-only tasks.
