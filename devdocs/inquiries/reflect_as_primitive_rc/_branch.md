# Branch: reflect_as_primitive_rc

## Question
Should /reflect be extended to handle Primitive RC (structural validation of discipline outputs) by running after each discipline, rather than keeping Primitive RC as separate loop-runner infrastructure?

## Goal
A clear architectural decision on whether /reflect owns structural checking of discipline outputs or whether that responsibility belongs in the loop runner checkpoint. The user should be able to confidently assign Primitive RC to the right mechanism and know why.

## Scope Check
Question covers goal. The question directly addresses the architectural ownership decision and the user's specific pushback (reflect is flexible enough to run after each discipline, not just after the full loop).
