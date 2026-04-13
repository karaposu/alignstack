# The Minimum Viable Loop

The goal of everything we are building — disciplines, protocols, telemetry, frontier questions, output anatomy — is ONE thing: a working loop that can improve itself.

Not a perfect loop. Not a fully automated loop. A **tinder fire** — small enough to start with what exists today, self-sustaining enough that each cycle feeds the next, and incrementally improving so that each pass is slightly better than the last.

---

## Why This Is the Goal

Thinking disciplines are powerful individually. But individually, they're just tools — you pick one up, use it, put it down. The transformative potential is in the LOOP: disciplines chaining together, each one's output feeding the next, with quality awareness and steering between them. The loop is what turns a collection of tools into a system that compounds.

Without the loop, improvements are linear — each discipline gets better in isolation. With the loop, improvements are compounding — a better sensemaking produces better input for innovation, which produces better candidates for critique, which produces better feedback for the next sensemaking. Each cycle lifts all disciplines together.

The self-improvement case makes this concrete: the disciplines can be used ON THEMSELVES. A sensemaking pass identifies a discipline's weaknesses. An innovation pass generates fixes. A critique pass evaluates the fixes. The improved discipline then produces better sensemaking, which identifies subtler weaknesses, which generates subtler fixes. This is the whirlpool — once it starts, it sustains itself.

But the whirlpool needs a starting rotation. That's the minimum viable loop.

---

## What Exists Today

| Step | What it does | Status |
|---|---|---|
| 1. CONFIGURE | Classify problem, select disciplines, sequence pipeline | ✓ Works |
| 2. Run discipline | Human types the command, discipline produces output | ✓ Works |
| 3. Check quality | Read telemetry from output, decide proceed/flag/re-run | ✗ Missing — inquiry doesn't read telemetry |
| 4. Route to next | Tell user which discipline to run next | ✓ Works |
| 5. Run next discipline | Human types the next command | ✓ Works |
| 6. Steer | Wayfinding checkpoint between iterations | ✓ Works (with reachability now added) |
| 7. Persist | Save outputs and state for cross-session resume | Partial — _state.md works but files scatter by discipline folder, not by inquiry |

**The gap is exactly two things.** Everything else works. The tinder fire needs two fixes, not a redesign.

---

## The Two Fixes

### Fix 1: Inquiry reads telemetry

Currently, inquiry checks file existence: "does sensemaking.md exist? → sensemaking done, run innovation next." It doesn't check whether the sensemaking was THOROUGH. A thin sensemaking with 2 perspectives and 40% ambiguity resolution gets the same "done" as a thorough one with 6 perspectives and 90% resolution.

The fix: inquiry's RESUME logic reads the telemetry section from the previous discipline's output. It compares the measurements to the thresholds defined in the discipline's spec. It routes:

- **All measurements meet thresholds** → proceed to next discipline
- **Some measurements below threshold** → flag for human review with specific guidance ("anchor diversity is low — consider checking additional perspectives before proceeding")
- **Critical measurement missing or failed** → re-run with targeted feedback

This is a change to the `/inquiry` command, not to the disciplines. The disciplines already produce telemetry. Inquiry just needs to read it.

### Fix 2: Inquiry-scoped file organization

Currently, discipline outputs save to `devdocs/sensemaking/`, `devdocs/innovation/`, etc. — organized by discipline, not by inquiry. Files from different inquiries mix together. You can't trace "everything from the auth module inquiry" without manually searching across folders.

The fix: when inquiry creates an inquiry folder (`devdocs/inquiries/<name>/`), discipline outputs save INTO that folder instead of into discipline-named folders. The inquiry folder becomes the unit of work — everything related to one question lives together.

```
Current (scattered by discipline):
  devdocs/sensemaking/auth_module.md
  devdocs/innovation/auth_module.md
  devdocs/critique/auth_module.md

Fixed (grouped by inquiry):
  devdocs/inquiries/auth_module/
    _branch.md
    _state.md
    sensemaking.md
    innovation.md
    critique.md
```

This is the folder convention from `devdocs/folder_based.md` — it was designed for this but never activated. The fix is: when a discipline runs inside an inquiry (not standalone), it saves to the inquiry folder. When it runs standalone (`/sense-making` on something without an inquiry), it saves to `devdocs/sensemaking/` as before.

---

## The Loop With Both Fixes

```
Human: /inquiry "How should we redesign the auth module?"
  → CONFIGURE: S→I→C pipeline, Predictive depth
  → Creates devdocs/inquiries/auth_module/
  → "Next: /sense-making devdocs/inquiries/auth_module/_branch.md"

Human: /sense-making devdocs/inquiries/auth_module/_branch.md
  → Full SV1-SV6 + Saturation Indicators (Telemetry)
  → Saves to devdocs/inquiries/auth_module/sensemaking.md

Human: /inquiry devdocs/inquiries/auth_module/
  → Reads sensemaking.md telemetry section
  → Perspectives: 5 (3 new anchors) ✓
  → Ambiguity ratio: 83% ✓
  → SV delta: significant ✓
  → "Telemetry meets thresholds. Next: /innovate devdocs/inquiries/auth_module/sensemaking.md"

Human: /innovate devdocs/inquiries/auth_module/sensemaking.md
  → Full 7-mechanism innovation + Mechanism Coverage (Telemetry)
  → Saves to devdocs/inquiries/auth_module/innovation.md

Human: /inquiry devdocs/inquiries/auth_module/
  → Reads innovation.md telemetry section
  → Generators: 3/4 ✓  Framers: 2/3 ✓  Convergence: yes ✓
  → "Telemetry meets thresholds. Next: /td-critique devdocs/inquiries/auth_module/"

Human: /td-critique devdocs/inquiries/auth_module/
  → Full adversarial critique + Convergence Telemetry
  → Saves to devdocs/inquiries/auth_module/critique.md

Human: /inquiry devdocs/inquiries/auth_module/
  → All pipeline steps complete → wayfinding checkpoint
  → Reads reachability: no gates blocking
  → Move: NARROW on tokenization approach
  → "Iteration 1 complete. Next iteration: /sense-making on tokenization..."
```

The human still types every command. But inquiry now QUALITY-GATES each transition. A thin sensemaking gets flagged. A low-coverage innovation gets flagged. The loop is human-driven but quality-aware.

---

## What the Tinder Fire Produces

The first loop produces:
- Discipline outputs grouped by inquiry (traceable, resumable)
- Telemetry at each transition (quality signal for the loop)
- Wayfinding with reachability (can see gates and prerequisites)
- Frontier questions (direction for the next iteration)

The SECOND loop — using the loop on ITSELF — produces:
- Sensemaking on the loop's quality → identifies where it's weak
- Innovation on fixes → generates improvements
- Critique on the fixes → selects the best ones
- The improvements get applied → the loop is now slightly better
- The slightly better loop runs again → finds subtler issues

This is the whirlpool. The first rotation is manual and imperfect. Each rotation is slightly faster and more precise than the last. The system doesn't need to be perfect to start — it needs to be good enough to improve itself.

---

## After the Minimum Viable Loop: The Growth Phases

Once the tinder fire is burning, the system evolves through natural phases. Each phase is unlocked by the previous one — not planned in advance, but discovered by running the loop.

### Phase 1: Quality-Gated Manual Loop (the tinder fire)

What it is: Human types every command. Inquiry reads telemetry and quality-gates transitions. Files organized by inquiry.

What it produces: Reliable discipline chains where each step meets quality thresholds. Bad outputs get caught and re-run.

What it reveals: Which thresholds are too strict (loop stalls), which are too loose (bad output propagates), which disciplines need better telemetry.

### Phase 2: Refined Telemetry and Thresholds

What it is: The loop from Phase 1 is used to refine the telemetry itself. Run the loop. See where it flags unnecessarily (threshold too strict). See where it passes bad output (threshold too loose). Adjust.

What it produces: Calibrated thresholds that match real usage. Telemetry sections that measure what actually matters (some metrics will be dropped, others added).

What it reveals: Which disciplines are mature (telemetry is stable, thresholds are calibrated) and which need more work. Priorities emerge from usage, not from architecture diagrams.

### Phase 3: Semi-Automated Iteration

What it is: Within a single iteration (S→I→C), the transitions are automated — inquiry reads telemetry and chains the next discipline without human intervention. Human intervenes only at wayfinding checkpoints (between iterations) and when telemetry flags an issue.

What it produces: Faster iterations. The human drops from "type every command" to "approve iteration direction." The loop runs one full S→I→C pass while the human does other work.

What it reveals: Whether the wayfinding reachability concept works in practice. Whether automated chaining produces output quality comparable to manual driving. Where the loop breaks without human judgment.

### Phase 4: Multi-Inquiry Learning

What it is: Lessons from one inquiry carry over to the next. The system remembers which thresholds worked, which discipline configurations produced good results, which pipeline sequences were most effective for which problem types.

What it produces: Inquiry-over-inquiry improvement. The tenth inquiry runs better than the first because the system learned from the previous nine.

What it reveals: Whether the disciplines need new failure modes based on real usage patterns. Whether new disciplines are needed (the planned ones: Diagnosis, Reflection, Recovery, Evaluation — or entirely new ones nobody imagined).

---

## What This Means Right Now

The entire roadmap above is aspirational beyond Phase 1. Phase 1 is what we build NEXT. It requires two changes:

1. Update `/inquiry` to read telemetry and route
2. Update discipline save paths to support inquiry-scoped folders

Everything else — refined thresholds, semi-automation, multi-inquiry learning — emerges from USING the loop, not from designing it in advance. The loop will tell us what it needs. We just need to start it.





There's a threshold for self-improvement competence — below it, you can't auto-accept self-changes" — the     
  system is fragile, it needs a guardian until it's robust enough to self-steer






  ## Generic ROADMAP
what we are trying to build is improvements in different dimensions. 

first improvement is related to this :
                                              
   Graduated Autonomy Model — not binary (human gatekeeps vs. full autonomy). A measured gradient from Level 0 (human reviews everything) to Level 4 (system proposes its own strategic direction). Progression is driven by a measurable self-improvement hit rate: what % of self-proposed changes actually improve telemetry in subsequent runs. Hit rate climbs → autonomy increases. Drops → autonomy decreases. Concrete, testable, no philosophical baggage.     

  Level 0: Human reviews every self modifications                                                                                     
  Level 1: Human reviews modifications that change discipline PROCESS (not just content)                                             
  Level 2: Human reviews only modifications flagged as UNCERTAIN by the system
  Level 3: Human sets strategic direction; system handles all tactical self-improvement                                              
  Level 4: System identifies its own strategic gaps and proposes directions to human     


  right now we are level 0. And we should reach to level 1.                                                            
                                                                                                                                     
  2. Regression Detection (buildable NOW) — the system must detect its own degradation before it can be trusted to self-modify.      
  Cross-run telemetry tracking: store metrics, compare against rolling average, auto-flag drops after self-modifications. This is the
   prerequisite for ANY increase in autonomy. Uses existing telemetry — just needs persistence across runs.
   But question remains,  without enough threshold achieved in Graduated Autonomy Model, regression detection might not be relieable. But without Regression Detection we cant reliebally measure Graduated Autonomy Model. We must focus on this dilemma first. and  The dilemma dissolves because the human IS the bootstrap.                                                                          
                                                                                                                        The perceived circularity: regression detection needs reliable telemetry → reliable telemetry needs competent disciplines →        
  competent disciplines need regression detection to prevent degradation → loop.                                                   
                                                                                                                                     
  The resolution: the chain has an ENTRY POINT that isn't inside the loop. The human runs disciplines, judges quality, and labels    
  telemetry. This human-labeled data calibrates everything downstream. It's not self-referential — it's externally grounded. 
  The practical implication: there's nothing to solve before starting. Phase 0 is what you're ALREADY DOING —

  The key reframe: Level 0 of the graduated autonomy model isn't a limitation to overcome. It's the CALIBRATION PHASE that makes     
  everything else possible. Every discipline run at Level 0 isn't just producing output — it's training the system's quality       
  detector. The human's normal work IS the bootstrap.
                                                        
                                                                                                                                     
  3. The Baldwin Effect — what's already happening has a name from evolutionary biology. When the SIC loop improves a discipline,
  learned insight gets ENCODED into the spec (the genotype). Future runs start from a higher baseline not because they remember, but 
  because the architecture changed. Each encoding is a "Baldwin cycle." Track them — they're the evolutionary progress metric.     
                                                                                                                                    right now  i am  the consciousness layer. The system is the subconscious. The  
  graduated autonomy model is the path to the system building its own consciousness layer to eventually replace what you currently 
  provide — spontaneous attention, intrinsic valuation, real-time steering. 
