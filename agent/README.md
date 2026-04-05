# AlignStack Agent

A multi-agent development system that operates across three dimensions: six alignment layers, seven intent modes, and three autonomy levels. Six specialized agents — one per layer — work in continuous coordination, each aware not only of its alignment dimension but of what mode it should be operating in. The result is a system that doesn't just monitor alignment — it knows when to explore, when to build, when to innovate, when to diagnose, and when to reflect.

## Two Goals

**1. Measurable, Multi-Modal Alignment**

Current AI development tools treat alignment as invisible and operate in a single mode: generate code. You prompt, the AI generates, and you hope it understood correctly. When it didn't, you find out from the wrong output — after the work is done.

AlignStack Agent makes alignment observable and measurable across six dimensions simultaneously. But more importantly, it recognizes that alignment requires different *postures* at different moments. Understanding a new codebase is fundamentally different from executing a plan, which is different from diagnosing a failure, which is different from innovating a new approach. These are distinct modes of operation, and the system is aware of which mode each agent should be in.

At any moment you can see: workspace is loaded, task is understood, action-space is sufficient, action-set is optimal, coherence is maintained, outcome matches intent. You can also see: Workspace Agent is in maintenance mode, Task Agent is in alignment mode, Action-Space Agent is in innovation mode. Or you can see exactly where it breaks — including mode errors like operating in the wrong mode entirely.

**2. Full Autonomous Building for Long Tasks**

Short tasks (fix a bug, write a function) can tolerate alignment failures because a human reviews the output immediately. Long tasks (build a service, implement a feature across modules, restructure an architecture) cannot. Alignment failures at step 3 compound through steps 4-20 and produce confidently wrong systems.

Long tasks also require mode transitions. A long autonomous run might start in exploration (understand the codebase), move to alignment (plan and build), encounter a dead end that requires innovation (novel approach), hit a bug that triggers diagnosis and recovery, and end with reflection (what happened, what was learned). Single-mode systems can't do this. They're locked in one posture — usually a degraded version of alignment — for the entire run.

AlignStack Agent is designed for long autonomous runs where human review doesn't happen at every step. The six agents provide continuous monitoring, mode-awareness, and mode-switching intelligence that replaces the human-in-the-loop, allowing the system to self-correct, adapt its posture, or halt before compounding errors.

---

## The Three Dimensions

AlignStack Agent operates in a three-dimensional space. This is the core architectural insight.

```
           Layers (WHERE)            ×     Modes (WHY)       ×  Autonomy (HOW)
┌────────────────────────────────┐  ┌───────────────────┐  ┌────────────────┐
│ 1. Workspace                   │  │ 1. Exploration    │  │ 1. Document    │
│ 2. Task (intent/depth/scope)   │  │ 2. Alignment      │  │ 2. Build       │
│ 3. Action-Space                │  │ 3. Innovation     │  │ 3. Hybrid      │
│ 4. Action-Set                  │  │ 4. Diagnostic     │  │                │
│ 5. Coherence                   │  │ 5. Maintenance    │  │                │
│ 6. Outcome                     │  │ 6. Recovery       │  │                │
│                                │  │ 7. Reflection     │  │                │
└────────────────────────────────┘  └───────────────────┘  └────────────────┘
         CONSTANT                        VARIABLE              CONFIGURABLE
     (always all six)              (per-agent, changes       (per-agent, set by
                                    over time via signals)    user or policy)
```

**Layers** define WHERE alignment operates — the six dimensions along which things can go wrong. These are constant. Every task involves all six layers.

**Modes** define WHY the system is operating — the intent that changes how all six layers behave simultaneously. These are variable. They change per-agent, over time, driven by signals. Mode-switching intelligence is the primary differentiator of the system.

**Autonomy** defines HOW the system responds to what it finds — observe and report, act autonomously, or escalate when severity is high. These are configurable per agent and per mode.

Each of the six agents operates at one layer, in one intent mode, at one autonomy level. These can differ per agent and change over time. The agent mesh is a dynamic configuration of six (layer × mode × autonomy) states, coordinated through signals.

---

## The Problem

Current AI coding tools are not lacking in capability. They can explore codebases, generate plans, write code, and sometimes check for issues. The raw ability is there. What's missing is **a philosophy of what development actually is** — a structural understanding of the dimensions, modes, and transitions that make development work.

Without this philosophy, tools operate ad-hoc. They explore when they happen to, plan when prompted, check coherence sometimes, and never reflect. They have workspace awareness (codebase indexing) but no methodology for when to use it. They can generate code but have no model for when generation is the wrong posture — when exploration, innovation, diagnosis, or reflection is what the situation actually demands.

The problem is not missing capabilities. It's **missing structure and methodology.** The same tools, guided by a structural understanding of development, would behave fundamentally differently.

This is the thesis AlignStack is built on: as AI capabilities converge, the differentiator shifts from raw ability to the methodology that guides it. Current tools have the ability. They lack the framework.

**What this looks like in practice:**

Layer-level failures (the tool has the capability but doesn't apply it systematically):
- AI breaks existing features → coherence checking exists but isn't continuous (layer 5)
- AI builds the wrong thing → task understanding is shallow, no depth/scope model (layer 2)
- AI picks a bad approach → approach evaluation is ad-hoc, not structured (layer 3)
- AI generates code in a stale context → workspace awareness exists but isn't monitored (layer 1)
- AI finishes but the result doesn't match intent → no systematic outcome verification (layer 6)

Mode-level failures (the tool has no concept of modes at all):
- AI builds on a codebase it doesn't understand → should be in Exploration, defaults to Alignment
- AI force-fits a known pattern when the problem needs a novel approach → should be in Innovation, stuck in Alignment
- AI keeps building after something broke → should be in Diagnostic, stuck in Alignment
- AI never stops to reflect on what was accomplished → no Reflection mode
- AI lets documentation rot → no Maintenance mode
- AI diagnoses problems but can't fix them → no Recovery mode

The pattern: current tools are **mode-blind and methodology-free**. They have capabilities across multiple layers but no structured philosophy for when and how to apply them. They operate in one posture regardless of what the situation demands. AlignStack Agent provides the missing structure.

---

## The Seven Intent Modes

A mode is not a task. It's a *posture* — it changes what counts as success, what questions to ask, and what constitutes progress across all six layers simultaneously. The six layers are the skeleton. The modes are the nervous system — they determine what the skeleton does.

### 1. Exploration — "What exists here?"

Map unknown territory. Build understanding before acting. Every layer asks "what is?" not "what should be?"

| Layer | Exploration posture |
|-------|-------------------|
| Workspace | What files exist? What's the structure? |
| Task | What does this project do? (not: what should we build) |
| Action-Space | What approaches are currently in use? |
| Action-Set | What's the current implementation doing? |
| Coherence | How do the parts fit together? |
| Outcome | What does this system produce right now? |

**Success criteria:** Understanding — the territory is mapped.
**Pillar emphasis:** Explicitness (pillar 1) — making the implicit known.
**Entry trigger:** Unfamiliar territory, new codebase, missing context.
**Exit trigger:** Territory mapped, understanding established.

### 2. Alignment — "Is this right?"

Navigate known territory correctly. Find the right approach, execute it, verify it. This is the default mode for task execution — and the only mode most current tools have.

| Layer | Alignment posture |
|-------|-----------------|
| Workspace | Is context loaded and fresh? |
| Task | Is intent understood? Is scope clear? |
| Action-Space | Are viable approaches identified? |
| Action-Set | Is the plan optimal? Is sequencing correct? |
| Coherence | Does it break anything existing? |
| Outcome | Does it match the original intent? |

**Success criteria:** Correctness — the right thing, done right.
**Pillar emphasis:** All four in sequence (explicit → visible → measured → compared).
**Entry trigger:** Task is given, territory is known, goal is clear.
**Exit trigger:** Task complete, or landscape-level failure detected (triggers Innovation or Diagnostic).

### 3. Innovation — "What could exist?"

Create new territory. Generate novel approaches, reframe problems, combine concepts from different domains. Activated when the existing landscape is insufficient — when nothing in the known action space fits.

| Layer | Innovation posture |
|-------|------------------|
| Workspace | What new contexts or environments could enable this? |
| Task | What is the *real* problem? (redefining, not just understanding) |
| Action-Space | What approaches *don't exist yet* but should? |
| Action-Set | What novel combinations of known actions are possible? |
| Coherence | What existing coherence should be *deliberately* broken? |
| Outcome | What new success criteria should we adopt? |

**Success criteria:** Viable novelty — something new that survives evaluation.
**Pillar emphasis:** Creating *new* Explicitness (pillar 1, generatively) — making explicit something that wasn't even implicit before.
**Entry trigger:** Existing space insufficient ("nothing fits"), explicit request for novelty.
**Exit trigger:** Novel approach found and validated, or idea rejected as infeasible.

Innovation is not a seventh layer. It's a mode that can activate at any layer. Task innovation redefines the problem. Action-Space innovation invents new approaches. Coherence innovation deliberately breaks old patterns to establish better ones.

### 4. Diagnostic — "What went wrong?"

Find where and why things broke. Localize failures across all layers. Investigative, not corrective — diagnosis identifies, recovery fixes.

| Layer | Diagnostic posture |
|-------|-------------------|
| Workspace | Is context stale, missing, or corrupted? |
| Task | Was the task misunderstood? Where exactly? |
| Action-Space | Was the wrong approach chosen? Why? |
| Action-Set | Did the plan have errors? Which steps? |
| Coherence | What broke? What's the root cause chain? |
| Outcome | Where exactly does result diverge from intent? |

**Success criteria:** Localization — finding exactly where and why things went wrong.
**Pillar emphasis:** Visibility (pillar 2) — making hidden failures visible.
**Entry trigger:** Failure detected, unexpected behavior, output doesn't match expectation.
**Exit trigger:** Root cause identified.

### 5. Maintenance — "Is everything still fresh?"

Prevent decay. Check staleness, archive completed work, update documentation, verify that existing artifacts still match reality. Activated between active tasks or on periodic schedule.

| Layer | Maintenance posture |
|-------|-------------------|
| Workspace | Are docs current? Is context up to date? |
| Task | Are there stalled tasks? Completed work to archive? |
| Action-Space | Has the available approach landscape changed? |
| Action-Set | Do existing plans still match the actual codebase? |
| Coherence | Has anything drifted since last check? |
| Outcome | Are reports generated? Is the evolution log current? |

**Success criteria:** Freshness — preventing decay before it causes problems.
**Pillar emphasis:** Re-measurement (pillar 3) — measuring again what was measured before, detecting drift.
**Entry trigger:** Time elapsed, no active task, staleness detected.
**Exit trigger:** Everything fresh, or active task starts (transition to Alignment).

### 6. Recovery — "How do we restore function?"

Fix what's broken. Restore to a known-good state. Activated after diagnosis identifies the problem. Where Diagnostic is investigative, Recovery is corrective.

| Layer | Recovery posture |
|-------|-----------------|
| Workspace | What was the known-good state of context? |
| Task | What was the original intent before things diverged? |
| Action-Space | What rollback or fix options exist? |
| Action-Set | What's the minimal path to restore function? |
| Coherence | Which alignments need restoring? In what order? |
| Outcome | Has function been restored? Does it match the pre-failure state? |

**Success criteria:** Restoration — system back to known-good state.
**Pillar emphasis:** Comparison (pillar 4) — comparing broken state to known-good state to guide restoration.
**Entry trigger:** Diagnostic complete, root cause known, need to fix.
**Exit trigger:** Function restored, system stable.

### 7. Reflection — "What happened and why?"

Learn from history. Extract patterns, document decisions, identify trajectories. Not about the current state — about the arc of what was done and what it means.

| Layer | Reflection posture |
|-------|-------------------|
| Workspace | What was the full context of the work period? |
| Task | What was attempted vs. what was achieved? |
| Action-Space | What approaches were considered? What was rejected and why? |
| Action-Set | What was the actual sequence of actions? |
| Coherence | What unintended effects occurred? |
| Outcome | What was learned? What patterns emerged? |

**Success criteria:** Insight — understanding what happened and why, not just what was built.
**Pillar emphasis:** Retroactive Explicitness (pillar 1) — making the past explicit so it can inform the future.
**Entry trigger:** Milestone reached, period elapsed, work complete.
**Exit trigger:** Insights documented, patterns identified.

---

## Mode Transitions

Modes don't change randomly. They transition in response to specific signals. The agent's intelligence is expressed primarily through knowing when to switch modes.

### Natural Transition Flows

```
                    ┌──────────────┐
                    │  Exploration  │
                    └──────┬───────┘
                           │ territory mapped
                           ▼
                    ┌──────────────┐         ┌──────────────┐
              ┌────▶│  Alignment   │────────▶│  Reflection  │
              │     └──────┬───────┘         └──────────────┘
              │            │
              │     ┌──────┴──────┐
              │     │             │
              │     ▼             ▼
              │ "nothing     failure
              │  fits"       detected
              │     │             │
              │     ▼             ▼
              │ ┌──────────┐  ┌──────────────┐
              │ │Innovation│  │  Diagnostic   │
              │ └────┬─────┘  └──────┬───────┘
              │      │               │
              │      │ new approach   │ root cause found
              │      │ validated     │
              │      │               ▼
              └──────┘        ┌──────────────┐
                              │   Recovery    │──── restored ────▶ Alignment
                              └──────────────┘

         Maintenance ←→ (any idle state, triggered by time/staleness)
         Reflection  → (any mode, informed by the insight gained)
```

### Transition Triggers

| From | To | Signal |
|------|----|--------|
| Any | Exploration | New/unfamiliar territory encountered |
| Exploration | Alignment | Understanding established, task given |
| Alignment | Innovation | "Nothing in the existing space fits" |
| Innovation | Alignment | Novel approach validated and integrated |
| Alignment | Diagnostic | Failure detected, unexpected behavior |
| Diagnostic | Recovery | Root cause identified, fix needed |
| Recovery | Alignment | System restored, stable |
| Any | Maintenance | Idle period, staleness detected |
| Any → milestone | Reflection | Work complete, period elapsed |

### Per-Agent Mode Independence

Different agents can be in different modes simultaneously. This is expected and powerful:

- Workspace Agent in **Maintenance** (checking freshness) while Task Agent is in **Alignment** (understanding a new task)
- Action-Space Agent in **Innovation** (exploring novel approaches) while Coherence Agent stays in **Alignment** (checking that innovations don't break things)
- Outcome Agent in **Reflection** (evaluating overall progress) while Action-Set Agent is in **Alignment** (executing the current plan)
- All agents in **Exploration** at the start of a new project
- All agents in **Reflection** at the end of a work session

The system's overall state is the combination of its agents' individual (layer × mode × autonomy) states.

---

## Mode Errors

Operating in the wrong mode is as damaging as misalignment at a layer. Mode errors are a category of failure that operates *above* the layer level.

| Error | What happens | Example |
|-------|-------------|---------|
| **Wrong mode** | System operates with the wrong intent | Building on a codebase it doesn't understand (should be Exploration, stuck in Alignment) |
| **Stuck mode** | System can't transition when it should | Always diagnosing, never recovering. Always exploring, never building. |
| **Mode conflict** | Agents in incompatible modes | Action-Set Agent building while Workspace Agent is still exploring (building on incomplete understanding) |
| **Missing mode** | System lacks a needed posture | No Recovery mode → can only diagnose problems, not fix them. No Reflection → never learns from its own work. |
| **Premature transition** | Mode switches before the current mode's work is done | Jumping from Exploration to Alignment before the territory is mapped → builds on incomplete understanding |

Mode-awareness means the system can detect these errors the same way it detects layer misalignment — by making mode state explicit, visible, measurable, and comparable. The four pillars apply to modes too.

---

## The Six Agents

Each agent is responsible for one alignment layer but operates across all seven modes. What changes per mode is not *which layer* the agent monitors, but *what questions it asks* and *what counts as success*.

### Agent 1: Workspace

Monitors the environment and context. Ensures all relevant files are loaded, context is fresh, and nothing has changed externally since the last read. Tracks what's been consumed and what's missing.

Signals to all agents when context becomes stale or when external changes invalidate current assumptions. Natural affinity for Exploration mode (initial context gathering) and Maintenance mode (freshness checks).

### Agent 2: Task

Guards intent, depth, and scope. Continuously evaluates whether the task definition still holds as work progresses. Detects scope creep, recognizes when depth was underestimated, and flags when the original intent has drifted.

Receives backward signals from Action-Space Agent ("nothing fits, depth must expand") and Outcome Agent ("result doesn't match intent, re-evaluate scope"). In Innovation mode, actively reframes the problem rather than just guarding the original definition.

### Agent 3: Action-Space

Explores what approaches exist for the current task. Evaluates feasibility of each. Critically, recognizes when no existing approach is sufficient — this recognition is the primary trigger for switching to Innovation mode.

Signals backward to Task Agent when the action space is insufficient. Signals forward to Action-Set Agent with viable options. The first agent to detect the need for Innovation mode.

### Agent 4: Action-Set

Selects the optimal set of actions from viable approaches. Creates the implementation plan. Sequences steps, manages dependencies, and adjusts the plan when other agents report changes.

The primary executor — translates alignment into action. In Innovation mode, generates novel combinations of known actions. In Recovery mode, creates the restoration plan.

### Agent 5: Coherence

The continuous critic. Monitors every change against the existing system state. Checks if actions disturb alignments that were previously stable. Doesn't wait until the end — evaluates in real time.

Signals to Action-Set Agent when a planned action would break coherence, forcing plan revision before damage is done. In Innovation mode, distinguishes between "this breaks coherence because it's wrong" and "this breaks coherence because it's new." In Diagnostic mode, traces root cause chains across the system.

### Agent 6: Outcome

Compares results with expectations. Runs probes and verification checks. Detects mismatch between what was built and what was intended. Evaluates not just "does it work" but "does it work as intended."

Signals backward to Task Agent when outcomes diverge from intent, triggering re-evaluation of the entire chain. In Reflection mode, evaluates not just correctness but trajectory — what patterns emerged, what was learned. The primary trigger for Diagnostic mode when outcomes fail.

---

## Agent Communication

The agents are not a pipeline. They are a mesh with backward communication and mode coordination:

### Alignment Signals (within a mode)

```
Outcome Agent: "result doesn't match intent"
    → Task Agent: "re-evaluate scope"

Coherence Agent: "this change broke the auth module"
    → Action-Set Agent: "revise the plan"

Action-Space Agent: "no existing approach fits"
    → Task Agent: "depth must expand"

Workspace Agent: "context is stale, 3 files changed externally"
    → All agents: "pause, re-read, re-evaluate"
```

### Mode Signals (triggering mode transitions)

```
Action-Space Agent: "nothing in the known space fits"
    → Action-Space Agent switches to Innovation mode
    → Task Agent: "consider reframing the problem"

Coherence Agent: "tests failing after implementation"
    → Coherence Agent switches to Diagnostic mode
    → Action-Set Agent: "pause execution"

Workspace Agent: "archaeology docs are 30 days old"
    → Workspace Agent switches to Maintenance mode

Outcome Agent: "milestone reached, all criteria met"
    → All agents: consider switching to Reflection mode
```

Any agent can signal any other agent. Backward signals (from later layers to earlier ones) are the most valuable — they catch fundamental problems before more work is built on wrong foundations. Mode signals add a second communication channel: not just "something is wrong at my layer" but "we should change our posture."

---

## Emergent Properties

When six mode-aware, alignment-specialized agents work in continuous coordination, properties emerge that no single agent or single-mode system can produce:

**Self-correction without human intervention.** When Coherence Agent detects a break, it shifts to Diagnostic mode, identifies the root cause, then Recovery mode restores function, and Alignment mode resumes. The system fixes its own failures through mode transitions.

**Automatic scope discovery.** Task Agent starts with surface understanding. As Action-Space Agent explores and reports back, Task Agent's depth understanding grows organically. The system discovers the true scope of the work through doing it — an organic transition from Exploration to Alignment.

**Innovation recognition and response.** When Action-Space Agent reports "nothing in the existing space works," the system doesn't force-fit a bad solution. It transitions to Innovation mode — generating novel approaches, reframing the problem, combining concepts. Single-mode systems always pick from known patterns.

**Compounding accuracy over long tasks.** Each step is checked by Coherence and Outcome agents before the next step builds on it. Errors don't propagate. Mode transitions happen at the right moments — exploring before building, diagnosing before recovering, reflecting before moving on. This is the property that enables autonomous long-running tasks.

**Multi-modal awareness as a measurable signal.** Each agent produces not just an alignment score for its layer but a mode state. The combined picture gives a real-time view of system health at two levels: "is each layer aligned?" AND "is each agent in the right mode?" Development teams can see exactly where alignment is strong, where it's degrading, and whether the system's posture matches the situation.

**Graceful degradation with mode-specific escalation.** When alignment drops below a threshold on any layer, the system can pause and request human input — but now the escalation is mode-specific. "I'm in Innovation mode and I've generated three approaches but can't evaluate which is best" is a very different escalation than "I'm in Diagnostic mode and I've found the root cause but the fix is high-risk." Mode context makes escalation actionable.

**Self-maintenance.** In idle periods, agents autonomously enter Maintenance mode — checking freshness of documentation, verifying that traces are current, archiving completed work. The system maintains itself without being told to.

**Continuous learning through reflection.** At milestones, agents enter Reflection mode — documenting what happened, extracting patterns, evaluating trajectories. This produces insights that inform future work, even across sessions.

---

## Command Toolkit

Each agent uses the AlignStack slash commands that match its layer. The same commands humans use manually become the agents' tools in autonomous mode. Commands also cluster by mode — each mode has a natural affinity for certain commands.

### Commands by Layer

| Agent | Commands |
|-------|----------|
| Workspace | `/arch-small-summary`, `/arch-intro`, `/arch-traces`, `/dead-code-index`, `/dead-code-concepts` |
| Task | `/elaborate`, `/task-desc`, `/sense-making`, `/key-questions`, `/decompose` |
| Action-Space | `/sense-making`, `/roadmap`, `/imagine-feasible` |
| Action-Set | `/task-plan`, `/roadmap`, `/implement`, `/implement-partial` |
| Coherence | `/critic`, `/critic-d`, `/arch-traces`, `/verify` |
| Outcome | `/overview-report`, `/critic`, `/compare-intent`, `/probe` |

### Commands by Mode

| Mode | Primary Commands |
|------|-----------------|
| Exploration | `/arch-small-summary`, `/arch-intro`, `/arch-traces`, `/key-questions` |
| Alignment | `/task-desc`, `/task-plan`, `/critic`, `/critic-d`, `/implement` |
| Innovation | `/imagine-feasible`, `/sense-making` |
| Diagnostic | `/verify`, `/probe`, `/dead-code-index` |
| Maintenance | `/dead-code-index`, `/dead-code-concepts`, archaeology freshness checks |
| Recovery | *(no dedicated command yet — identified gap)* |
| Reflection | `/overview-report`, `/compare-intent` |

This creates a single toolchain with two consumers:
- **Humans** invoke commands as slash commands during development
- **Agents** invoke the same commands programmatically during autonomous runs

All output lands in the same devdocs structure regardless of who invoked it. A human can start a task with `/task-desc`, hand it to the agents for autonomous execution, and find every artifact exactly where they'd expect it.

The commands are tested by humans first and adopted by agents later. No separate tooling to maintain.

---

## Autonomy Levels

The agents' intent modes determine WHAT they're trying to achieve. Autonomy levels determine what they DO about what they find. These are orthogonal dimensions that combine:

**Document** — agents observe and report only. They flag misalignment, log it, and score it, but a human decides what to do. Every finding is written to devdocs. This is the safe starting point for building trust in the system.

**Build** — agents observe, report, AND act. They fix misalignment autonomously — revise plans, regenerate code, re-read context, re-scope tasks. This is the full autonomous level for long-running tasks.

**Hybrid** — agents act autonomously up to a severity threshold, then pause and request human input. Low-severity coherence breaks get auto-fixed. High-severity decisions (task re-scoping, architectural changes) get flagged for human review.

### Mode × Autonomy Combinations

| Combination | What happens |
|------------|-------------|
| Exploration + Document | Map the territory, report what was found |
| Exploration + Build | Map the territory, auto-generate documentation |
| Alignment + Build | Plan and build autonomously |
| Innovation + Hybrid | Explore novel approaches, escalate risky ones for human review |
| Diagnostic + Document | Find the problem, report it for human decision |
| Diagnostic + Build | Find and fix the problem autonomously |
| Maintenance + Build | Auto-refresh stale docs, auto-archive completed work |
| Reflection + Document | Generate reports for human review |

Autonomy is configurable per agent, not just globally. You might trust Workspace Agent at Build autonomy (auto-refresh context — low risk) while keeping Task Agent at Hybrid (re-scoping is a big decision). This creates a confidence dial — start conservative, increase autonomy per agent as trust builds.

### DevDocs as the Visibility Layer

Across all modes and autonomy levels, agents use the devdocs folder structure to document everything they do. Every plan, decision, analysis, correction, and mode transition is written as a devdocs artifact — the same format a human developer would use.

This means:
- A human can open `devdocs/` at any time and see exactly what happened, why, and what state things are in
- Agent decisions are auditable after the fact, not just in real time
- If an agent is paused or replaced by a human, the devdocs provide full context to continue
- The archaeology commands (`/arch-traces`, `/arch-small-summary`) work on agent-produced code the same way they work on human-produced code
- Mode transitions are logged — you can trace why the system shifted from Alignment to Innovation

The agents don't operate in a black box. DevDocs is their shared memory and the human's window into autonomous work. Everything the agents know, the human can see.

---

## Runtime Agnostic

AlignStack Agent is an architecture, not a runtime. It defines *what* agents do, *how they coordinate*, and *which modes they operate in* — not the infrastructure that runs them. The six agents can be implemented on top of different agent runtime frameworks depending on the requirements.

**Stateless / lightweight runtimes:**
- **OpenCode** — open-source, provider-agnostic coding CLI with custom agent support, tool system, and session persistence. Good fit for running alignment agents as custom agents using its existing infrastructure. Limited by stateless subagent model — child agents can't have multi-turn communication with parent. Mode state would need to be persisted externally.
- **Claude Code** — slash commands already serve as the agent toolkit. The Agent SDK supports multi-agent orchestration.

**Stateful runtimes:**
- **Google Agent Development Kit (ADK)** — designed for stateful multi-agent systems with persistent memory, agent-to-agent communication, and session management. A natural fit when agents need to maintain mode state across interactions, remember prior alignment assessments, and coordinate mode transitions through shared context that persists beyond a single turn.

The choice of runtime depends on the deployment context:
- For a single developer using alignment agents locally → OpenCode or Claude Code is sufficient
- For a team running autonomous long tasks with persistent mode and alignment state → a stateful framework like ADK is better suited
- For enterprise deployment with multiple projects → the runtime needs to support concurrent agent sessions with isolation and per-session mode tracking

AlignStack Agent's value is in the alignment architecture. The runtime is interchangeable.

---

## Market Position

Current AI development tools optimize for **speed of generation** in a **single mode**. AlignStack Agent optimizes for **correctness of generation** across **seven modes**. These serve different needs:

- Quick prototyping, small changes, human-reviewed output → single-agent, single-mode tools (Cursor, Copilot) are sufficient
- Complex features, production code, autonomous execution → multi-layer alignment monitoring with multi-modal awareness is required

The key differentiator is not any single capability but **mode-switching intelligence** — the ability to recognize when the situation demands exploration instead of building, innovation instead of alignment, diagnosis instead of execution, and reflection instead of rushing to the next task.

As the industry pushes toward more AI autonomy, alignment monitoring becomes the bottleneck, not code generation speed. And as tasks get longer and more complex, mode-awareness becomes essential. The AI that generates fastest but never reflects, never explores before building, and never innovates when the known space is exhausted — that AI produces confidently wrong systems.

Today, this is a niche advantage for complex work. Tomorrow, it's the architecture that autonomous development requires. The question isn't whether multi-modal alignment monitoring is needed — it's when the market demands it.
