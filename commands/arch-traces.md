# /arch-traces — End-to-End Interaction Traces

Trace every internal interface and submodule-level interaction in the codebase. Follow each execution path end-to-end and document what it does, how data moves, and what's wrong with it.

## Input

$ARGUMENTS

## Instructions

1. Read all code files in the codebase fully. Exclude external packages — focus only on internal interfaces and submodule-level interactions.

2. For each internal interface, follow its execution path end-to-end: what triggers it, what it calls, how data or state moves through the layers, and what the outcome is.

3. Document each flow at a high level — what it corresponds to, what it affects, and why it behaves that way. Base all analysis strictly on actual code behavior, not names or assumptions.

4. Create one file per interaction trace (e.g. `trace_1.md`, `trace_2.md`, etc.).

### Trace File Format

Each trace file must contain:

**Core sections:**
- **Entry Point** — What triggers this interaction
- **Execution Path** — Step-by-step flow through the layers
- **Resource Management** — What resources are acquired, held, released
- **Error Path** — What happens when things fail
- **Performance Characteristics** — Latency, throughput, bottleneck potential
- **Observable Effects** — What changes in the system as a result
- **Why This Design** — Rationale for why it's built this way

**Assessment sections** — for each of the three below, include: the issue itself, an ELI5 (plain-language explanation), Impact on the codebase and overall logic, and Robust Fixes / Best Practices (how to address it properly):
- **What feels incomplete**
- **What feels vulnerable**
- **What feels like bad design**

### Output

Write trace files to `devdocs/archaeology/traces/` (create the directory if needed). If the folder already exists, overwrite all trace files completely — rewrite fresh, don't patch.
