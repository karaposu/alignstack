# Branch: Value Extraction Design

## Question
How should MVL's finalization output be named, structured, and connected across related inquiry folders — given that "summary" implies lossy compression (bad for prompt work), context spreads across multiple MVL runs, and one loop's findings can invalidate another's?

## Goal
A finalization output design where: (1) the document name signals "this is the extracted value, fully explained" not "this is a compressed version," (2) multi-folder context relationships are natively expressible, (3) invalidation between related loops is easy to signal, and (4) the document structure shows original request → how the value solves it → why it was chosen over alternatives.

## Scope Check
Question covers goal: YES — all four aspects (naming, structure, cross-folder links, invalidation signaling) are addressed by the question.
