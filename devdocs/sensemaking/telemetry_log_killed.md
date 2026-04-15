# Sensemaking: Kill the Telemetry Log

## SV6

**telemetry_log.md is killed.** Redundant + misleading.

### Why redundant
Discipline output files already contain telemetry sections. The log duplicates what's there. To compare runs, read the output files.

### Why misleading
Paradigm projection (Comprehend FM#8): numeric metrics don't capture quality for meaning-producing disciplines. A perspective count trend (5, 4, 3, 2) could be "degradation" OR "getting deeper with fewer, better perspectives." The log tells a false story.

### What survives for regression prevention
1. Change Log sections in critical files (explains WHY, prevents uninformed removal)
2. Pre-edit git check in CLAUDE.md (forces checking history)
3. Human judgment during normal use (the real quality signal)

### What's open
Slow drift detection (gradual degradation across many sessions). No current solution. The numeric log wasn't one either.

### Updated MVL items remaining: 2
1. CLAUDE.md pre-edit git check (5 min)
2. Change log sections in critical files (15 min)
