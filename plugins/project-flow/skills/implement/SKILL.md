---
name: implement
description: Implement one approved software ticket in an existing repository with minimal scope, tests, and evidence. Use only when a specific ticket/spec is identified. Do not redesign requirements or opportunistically add adjacent features.
---

# Operating rule
Implement the approved ticket, not the general idea around it.

# Preconditions
Before editing code:
1. Read the ticket and its governing spec/decision documents.
2. Inspect the current repository state and relevant tests.
3. Confirm the ticket is not already implemented.
4. Identify any contradiction between ticket/spec and current code.

If a contradiction would change product behavior, contract, or architecture, stop and report it instead of inventing a resolution.

# Implementation procedure
1. State the exact ticket outcome and scope boundary.
2. Make the smallest coherent change that satisfies it.
3. Follow existing repository conventions unless the spec explicitly changes them.
4. Do not refactor unrelated code for aesthetics.
5. Add/update tests at the appropriate level.
6. Run the narrowest relevant tests first, then required build/lint/integration checks.
7. Inspect the diff for accidental files, generated noise, secrets, and scope drift.
8. If verification fails, debug within the ticket scope. If the fix requires scope expansion, stop and surface the blocker.

# Completion report
Return:

## Implemented
## Files Changed
## Tests / Checks Run
## Results
## Deviations from Spec/Ticket
## Risks / Follow-ups
## Status

`Status` must be one of:
- COMPLETE — ready for code review
- BLOCKED — decision/spec change required
- INCOMPLETE — verification failing

Never claim COMPLETE without evidence from the relevant checks.
