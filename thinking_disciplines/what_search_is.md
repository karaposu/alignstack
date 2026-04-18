# What Search Is

Search is not a discipline. It is the emergent behavior of all disciplines operating together toward a goal.

## The Definition

**Search = Goal-directed navigation through a possibility space.**

Navigation maps all possible directions without preference. It shows everything. Add a goal — a specific thing you're searching FOR — and navigation becomes search. The goal gives navigation purpose.

- Navigation without goal = exploration (see everything)
- Navigation with goal = search (find something specific)

## The Components of Search

Search emerges when these components operate together:

| Component | What it does | Role in search |
|---|---|---|
| **Goal** | Defines what you're searching for | The destination — when the goal is met, the search ends |
| **SIC** | Executes one cognitive step (understand, generate, evaluate) | The movement — each cycle moves through the possibility space |
| **R (Reflect)** | Learns from the step (what worked, what didn't) | The memory — what was tried, what was learned |
| **N (Navigate)** | Maps all possible next directions | The compass — shows where you could go from here |
| **Selection** | Chooses which directions to pursue | The decision — which path to take |
| **Iteration** | Repeats the cycle until the goal is met | The persistence — keep going until found |

None of these alone is search. Each is a component. Search is their composition.

## Why Search Is Not a Discipline

Disciplines formalize single cognitive operations: understanding (S), generating (I), evaluating (C), reflecting (R), navigating (N). Each has one transform, one process, one output type.

Search has no single transform. It is the LOOP that uses all transforms in sequence. It is not an operation — it is the orchestration of operations toward a goal. Building search means building all the components and the architecture that composes them. The architecture IS the search.

## Navigation's Role in Search

Without navigation, the cognitive loop repeats in one direction: narrow the question and re-run SIC. This is a LIMITED search — a line through the possibility space.

```
SIC → narrow → SIC → narrow → SIC → answer
```

With navigation, the loop sees ALL directions at each step. It can choose the most promising, branch into multiple paths, or change direction entirely. This is a FULL search — a tree through the possibility space.

```
SIC → R → N → select → branch into multiple SICs → R → N → ...
```

Navigation is what transforms a fixed sequence into a search. It provides the VISIBILITY of the possibility space that search requires. Without it, the loop is blind to alternatives. With it, the loop sees everything and chooses intelligently.

## Search Configuration

Different searches require different strategies. A search has parameters that shape how it proceeds:

**Strategy** — how to explore the possibility space:
- *Depth-first*: pursue the most promising direction deeply before trying alternatives. Good for focused problems with a clear path.
- *Breadth-first*: explore many directions at shallow depth before committing. Good for open-ended problems where the best path is unknown.
- *Mixed*: start broad to identify promising regions, then go deep on the best ones.

**Max depth** — how many iterations before the search should converge or reassess. A 3-iteration search is quick but shallow. A 10-iteration search is thorough but expensive. The depth should match the question's complexity and the cost of a wrong answer.

**Max branches** — how many parallel paths to pursue simultaneously. More branches = more exploration but more resource cost. Fewer branches = more focus but might miss the best path. The branch limit prevents the search from spreading too thin.

**Convergence threshold** — how much alignment with the goal is "enough." A strict threshold demands a complete answer. A loose threshold accepts a partial answer. The threshold determines when the search stops: strict = keep searching until fully answered, loose = stop at "good enough."

**Diminishing returns** — when the marginal value of continuing drops below the cost of another cycle. Even if the goal isn't fully met, continuing might not be worth it. Knowing when to stop is as important as knowing where to search.

These parameters are not currently formalized in the system. They exist as IMPLICIT choices the human makes: "I'll do a few iterations," "let me branch here," "this is good enough." Making them explicit is a future step — useful when the search becomes autonomous and the system must make these choices itself.

## Where We Are Now

Currently, we focus on NAVIGATION — the component that maps the possibility space. Navigation is the piece that was missing. With it, the loop has all the components of search.

But having all components is not the same as CONFIGURING the search. Right now:
- The human IS the search strategy (they decide depth-first vs breadth-first through their choices)
- The human IS the convergence detector (they decide when the answer is good enough)
- The human IS the branch manager (they decide how many directions to pursue)

The system provides the CAPABILITIES for search (SIC, R, N). The human provides the STRATEGY.

Eventually, the system should also provide the strategy — configuring its own search based on the question type, the goal's complexity, and the resources available. That requires formalizing the search parameters and building a selection mechanism that can choose from navigation's map without human judgment.

That is the path from human-driven search (now) to autonomous search (future). The path goes through: USE the system → observe what strategies the human applies → formalize the patterns → let the system apply them autonomously.

## The Relationship Between All Parts

```
CORE DISCIPLINES (the cognitive step):
  S → I → C
  One question → one answer

BOUNDARY DISCIPLINES (between steps):
  R: looks backward — what was learned
  N: looks forward — what's possible

SEARCH (the whole):
  Goal + Loop(SIC → R → N → Select) until convergence
  The emergent behavior of all parts toward a purpose

SEARCH CONFIGURATION (the strategy — future):
  How deep, how broad, what strategy, when to stop
  Currently: the human. Eventually: the system.
```

Search is not above or below the disciplines. It IS the disciplines working together. Understanding search means understanding how the parts compose — and that composition is what this entire system was built to do.
