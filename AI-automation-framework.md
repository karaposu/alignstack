# AI Automation Framework

## Requirements for AI Automation

For any AI-driven automation to exist, two structural components must be in place: alignment layers that define where automation operates, and pillars that define what conditions must hold at each layer.

---

## The Six Alignment Layers

When you delegate work to AI, any misalignment can only occur at these six layers:

1. **Workspace Alignment** — The environment and context aren't set up correctly
2. **Task Alignment** — The task is not understood well
3. **Action-Space Alignment** — AI doesn't know what action space should be used
4. **Action-Set Alignment** — AI doesn't understand what set of actions is preferable and feasible
5. **Coherence Alignment** — AI doesn't understand how the actions taken disturb existing alignments
6. **Outcome Alignment** — AI doesn't understand how actions taken and expected results are in mismatch

These layers define the dimensions along which automation can be applied. Each layer is independent — automation at one layer does not require automation at all others.

---

## The Four Pillars

> Alignment requires Comparison.

> Comparison requires Measurement.

> Measurement requires Visibility.

> Visibility requires Explicitness.

These four pillars define what we need at each layer to maintain alignment. Applied across all six alignment layers, and combined with iteration, they form the foundation of any automation.

---

## Automation Across Dimensions

Automation does not need to cover all six layers. Most real systems will never be fully automated — real life introduces inputs and outputs that resist full formalization.

A system might automate workspace and task alignment (environment setup, task parsing) while keeping coherence and outcome alignment in human hands. This is normal and expected. The framework does not demand full automation — it defines where automation is possible and where human judgment remains necessary.

Each layer can be automated independently, to the degree that the four pillars can be satisfied at that layer. Where a pillar breaks down, automation stops and human input takes over.

---

## The Feedback Control Loop

The four pillars combined with iteration are a feedback control loop:

1. Make the desired state **explicit** (setpoint)
2. Make the current state **visible** (sensor)
3. **Measure** it (signal)
4. **Compare** current vs desired (error detection)
5. Act on the difference, then **iterate** (feedback loop)

This is the universal structure of every automated system — from a thermostat to a CI/CD pipeline to an autonomous agent.

The six layers define **where** you apply this loop. Things that can't be automated are things where one of the pillars breaks down:

- Can't make it explicit → can't automate (tacit knowledge, intuition)
- Can't make it visible → can't automate (hidden state)
- Can't measure it → can't automate (subjective quality)
- Can't compare it → can't automate (no success criteria)
- Can't iterate → can't automate (irreversible one-shot actions)

The pillars don't just describe what alignment needs — they describe the boundary conditions of automation. If you want to automate something that currently can't be, the pillars tell you exactly which requirement is failing and where to focus.
