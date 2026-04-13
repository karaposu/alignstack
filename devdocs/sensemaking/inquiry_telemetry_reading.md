# Sensemaking: How to Make Inquiry Read Telemetry

## SV6 — One edit to one file

### What to change

**File:** `commands/inquiry.md`
**Section:** RESUME → step 3 (file scanning)

### Current (3 lines)

```
Check which pipeline steps are complete by scanning for files:
  - sensemaking.md exists? → sensemaking done
  - innovation.md exists? → innovation done
  - critique.md exists? → critique done
```

### Replacement: telemetry-reading procedure

For each expected discipline output file:

1. **File exists?** If no → step not done
2. **Read telemetry section** by known header:
   - Sensemaking: `## Saturation Indicators (Telemetry)`
   - Innovation: `## Mechanism Coverage (Telemetry)`
   - Critique: `### Convergence Telemetry`
   - Comprehend: `### Final Summary`
3. **Extract key metrics** from the section
4. **Compare to thresholds:**

| Discipline | Thresholds |
|---|---|
| Sensemaking | perspectives ≥3 new anchors, ambiguity ≥70%, SV delta significant |
| Innovation | generators ≥1, framers ≥1, at least one survivor tested |
| Critique | critical dimensions covered, adversarial not weak, ≥1 verdict |
| Comprehend | depth test passed at target, prediction accuracy at target |

5. **Route:**
   - All met → PROCEED
   - Some below → FLAG with specific guidance
   - Critical failure → RE-RUN with feedback
   - No telemetry section → PROCEED (backward-compatible)

### What stays the same

Everything else in inquiry: CONFIGURE, wayfinding checkpoint, SYNTHESIZE, cross-session resume. All unchanged.

### Why thresholds live in inquiry

Inquiry is a prompt, not code. The AI reads one file. Thresholds need to be there. ~15 lines covering 4 disciplines. Updated rarely.
