# Comprehension: Next Steps to Eliminate Regression Risk

**Aspect:** Both | **Depth:** Predictive (CV4) | **Predictions:** 5/5 confirmed

---

## The 4 Concrete Next Steps

### Step 1 (5 min): Telemetry Logging in CLAUDE.md

Add instruction: after any discipline command, append telemetry values to `devdocs/telemetry_log.md`. Optional user rating (good/acceptable/poor). This starts Phase 0 of the bootstrap. Zero infrastructure.

### Step 2 (15 min): Change Log Sections in Critical Files

Add `## Change Log` to: sensemaking.md, wayfinding.md, comprehend.md, inquiry.md. Each entry: date, what changed, WHY (reference to devdocs analysis). In-file defense against uninformed AI edits.

### Step 3 (5 min): Pre-Edit Git Check in CLAUDE.md

Add instruction: before editing thinking_disciplines/ or discipline commands, check `git log --oneline -5 <file>`. Don't remove sections without understanding their origin.

### Step 4 (5 min): Initialize telemetry_log.md

Create the file. Seed with baseline entries from this session.

---

## What Each Step Prevents

| Step | Prevents |
|---|---|
| Telemetry logging | Quality invisible between sessions |
| Change logs | Uninformed AI stripping additions |
| Pre-edit git check | Edits without context |
| Log initialization | Cold start problem |

## What's Handled Later

| Risk | When |
|---|---|
| User-directed regression | User's own understanding (built this session) |
| Slow trend degradation | Periodic human review of log (after 10+ runs) |
| Automated regression detection | Phase 1-2 of bootstrap (after calibration) |

## Key Insight

The simplest protections (CLAUDE.md instructions, change log sections) are the most immediately effective. The sophisticated bootstrap model is the long-term answer, but two lines in CLAUDE.md protect against the most common regression paths RIGHT NOW.
