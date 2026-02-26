# /task-plan — Generate Step-by-Step Implementation Plan

Generate a detailed implementation plan for the feature described in the input. This plan becomes the single source of truth for execution.

## Input

$ARGUMENTS

## Instructions

### Step 0: Resolve Which Feature to Plan

Before generating anything, determine which feature description this plan is based on:

1. **If the input is a file path** — use that directly.
2. **If the input is ambiguous or empty** — look at the project's existing `devdocs/` folder structure and scan for `desc.md` files. List every feature found with its name and path.
3. **If multiple features exist** — present them as a numbered list and ask the user to confirm which one to plan for. Do NOT proceed until the user confirms.
4. **If only one feature exists** — show the user which feature you found and ask for a quick confirmation before proceeding.

**Only after the user confirms**, continue to Step 1.

### Step 1: Read and Analyze

1. Read the confirmed `desc.md` file (or input) fully.
2. Thoroughly read all relevant code files in the codebase to understand:
   - Existing patterns and conventions
   - Module interfaces and dependencies
   - Where the new code will live
   - What existing code will be touched
3. Think deeply before writing. Use extended thinking to reason through the implementation.
4. Create a `step_by_step_plan.md` in the same directory as the `desc.md`.

## Output Format

The `step_by_step_plan.md` must contain:

### High-Level Summary
Bullet-point overview of the implementation approach (5-10 bullets max). Someone should be able to read just this section and understand the plan.

### Full Implementation Plan
For each step:
- **Step N: [Title]**
  - What to do (specific files, functions, changes)
  - Why (rationale for this approach)
  - Dependencies (what must exist before this step)
  - Acceptance criteria (how to verify this step is done)

### Files to Modify/Create
List every file that will be touched, with a one-line description of the change.

## Guidelines

- Be specific. "Update the API" is useless. "Add `POST /api/features` endpoint in `src/routes/features.ts`" is useful.
- Follow existing codebase conventions — don't introduce new patterns unless necessary.
- Order steps so each builds on the previous. No circular dependencies.
- Keep the plan implementable in a single session where possible. If it's too large, note where to split.
