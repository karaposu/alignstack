# DevDocs Lifecycle Management — Sensemaking Analysis

## SV1 — Baseline Understanding

The devdocs system works brilliantly for planning-before-coding
but has a lifecycle problem: docs accumulate forever. Old docs
(completed fixes, superseded plans, stale analyses) bloat the
context space and can mislead AI in future sessions. The question
is how to archive them without losing cross-references, without
colliding names, and without adding manual overhead.

---

## Phase 1 — Cognitive Anchor Extraction

### Constraints

- C1: DevDocs is the primary context source for AI — stale docs
  poison future sessions with wrong assumptions
- C2: Some "old" docs contain wisdom that's still relevant (the
  WHY behind decisions, rejected alternatives, edge case notes)
- C3: Archiving by moving files breaks any cross-references in
  other docs that link to the moved path
- C4: The developer should not need to manually mark things as
  "done" — it's forgotten, it's overhead, it bloats context
- C5: Fix numbers are sequential but not ordered by importance —
  Fix 12 might be done while Fix 11 is still pending
- C6: The archive folder already exists but has no structure
- C7: Devdocs folder is gitignored — it's per-developer, not
  shared across the team

### Key Insights

- K1: The problem isn't archiving — it's **staleness detection**.
  "Is this doc still relevant?" is the hard question. Moving it
  is the easy part.
- K2: Metadata (date, branch, commit) helps with staleness but
  doesn't answer "is this done?" — a doc from yesterday could be
  done, a doc from 6 months ago could still be pending.
- K3: The AI can determine staleness by cross-referencing docs
  against the actual codebase. "Does Fix 12's described problem
  still exist in the code?" is answerable by grep/search.
- K4: DevDocs has two fundamentally different types:
  - **Transient**: fix plans, implementation steps, critics —
    valuable during implementation, noise afterward
  - **Persistent**: architecture decisions, sensemaking analyses,
    design principles — valuable indefinitely
- K5: The freestyle/cross-context nature means a fix might
  reference an enhancement which references an auth decision.
  Archiving one piece can orphan references in others.

### Structural Points

- S1: Current structure: `devdocs/fixes/{N}/`, `devdocs/enhancements/`,
  `devdocs/auth/`, `devdocs/archaeology/`, `devdocs/roadmaps/`
- S2: Archive currently: `devdocs/archive/` with timestamped
  subfolders (ad hoc structure)
- S3: The "12-done" rename pattern pollutes the active namespace
  but is simple and grep-friendly
- S4: A slash command (`/devdocs-archive`) could run in a fresh
  AI session with no project context needed — just devdocs +
  codebase access

### Foundational Principles

- F1: The devdocs system's value is as a **live mental model** —
  it must reflect current reality, not historical states
- F2: Archiving should be **zero-effort for the developer** during
  normal work — it's a maintenance task, not a development task
- F3: The archive should be **recoverable** — moving to archive
  shouldn't delete information, just move it out of the active
  context window

### Meaning-Nodes

- M1: "Staleness" is the core concept — not age, not completion,
  but relevance to current codebase state
- M2: The archive is a **context management tool**, not a filing
  system. Its purpose is to keep the AI's context window clean.
- M3: The tension is between **preserving wisdom** (why decisions
  were made) and **reducing noise** (outdated implementation
  details)

### SV2 — Anchor-Informed Understanding

The problem reframes: it's not "how to structure the archive
folder" — it's "how to detect staleness and separate persistent
wisdom from transient implementation details." The archive
structure is secondary to the detection mechanism. The ideal
system: AI scans devdocs, checks each against the codebase,
moves stale transient docs to archive, and leaves persistent
wisdom in place.

---

## Phase 2 — Perspective Checking

### Technical / Logical

The metadata hook idea (auto-inject date, branch, commit) provides
a creation timestamp but not a completion signal. However,
combined with codebase analysis, it's powerful:

```
Doc says: "Make message_id nullable on ToolCallModel"
Codebase shows: message_id is already nullable
→ Conclusion: this fix is done → archive candidate
```

The AI doesn't need the developer to mark it done — it can
**infer** completion by comparing the doc's described changes
against the actual code.

**New anchor:** Staleness is detectable by AI through
doc-vs-code comparison, not through manual status tracking.

### Human / User

The developer doesn't want to think about archiving during
creative work. The ideal: finish a fix, move on, and periodically
(weekly? before a release?) run a cleanup command that handles it.

**New anchor:** Archiving should be a periodic batch operation,
not a per-task overhead.

### Strategic / Long-term

As the project grows, the devdocs accumulate faster. 270+ docs
today, potentially 500+ in 6 months. The archive system needs to
scale. Flat archive folders become unsearchable.

**New anchor:** The archive needs enough structure to be findable
but not so much that it mirrors the active devdocs tree.

### Risk / Failure

- False positive: AI archives a doc that's still relevant →
  developer can't find it, loses context
- False negative: AI keeps a stale doc → pollutes future sessions
- Reference breakage: doc A references doc B, B is archived, A
  now has a broken link

**New anchor:** Archiving should be reversible and the AI should
report what it archived (with reasoning) so the developer can
object.

### Resource / Feasibility

A `/devdocs-archive` slash command that:
1. Opens a fresh AI session (no project context bloat)
2. Reads all devdocs
3. For each doc, checks the codebase for completion signals
4. Moves stale docs to archive
5. Reports what was archived and why

This is feasible — the AI has all the tools (read files, grep,
glob). The question is accuracy of staleness detection.

### SV3 — Multi-Perspective Understanding

The solution emerges as a **two-layer system**:

Layer 1: Metadata (auto-injected at creation) — provides age,
origin, and context for archiving decisions.

Layer 2: AI-driven staleness detection (periodic command) —
compares docs against codebase reality to determine what's done.

The archive doesn't need perfect structure — it needs to be
searchable (by date, by topic) and recoverable (developer can
pull something back). The key insight: **the AI is the archiver,
not the developer.**

---

## Phase 3 — Ambiguity Collapse

### Ambiguity 1: What counts as "stale"?

**Resolution:** A doc is stale when ALL of these are true:
- It describes a specific change (fix, enhancement, plan)
- That change is reflected in the current codebase
- No future work depends on it being in active devdocs

A doc is NOT stale when:
- It contains architectural reasoning (WHY decisions were made)
- It contains rejected alternatives (prevents re-exploring)
- Other active docs reference it
- It describes future/planned work not yet done

**What is now fixed?** Staleness = "described change exists in
code AND no active doc references it."

**What is no longer allowed?** Age-based archiving (a 6-month-old
sensemaking doc is still relevant). Pure status-based archiving
(marking things "done" manually).

**What now depends on this?** The `/devdocs-archive` command
needs both code-checking AND reference-checking capabilities.

**What changed?** The archive decision is a compound check, not
a single signal.

### Ambiguity 2: How to structure the archive?

**Resolution:** Date-prefixed flat folders with original path
embedded in the folder name.

```
devdocs/archive/
├── 2026-03-30_fixes_12/       ← was devdocs/fixes/12/
│   ├── desc.md
│   └── ...
├── 2026-03-30_fixes_1/        ← was devdocs/fixes/1/
├── 2026-04-01_enhancements_repository_refactor/
└── ...
```

**Why date-prefixed:** Sorted chronologically by default. No
collision — even if two "12" folders exist, they'd have different
dates.

**Why original-path-embedded:** `2026-03-30_fixes_12` tells you
exactly where it came from. No need for a mapping file.

**What is now fixed?** Archive naming convention. No collisions,
no mirroring, findable by date and origin.

**What is no longer allowed?** Mirroring the full devdocs tree.
Numeric-only folders. Flat dump without origin info.

### Ambiguity 3: What about cross-references?

**Resolution:** The `/devdocs-archive` command checks for
incoming references before archiving. If doc A is a candidate
but doc B (still active) references it, doc A stays. If both A
and B are candidates, both move together.

**What is now fixed?** Reference integrity check before archiving.

**What is no longer allowed?** Archiving a doc that's referenced
by an active doc.

### Ambiguity 4: Metadata hook — what to include?

**Resolution:** Minimal metadata header auto-injected on devdoc
creation:

```yaml
---
created: 2026-04-01
type: fix | enhancement | sensemaking | architecture | plan
relates_to: fixes/16, auth
---
```

**Why `type`:** Distinguishes transient (fix, plan) from
persistent (sensemaking, architecture). Archiving logic treats
them differently — transient docs are archived when done,
persistent docs are kept unless superseded.

**Why `relates_to`:** Explicit cross-references. The archive
command can check these before moving.

**What is NOT included:** branch, commit, author — these add
noise without helping staleness detection. Git history already
has this. Status field ("done"/"pending") — this is what we're
trying to avoid maintaining manually.

### SV4 — Clarified Understanding

The system has three components:

1. **Metadata hook** — auto-injects `created`, `type`,
   `relates_to` on devdoc creation. ~3 fields, minimal overhead.

2. **`/devdocs-archive` command** — periodic AI-driven cleanup:
   - Reads all devdocs with metadata
   - For each transient doc (fix, plan), checks codebase for
     completion signals
   - Checks cross-references for incoming links
   - Moves stale, unreferenced transient docs to archive
   - Leaves persistent docs (sensemaking, architecture) in place
   - Reports what was archived with reasoning

3. **Archive folder** — date-prefixed with origin path embedded.
   Searchable, no collisions, recoverable.

---

## Phase 4 — Degrees-of-Freedom Reduction

### Fixed Variables

- Archive naming: `{date}_{original_path_underscored}/`
- Metadata fields: `created`, `type`, `relates_to`
- Staleness check: code comparison + reference check
- Persistent doc types: sensemaking, architecture, archaeology
- Transient doc types: fix, enhancement, plan, critic

### Eliminated Options

- Manual "done" marking — eliminated (developer overhead)
- Age-based archiving — eliminated (age ≠ staleness)
- Mirror structure in archive — eliminated (unnecessary complexity)
- Branch/commit in metadata — eliminated (git has this)
- Automatic archiving on every session — eliminated (too aggressive,
  risk of false positives)

### Remaining Viable Path

Developer creates devdocs normally. Metadata is auto-injected
(or added by the AI when creating docs via slash commands).
Periodically, developer runs `/devdocs-archive`. AI scans,
detects, moves, reports. Developer reviews the report and
retrieves any false positives.

### SV5 — Constrained Understanding

The solution is a **lazy garbage collector for devdocs**:

- No real-time tracking of doc status
- No developer overhead during development
- Periodic collection pass by AI
- Conservative (only archives when confident)
- Reversible (archive is organized, retrievable)
- Self-documenting (reports reasoning for each archive decision)

---

## Phase 5 — Conceptual Stabilization

### SV6 — Stabilized Model

**The devdocs lifecycle is: create → use → forget → collect.**

The developer creates docs during planning (desc.md, plan,
critic). Uses them during implementation. Forgets about them
when done (no manual cleanup). Periodically, the AI collector
runs and moves completed work to the archive.

**Key design decisions:**

1. **Staleness is inferred, not declared.** The AI checks "does
   the codebase reflect what this doc describes?" — not "did the
   developer mark this done?"

2. **Archive when the work is done — all of it.** Plans,
   reasoning, sensemaking, critics — everything related to a
   completed piece of work moves together. The archive preserves
   the full decision trail.

3. **Three states, signaled by folder structure:**
   - **`devdocs/{topic}/`** — active work (in progress)
   - **`devdocs/{topic}/future/`** — planned, not started yet.
     Stays under its parent topic so the AI sees it alongside
     related active work. Influences current decisions (e.g.,
     knowing about v3 parallelism influenced run_id threading).
     When work starts: `mv future/1/ ../17/` — stays in the
     same parent.
   - **`devdocs/archive/`** — completed work → `archive/{date}_{topic}/`

   The archive is ONLY for done work. Future plans live under
   `{topic}/future/` — close to related active work, naturally
   discovered, and part of the project vision the AI should know.

   Example structure:
   ```
   devdocs/
   ├── fixes/
   │   ├── 9/                  ← active (pending)
   │   ├── 16/                 ← active (just implemented)
   │   └── future/
   │       └── 1/              ← SQL pre-filtering (after Fix 16)
   ├── enhancements/
   │   └── future/
   │       └── parallel_filler_subagents/
   ├── agent_parallelism/      ← whole topic is future
   ├── auth/                   ← active
   ├── roadmaps/               ← always active
   ├── archaeology/            ← always active
   └── archive/                ← completed work only
       ├── 2026-04-01_fixes_12/
       ├── 2026-04-01_fixes_2/
       └── 2026-03-30_archaeology/
   ```

4. **No type classification needed.** Docs don't need to be
   tagged as "fix" vs "sensemaking" vs "architecture." Types
   overlap, they're fluid, and classifying them adds overhead
   without value. The only question is: "is the work this doc
   relates to done?" If yes → archive. If no → keep.

4. **Archive as a unit, not per-file.** When auth is done,
   ALL of `devdocs/auth/` moves to archive together — the
   sensemaking, the possibilities, the critic, the plan. They
   form a coherent unit of completed work.

5. **The archive is a dated, labeled dump.** Not a mirror of
   devdocs. Each folder says when it was archived and where it
   came from: `archive/2026-04-01_auth/`. Searchable, no
   collisions, recoverable.

6. **Cross-reference check before archiving.** If doc A is done
   but doc B (still active) references it, A stays until B is
   also done. Then both move together.

7. **The collector is conservative and transparent.** It reports
   what it plans to archive and why. The developer reviews before
   confirming.

**How this differs from SV1:**

SV1 framed the problem as "how to structure the archive folder."
SV6 reframes it as "how to detect staleness and automate the
archive decision." The folder structure is trivial (date +
origin path). The real insight: **the AI is the archiver** — it
compares docs against codebase reality, detects completion, and
proposes what to move. No manual status tracking, no type
classification, no metadata hooks required.

---

## Implementation Sketch

### `/devdocs-archive` Slash Command

```
For each folder/topic in devdocs/ (excluding archive/):
  1. Read all docs in the folder
  2. Extract what changes/work the docs describe
  3. Check codebase: is this work reflected in the code?
  4. Check other active devdocs: does any active doc reference
     this folder's docs?
  5. If work is done AND no active references → CANDIDATE
  6. Report all candidates with reasoning
  7. On developer confirmation:
     move to archive/{date}_{folder_name}/
```

No type detection. No metadata parsing. Just: "does the code
match what these docs describe?" Yes → archive. No → keep.

**Folders to never touch:**
- `archive/` — already archived
- `*/future/` — planned work, not candidates
- `roadmaps/` — always active reference
- `archaeology/` — always active (unless being regenerated)

### Metadata Hook (recommended for teams)

Auto-injected on every devdoc write. Helps the AI (and humans)
understand provenance without parsing git history:

```yaml
---
created: 2026-04-01
updated: 2026-04-01
author: enes.kuzucu
branch: feature/auth-oauth
---
```

- `created` / `updated` — refresh on each write
- `author` — who last touched it (matters in teams)
- `branch` — which feature branch, helps staleness detection
  ("branch merged + code exists = done")

No `type`, no `status`, no `relates_to`. The AI reads the doc
content to understand what it's about. These fields are just
provenance — who, when, where.

For solo development, metadata is optional — the AI can infer
enough from content + codebase. For team work, it's essential
for attribution and context.

### What To Archive From Current State

| Folder/Doc | Archive? | Reasoning |
|------------|----------|-----------|
| `auth/` | Not yet | Steps 5-8 done, but Drive fix (step 7 output creation) not tested yet |
| `fixes/2/` | Yes | ModelFactory injection — done in codebase |
| `fixes/3/` | Yes | Dead code removal — done |
| `fixes/4/` | Yes | Shared text-cloning helpers — `_clone_text_utils.py` exists |
| `fixes/5/` | Yes | Schema versioning — `validate_schema_version` exists |
| `fixes/8/` | Yes | Separate model configs — env vars exist |
| `fixes/9/` | No | Subagent timeout — still pending, updated this session |
| `fixes/12/` | Yes | Observability wiring — superseded by Fix 18, implemented |
| `fixes/16/` | No | Template → DB — just implemented, still testing |
| `fixes/18/` | No | Observability — just implemented, still testing |
| `archaeology/` | No | Active reference material |
| `roadmaps/` | No | Active planning |