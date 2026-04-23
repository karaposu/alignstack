# Structural Sensemaking: Primitive RC Tool Implementation Logic

## User Input
Explain this tool usage logic for Primitive RC in clear implementable manner.

Context: Through prior inquiry (reflect_as_primitive_rc), we established that Primitive RC is mechanical text checking (sections exist, counts met, fields present). The user proposed: make it a tool (bash script), and let disciplines call it to self-check. This sensemaking clarifies exactly how that works.

---

## SV1 — Baseline Understanding

Primitive RC should be a callable tool — a bash script that greps discipline output for required sections and returns pass/fail. Disciplines call it before saving (to self-fix), the checkpoint calls it after saving (to verify), and /reflect can call it post-loop (to analyze patterns). One tool, three callers, each at a different point in the pipeline.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

**C1 — The system runs on markdown specs executed by an LLM.** There is no application code. Disciplines are `.md` files in `commands/` that instruct the LLM what to do. The LLM has access to Bash, Read, Write, and other tools.

**C2 — The LLM can call bash scripts.** The Bash tool is available during discipline execution. A structural check script can be called via `Bash("bash tools/structural_check.sh ...")`.

**C3 — Hooks infrastructure already exists.** The project has `hooks/devdocs_metadata_appender.sh` — a bash script that runs as a PreToolUse hook. So bash-based tooling is already a pattern in this project.

**C4 — Structural requirements are discipline-specific.** Sensemaking must have SV1-SV6 and ambiguity collapse. Innovation must have at least 1 generator + 1 framer. Critique must have prosecution + defense + verdict. Each discipline has different requirements.

### Key Insights

**K1 — The tool is just a grep wrapper.** It takes a file, checks for patterns (headings, sections, counts), and outputs results. No intelligence needed. A ~50 line bash script.

**K2 — Three callers, three purposes, one tool.**
- Discipline calls it after saving → purpose: self-fix
- Checkpoint calls it after discipline completes → purpose: verify
- /reflect calls it post-loop → purpose: analyze patterns

**K3 — The structural requirements must be machine-readable.** The patterns to check must be defined somewhere the tool can parse.

**K4 — The tool's output must be structured.** PASS/FAIL per check, so the discipline knows what to fix and /reflect knows what to analyze.

### Structural Points

**S1 — Three components to build:**
1. The structural requirements definitions (what to check per discipline)
2. The checking tool (the script)
3. The calling instructions (additions to discipline and loop runner specs)

**S2 — Requirements should live in a centralized file, not distributed across discipline specs.** The tool needs to parse them; one file is simpler to parse than extracting sections from multiple markdown specs.

### Foundational Principles

**F1 — The tool checks structure, not quality.** "Does the section exist?" not "Is the section good?" Enforced by implementation: the tool only does grep/regex.

**F2 — Same tool, different timing, different actions.** The tool always produces the same output for the same input. What differs is when it's called and what the caller does with the results.

### Meaning-Nodes

**M1 — The tool IS the Primitive RC mechanism.** Everything else (checkpoint display, /reflect integration, spec instructions) is wiring.

---

## SV2 — Anchor-Informed Understanding

Three concrete things need to be built: (1) a requirements format, (2) a bash script, (3) additions to discipline specs and loop runner specs that call the script. The tool itself is trivially simple — the design work is in the requirements format and the calling pattern.

---

## Phase 2 — Perspective Checking

### Technical/Logical

The tool is ~50 lines of bash. It reads a requirements file, finds the section for the given discipline, greps the output file for each pattern, prints PASS/FAIL per check, exits with failure count as exit code.

New anchor: **The hardest part isn't the tool — it's defining the right checks per discipline.**

Technical wrinkle: checking happens after saving. The discipline saves output with Write, then calls the tool on the saved file via Bash. If violations exist, the discipline uses Edit to fix them. Simple flow, no temp files.

### Human/User

The user's mental model: "each discipline calls a tool to check itself." Clean and intuitive. The checkpoint and /reflect layers are invisible during normal operation. The user sees: discipline output is structurally correct because the discipline checked its own work.

New anchor: **The primary caller is the discipline itself. Checkpoint and /reflect are secondary layers.**

### Risk/Failure

Risk: discipline might ignore the tool's output (LLM calls it, sees failures, doesn't fix). Checkpoint catches this.

Risk: requirements too strict → false positives on intentional adaptations. Calibrated over time.

Risk: fragile pattern matching ("## Phase 3 — Ambiguity Collapse" vs "## Phase 3: Ambiguity Collapse"). Solution: use regex patterns, not exact strings.

New anchor: **Requirements should use flexible regex patterns to handle formatting variation.**

### Definitional/Consistency

A bash script tool is infrastructure, not a discipline — consistent with "Primitive RC is infrastructure." The discipline CALLS the tool, but the tool itself is a utility.

---

## SV3 — Multi-Perspective Understanding

The implementation is simpler than expected. The tool is short. The real design decisions: (1) requirements format and location, (2) how calling instructions integrate into discipline specs without cluttering them, (3) how the checkpoint displays results.

---

## Phase 3 — Ambiguity Collapse

### Ambiguity: Where do structural requirements live?

**Resolution:** In a single dedicated file: `tools/structural_requirements.md`.

Counter (co-locate in each discipline spec): fails because the bash tool needs to parse requirements. Extracting a section from each of 5+ discipline markdown specs is more complex than reading one centralized file.

**What is now fixed:** One file, one format, one place to maintain.

**What is no longer allowed:** Embedding machine-readable requirements inside discipline spec prose.

### Ambiguity: Does the discipline check before or after saving?

**Resolution:** After saving. Discipline saves with Write, calls tool on saved file, fixes with Edit if needed.

Counter (check before saving): requires piping content or temp files. Unnecessary complexity.

**What is now fixed:** Save → check → fix if needed → continue.

### Ambiguity: What does the tool output?

**Resolution:** Simple line-per-check format:

```
[PASS] SV1 baseline understanding
[FAIL] Ambiguity collapse section
---
RESULT: 3/4 passed, 1 failed.
```

**What is now fixed:** PASS/FAIL prefix, human-readable label, summary line. Exit code = failure count.

### Ambiguity: Who calls the tool?

**Resolution:** Two mandatory callers:
1. Each discipline (self-fix) — instruction added to discipline specs
2. MVL/MVL+ checkpoint (verify) — instruction added to loop runner specs

One optional caller:
3. /reflect (pattern analysis) — Phase 2

---

## SV4 — Clarified Understanding

Primitive RC is a bash script (~50 lines) that greps discipline output for required sections. Requirements defined in one centralized file. Disciplines call the tool after saving and fix violations. Checkpoint calls the same tool to verify.

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed:
- Tool is a bash script: `tools/structural_check.sh`
- Requirements live in: `tools/structural_requirements.md`
- Tool takes: `<file_path> <discipline_name>`
- Tool outputs: `[PASS]`/`[FAIL]` per check, summary, exit code = failure count
- Disciplines call tool after saving, fix violations, re-save
- Checkpoint calls tool after discipline completes, displays results

### Eliminated:
- Requirements inline in discipline specs
- Draft/temp file pattern
- JSON output format
- Severity levels (add later if needed)
- /reflect calling the tool directly (Phase 2)

---

## SV5 — Constrained Understanding

The implementation is three files and a set of spec edits:

**File 1:** `tools/structural_requirements.md` — requirements per discipline
**File 2:** `tools/structural_check.sh` — the bash script
**Spec edits:** One instruction added to the end of each discipline spec + checkpoint enhancement in MVL/MVL+

---

## SV6 — Stabilized Model

### The Complete Implementation

**1. The Requirements File** (`tools/structural_requirements.md`)

```markdown
## sensemaking
- "## SV1" | SV1 baseline understanding
- "## SV6" | SV6 stabilized model
- "Ambiguity Collapse" | Ambiguity collapse section
- "Saturation Indicators" | Saturation indicators telemetry

## innovation
- "## Mechanism" | At least one mechanism section
- "## Assembly Check" | Assembly check section
- "Mechanism Coverage" | Mechanism coverage telemetry

## critique
- "Prosecution" | Prosecution section
- "Defense" | Defense section
- "Verdict" | Verdict section
- "Convergence Telemetry" | Convergence telemetry

## exploration
- "## Cycle" | At least one exploration cycle
- "Convergence" | Convergence assessment
- "Confidence" | Confidence map

## decomposition
- "Coupling" | Coupling topology
- "Question" | Question tree
- "Interface" | Interface map
- "Self-Evaluate" | Self-evaluation
```

Format: `"grep pattern" | human-readable label`

**2. The Tool** (`tools/structural_check.sh`)

```bash
#!/bin/bash
# Primitive RC — structural check tool
# Usage: bash tools/structural_check.sh <output_file> <discipline_name>
# Returns: [PASS]/[FAIL] per requirement, exit code = failure count

FILE="$1"
DISCIPLINE="$2"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REQS_FILE="$SCRIPT_DIR/structural_requirements.md"

if [ ! -f "$FILE" ]; then
  echo "[ERROR] File not found: $FILE"
  exit 99
fi

PASS=0; FAIL=0
in_section=false

while IFS= read -r line; do
  if [[ "$line" =~ ^##[[:space:]]+(.*) ]]; then
    section_name="${BASH_REMATCH[1]}"
    if [[ "$section_name" == "$DISCIPLINE" ]]; then
      in_section=true
    else
      in_section=false
    fi
    continue
  fi

  if $in_section && [[ "$line" =~ ^-[[:space:]]+\"(.*)\"[[:space:]]*\|[[:space:]]*(.*) ]]; then
    pattern="${BASH_REMATCH[1]}"
    label="${BASH_REMATCH[2]}"
    if grep -q "$pattern" "$FILE" 2>/dev/null; then
      echo "[PASS] $label"
      ((PASS++))
    else
      echo "[FAIL] $label"
      ((FAIL++))
    fi
  fi
done < "$REQS_FILE"

echo "---"
echo "RESULT: $PASS passed, $FAIL failed."
exit "$FAIL"
```

**3. The Calling Pattern**

Each discipline spec gets this appended:

```
## Structural Self-Check
After saving your output, run the structural check:
  bash tools/structural_check.sh <saved_file_path> <discipline_name>
If any [FAIL] lines appear, fix the missing sections in your output and re-save.
```

The MVL/MVL+ checkpoint adds:

```
After each discipline saves, call:
  bash tools/structural_check.sh <output_file> <discipline>
Include in checkpoint display:
  ── Checkpoint ──────────────────────────────
  [Previous discipline] complete.
    [telemetry metrics]
    Structural: N/M checks passed
  Proceeding to [Next discipline]...
  ─────────────────────────────────────────────
```

**4. The Complete Flow**

```
Discipline executes (produces output)
    ↓
Discipline saves output (Write tool)
    ↓
Discipline calls structural_check.sh (Bash tool)
    ↓
If failures → discipline fixes output (Edit tool) → re-checks
    ↓
Checkpoint calls structural_check.sh (verification)
    ↓
Checkpoint displays: "Structural: 4/4 passed" or "Structural: 3/4 passed (FAIL: Ambiguity collapse)"
    ↓
Next discipline begins
```

**How SV6 differs from SV1:** SV1 described the concept abstractly ("a callable tool, three callers"). SV6 provides the exact files, formats, scripts, calling instructions, and flow. Someone could implement this from SV6 alone.

### Saturation Indicators

- **Perspective saturation:** 4 perspectives checked. All converged on the same implementation. No new types of anchors emerging.
- **Ambiguity resolution ratio:** 4/4 resolved. None dropped.
- **SV delta:** Significant — from abstract concept to complete implementation spec with files, formats, and calling patterns.
- **Anchor diversity:** Constraints (4), insights (4), structural (2), principles (2), meaning-nodes (1), plus perspective-generated anchors across 4 perspectives.
