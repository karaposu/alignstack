# Sensemaking: Why Did Comprehend Fail to Catch the Quantity-vs-Quality Problem?

## SV6 — Paradigm Projection

### What happened

Comprehend modeled the telemetry mechanism (how trend detection works) without questioning telemetry validity (do counts actually measure sensemaking quality?). The user caught it: one deep insight outweighs ten shallow perspectives.

### Why

Comprehend's paradigm: predict → test → measure accuracy. This assumes quality is MEASURABLE. Sensemaking quality is about meaning-depth — not fully reducible to numbers. Comprehend projected its own measurement paradigm onto a meaning domain.

### The structural limitation

Comprehend models HOW things work. It doesn't model WHETHER they measure the right thing. When comprehending a measurement system, it builds a model of the measurement mechanism without questioning the measurement's validity.

### Fixes

1. **Add "Paradigm Projection" as FM#8** to comprehend.md: "Am I assuming this artifact's quality is measurable when it might be judgment-based?"

2. **Auto-generate frontier question for measurement artifacts:** "Does this mechanism measure what it claims to? (Run /sense-making to evaluate.)"

### Broader insight: two kinds of disciplines

| Type | Disciplines | Quality is... | Telemetry captures... |
|---|---|---|---|
| Mechanistic | Comprehend, Exploration, Decomposition | Numeric (prediction accuracy, coverage) | Quality directly |
| Meaning-producing | Sensemaking, Innovation | Judgment-based (depth, significance) | Minimum bars only — NOT depth |

Telemetry-as-numbers works for mechanistic disciplines. For meaning disciplines, telemetry works as floor checks ("at least 3 perspectives") but CANNOT capture whether the understanding was deep or the insight was significant. This is an open design problem.
