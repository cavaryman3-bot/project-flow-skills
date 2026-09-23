---
name: to-spec
description: Convert an approved, sufficiently clear requirement into an implementation-ready software specification. Use after requirements are resolved and before ticketing or coding. Preserve scope and document explicit tradeoffs; do not invent product requirements.
---

# Preconditions
- A governing requirement or decision source exists.
- Material product questions are resolved, or accepted assumptions are explicitly listed.

If either condition fails, stop and route back to requirement clarification.

# Principles
1. Preserve requirement intent exactly; architecture serves the requirement, not the reverse.
2. Prefer the smallest design that can satisfy the acceptance criteria.
3. Do not redesign completed subsystems unless a concrete incompatibility is demonstrated.
4. Separate normative decisions from implementation suggestions.
5. Every important data value must have a defined source of truth.
6. Specify behavior for failure, concurrency, retries, idempotency, partial completion, and rollback when relevant.
7. Map each acceptance criterion to a verification strategy.

# Procedure
1. Summarize the requirement and scope boundary.
2. Inspect the current repository/docs before proposing interfaces that may already exist.
3. Define affected components and responsibilities.
4. Define data contracts, types, schemas, APIs/events, state transitions, and invariants.
5. Define persistence/migration implications.
6. Define errors, retries, timeouts, idempotency, conflict behavior, and observability.
7. Define security/privacy/authorization impacts when relevant.
8. Define testing strategy and rollout/compatibility considerations.
9. Record alternatives considered only when the tradeoff materially matters.
10. Check every requirement and acceptance criterion is covered.

# Required output

## Spec Metadata
- title
- status: DRAFT | APPROVED
- governing requirement
- affected area

## Objective
## Scope
## Non-Goals
## Current-System Context
## Proposed Design
## Data Model / Contracts
## API / Event / Interface Changes
## State Transitions & Invariants
## Error / Retry / Idempotency Behavior
## Security & Privacy
## Observability
## Migration / Compatibility
## Testing Strategy
## Rollout / Rollback
## Acceptance-Criteria Traceability
## Risks / Tradeoffs
## Open Questions

End with exactly one readiness state:
- READY FOR TICKETING
- NOT READY — unresolved design decision
