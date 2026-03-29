
----PREQUISITE OF MAIN TASK----

first before doing anything, please go check if there is a devdocs folder with archaeology subfolder

archaeology subfolder is where we are keeping our codebase warm analysis which is used to load the codebase context and important and mandatory for any codebase relevant analysis or action

expected contents are like this :

devdocs/archaeology/small_summary.md
devdocs/archaeology/intro2codebase.md
devdocs/archaeology/traces/ (e.g., trace_1.md, trace_2.md).

if any of them are not there use the relevant instruction prompt below to run and create them 


# Archaeology instructions:


RULES REGARDING RECREATION:
    (All devdocs files include metatdata about when they are created, if not this info can be found via inspecting file metadata via bash command. )

   - For small_summary, if it exists in devdocs, No need to recreate if it is ot older than 30 days. If it is older we need to recreate and overwrite on it 
   - For intro2codebase, if it exists in devdocs, No need to recreate if it is ot older than 15 days. If it is older we need to recreate and overwrite on it 
   - For traces folder , if it exists in devdocs, No need to recreate if it is ot older than 7 days. If it is older we need to recreate and overwrite on it 

   - Make sure output the state of Archaeology, for example 
          "Archaeology files already exists, I am skipping recreation"
        or 
        "intro2codebase is 18 days old. I am gonna rerun it now before proceeding with the task"
        



## small_summary instruction:

This is an ongoing project. It is currently partially working but on heavy development.
I would like you read all the files and tell me about this project in non technical terms

- Make sure you focus on code files and not existing documentation
- Make sure you read code files fully


And create devdocs/archaeology/small_summary.md


## intro2codebase instructions

Now understand how this codebase designed in terms of

- data flow paths
- main abstractions
- top level design patterns

But talk about these in high level. As if you are introducing the architecture / project to a new engineer.

put this in devdocs/archaeology/intro2codebase.md



## traces instructions:

Identify every internal interface and submodule-level interaction defined within the codebase (excluding external packages). For each interface, follow its execution path end-to-end: what calls it, what it triggers, how data or state moves through the layers, and what outcomes it produces.

Document these flows at a high level, explaining what each interaction corresponds to, what it affects, and why it behaves that way.

Create one file per interaction trace under devdocs/archaeology/traces/ (e.g., trace_1.md, trace_2.md).
Base all analysis strictly on actual code behavior rather than names or assumptions.

Each trace file should have the following sections

Core sections:
  - Entry Point
  - Execution Path
  - Resource Management
  - Error Path
  - Performance Characteristics
  - Observable Effects
  - Why This Design

Assessment sections (each must include an ELI5 explanation, an Impact field, and a Robust Fixes / Best Practices field):
  - What feels incomplete
  - What feels vulnerable
  - What feels like bad design

  for each of the three Assessment sections, include these subsections:
      the issue itself
      an ELI5 (plain-language explanation)
      Impact of it to the codebase and overall logic
      Robust Fixes / Best Practices (how to address it properly)



----MAIN TASK----

Make sure before rephrasing you have the context of the relevant codebase in your context or check devdocs/arhaeology folder and read the contents there.

