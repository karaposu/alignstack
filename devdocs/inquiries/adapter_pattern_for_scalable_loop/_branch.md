# Branch: Adapter Pattern for Scalable Loop

## Question
How should the adapter pattern (where discipline specs auto-attach as configurations to the SIC loop) be designed so that it works for both human-driven use today AND scales to autonomous multi-headed loops that can branch, self-rerun, and self-improve — without introducing bottlenecks that block either the current or future state?

## Goal
A concrete architecture that:
1. Makes adapters work NOW (practical, implementable today)
2. Doesn't block loop automation (the system can eventually run SIC passes without human typing each command)
3. Supports multi-headed branching (one loop producing multiple paths, each path looped independently)
4. Identifies all bottlenecks and blockers that Options A and B would create for these goals
The user should walk away with a clear architectural direction and know what to build first.
