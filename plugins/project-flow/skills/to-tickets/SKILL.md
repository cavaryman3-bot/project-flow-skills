---
name: to-tickets
description: Break an approved software specification into small, dependency-aware, independently verifiable implementation tickets. Use before coding when a spec is stable. Do not add features or redesign the spec.
---

# Goal
Create a sequence of implementation tickets that limits blast radius, makes review easy, and prevents agents from taking over product/architecture decisions.

# Ticket rules
1. Each ticket must have one primary outcome.
2. A ticket should normally be independently reviewable and testable.
3. Prefer vertical or coherent slices over broad "implement everything" tasks.
4. Include dependencies explicitly.
5. Do not create speculative future tickets that are outside the approved spec.
6. Do not repeat the entire spec inside each ticket; reference the governing sections.
7. If a ticket discovers a requirement/spec conflict during implementation, implementation must stop rather than silently resolving it.

# Procedure
1. Identify dependency order from contracts, persistence, services, UI, integrations, migration, and rollout.
2. Split work at natural review boundaries.
3. Keep foundation tickets minimal; avoid architecture-for-architecture's-sake.
4. For each ticket define files/areas likely affected, but do not require guessed file paths when repo inspection is needed.
5. Define objective acceptance and verification commands/tests.
6. Mark whether a ticket is safe to parallelize.
7. Identify integration checkpoints.

# Required output
For every ticket:

### T-XXX — Title
- Outcome
- Governing spec sections
- Dependencies
- In scope
- Out of scope
- Expected affected components
- Implementation notes / constraints
- Tests / verification
- Acceptance criteria
- Rollback / recovery notes if relevant
- Parallelizable: YES | NO

Finish with:

## Execution Order
## Integration Checkpoints
## Deferred / Explicitly Out of Scope

Do not include a ticket whose only purpose is "cleanup" unless the spec requires it.
