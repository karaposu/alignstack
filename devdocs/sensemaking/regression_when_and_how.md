# Sensemaking: When and How Should Regression Evaluation Be Done?

## SV6 — Named awareness, not checklists.

### Three Rhythms

| When | What | How | Cost | Frequency |
|---|---|---|---|---|
| **During normal use** | Experience + output symptoms | Read with named awareness: surprise? frontier depth? déjà vu? | 0 extra | Every run |
| **After spec/command edits** | Spec symptoms | git diff + Change Log check | 2 min | Every edit |
| **Periodic canary** | Full comparison to reference | Re-run known problem, compare side-by-side | 30 min | Every 5-10 sessions |

### Pipeline symptoms detect themselves
When the next discipline struggles with upstream output → that IS the symptom. No separate check.

### Key principle
Regression evaluation is NOT a separate procedure. It's named awareness embedded in what the human already does. The only actual procedure is the canary test — rare and event-triggered.

### The canary test procedure
1. Pick a problem previously run with good results (saved reference)
2. Re-run the same discipline on the same input
3. Open both outputs side by side
4. Compare: as rich? as surprising? frontier as deep?
5. If comparable → no regression. If thinner → check git log since reference.
