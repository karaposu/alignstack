# Exploration: What's Better Than Instant Spec Edits?

## The Better Alternative: Log → Accumulate → SIC on patterns

### Layer 1: After each SIC run (10 seconds)

One sentence logged to `devdocs/improvement_observations.md`:
```
## [date] | [problem] | [iterations]
[what worked / what didn't — one sentence]
```

No spec edits. No instant Baldwin. Just log.

### Layer 2: Periodic improvement SIC (human-triggered)

When the human notices a theme (or every 5-10 runs):
```
/MVL "review improvement observations and propose spec changes"
  → S: reads observations, finds patterns
  → I: generates proposed spec changes per pattern
  → C: evaluates each — safe? evidence-based? helpful?
  → Survivors: proposed changes for human to approve
```

The improvement IS a SIC loop. Same primitive. Applied to its own observations.

### Why this is better

- Single observations = noise. Accumulated patterns = signal.
- Editing from noise degrades the system. Editing from signal improves it.
- The human decides WHEN to review (deliberate, not reactive).
- The review uses SIC (proven mechanism, not a new one).
- Changes go through critique before being applied (safety check).

### Key insight

The one-sentence observation is a COMPRESSION layer. The human compresses a 5-page SIC output into "innovation was too conservative." This compressed data makes the improvement SIC's S step fast and focused. Without it, the improvement SIC would need to process raw outputs (expensive).
