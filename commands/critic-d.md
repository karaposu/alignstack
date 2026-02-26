# /critic-d — Dynamic Critic (Two-Phase)

Generate a context-aware critic prompt tailored to a specific implementation plan, save it for review, then execute it. Unlike `/critic`, this doesn't use a generic checklist — it builds a custom one based on your codebase and plan.

## Input

$ARGUMENTS

## Instructions

### Step 0: Resolve Which Plan to Critique

Before doing any analysis, determine which implementation plan you'll be working with:

1. **If the input is a file path** — use that plan directly.
2. **If the input is ambiguous or empty** — look at the project's existing `devdocs/` folder structure and scan for `step_by_step_plan.md` files. List every plan found with its feature name and path.
3. **If multiple plans exist** — present them as a numbered list and ask the user to confirm which one to critique. Do NOT proceed until the user confirms.
4. **If only one plan exists** — show the user which plan you found and ask for a quick confirmation before proceeding.

**Only after the user confirms**, continue to Phase 1.

---

### Phase 1: Generate the Dynamic Critic Prompt

1. Read the confirmed implementation plan fully.
2. Read all relevant codebase files — modules, interfaces, configs, tests — that are referenced in or affected by the plan.
3. Based on the specific context — the technologies used, the architecture, the exact changes proposed — generate a **tailored critic prompt** that targets the real risks for this particular plan.

The generated prompt should:
- Ask questions specific to the frameworks and libraries in use
- Check for patterns in the existing codebase that the plan might violate
- Identify integration points that are unique to this project
- Surface risks that a generic checklist would miss
- Instruct the critic to use the output format below

4. **Save the generated prompt** as `dynamic_critic_prompt.md` in the same directory as the `step_by_step_plan.md`.
5. **Print the generated prompt** in the conversation so the user can read it.
6. Ask the user: *"Here's the dynamic critic prompt I generated. Should I run it now?"*

**Do NOT proceed to Phase 2 until the user confirms.**

---

### Phase 2: Execute the Dynamic Critic Prompt

1. Execute the saved `dynamic_critic_prompt.md` against the implementation plan and codebase.
2. Write the results to `critic.md` in the same directory as the plan.

---

## Output Format (for the generated critic.md)

For each identified risk item, document:

| Field | Description |
|-------|-------------|
| **Risk** | What could go wrong |
| **Category** | Breaking change / Performance / Security / API contract / Schema / Compatibility |
| **Severity** | Low / Medium / High |
| **Impact** | Possible effects if this risk materializes |
| **ELI5** | Non-technical explanation anyone can understand |
| **Affected areas** | Which existing features, modules, or endpoints are affected |
| **Mitigation** (Medium/High only) | Three levels: quick fix, robust fix, long-term fix |

## Metadata

Before writing any file, insert a metadata header at the very top by running `git branch --show-current`, `git rev-parse --short HEAD`, and `git config user.name` to populate:

```
---
created: YYYY-MM-DD
branch: <current branch>
base_commit: <short HEAD commit>
author: <git user.name>
---
```

---

## Guidelines

- Be specific. "This might cause performance issues" is useless. "Adding a full table scan in `getUsers()` on a table with 100k+ rows will degrade response time from ~50ms to ~2s" is useful.
- Only flag real risks. Don't pad the document with low-severity noise that obscures actual problems.
- Every Medium/High risk must have actionable mitigation — not just "be careful."
- The value of this command is the tailored prompt itself — make it sharp and specific, not a rehash of the generic checklist.
