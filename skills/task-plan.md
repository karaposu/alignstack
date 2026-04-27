# /task-plan — (Two-Phase)

Generate a step a step implementation plan for given task desc 

## Additional Input/Instructions

$ARGUMENTS

## Instructions

### Phase 0: Resolve Which task desc to base the implemenation plan (if it is not stated clearly and explicitly)

unless it is not clearly stated do this :
Use your understanding of the already developed context or given Additional Input/Instructions (can be about codebase workspace, or past conversation regarding this topic etc) to interpret what is the relevant desc markdown file,
 
If multiple descs/tasks are referred in past recent messages (check last 4,5 messages)  — present them as a numbered list and ask the user to confirm which one to create the implement the plan . Do NOT proceed until the user confirms.

**If only one task/desc exists** — show the user which plan you found and ask for a quick confirmation before proceeding.







Phase 1:
Understand the given task desc in detail. Understand what it tries to achieve by not just code but also using project context, or any bug/fix context as well. 

First think and understand all the steps that need to be done. Once it is clear and in harmony. 

Start creating step_by_step_impl_plan.md in same folder in such way:


## Top-Level Structure
Start the plan with these sections before any steps:

### What is the task
One paragraph explaining WHAT we're trying to achieve and WHY.
Not the steps — the intent.

### How this implementation moves toward desired state
Explain how the series of changes transforms the current state
into the desired state. The bridge between the problem (desc.md)
and the solution (steps).
### High-Level Summary

A table with one row per step — step number, short description,
and expected output. The reader should understand the full shape
of the plan in 30 seconds.
| Step | Description | Expected Output |
|------|-------------|-----------------|
| 1    | ...         | ...             |
---

## Per-Step Structure

Each step has:

### Proposed changes

Freestyle explanation of what this step does. Can be long or
short depending on complexity. Include file paths and code
snippets where helpful.

### Output

What concretely exists after this step that didn't before.
A new file, a changed column, a wired connection. Specific
and verifiable.

### Safe in nature
True or False. True means this step cannot break existing
functionality. False means it touches existing behavior and
requires care.

### Peripheral concepts
What other concepts in the codebase this change touches.
Listed inline, not one per line.
Example: async_sessionmaker, Storage facade, tool closures, session lifecycle


### Hardness Lvl
1 to 5. Sets expectations for complexity and review attention.


Create step_by_step_impl_plan.md in relevant devdocs folder (same folder as our desc files, probably under devdocs/scoped but it can be in other folders too )