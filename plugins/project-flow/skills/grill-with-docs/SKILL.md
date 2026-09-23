---
name: grill-with-docs
description: Clarify a software/product requirement against supplied project documents before specification or implementation. Use when requirements are ambiguous, assumptions are hidden, documents conflict, or the user asks to grill, challenge, clarify, or pressure-test requirements. Do not implement code.
---

# Goal
Produce a decision-ready requirement package from the governing project documents without inventing missing facts.

# Source-of-truth rules
1. Read the relevant requirement, decision, roadmap, ADR, architecture, and constraints documents before proposing changes.
2. Treat explicit project decisions as authoritative unless the user asks to reconsider them.
3. Distinguish clearly between:
   - documented fact/decision,
   - inference,
   - open question,
   - recommendation.
4. Never silently reconcile conflicting sources. Surface the conflict and identify what must be decided.
5. Never expand the product beyond the current requested scope.

# Procedure
1. State the target problem/outcome in one sentence.
2. Extract current requirements and non-goals from the source documents.
3. Identify ambiguity, contradictions, hidden assumptions, missing actors, missing states, and missing success criteria.
4. Ask only questions whose answers materially change architecture, UX, data model, security, or acceptance criteria.
5. Challenge unnecessary features and speculative complexity.
6. Convert resolved answers into explicit requirements.
7. Produce acceptance criteria that are observable and testable.
8. Mark unresolved blockers. Do not hand off to `to-spec` while blockers remain unless the user explicitly accepts assumptions.

# Required output
Use this structure:

## Problem / Outcome
## Governing Sources
## In Scope
## Out of Scope
## Actors / Consumers
## Functional Requirements
## Data / State Requirements
## Failure & Edge Cases
## Constraints
## Acceptance Criteria
## Open Decisions / Blockers
## Assumptions Explicitly Accepted
## Handoff Readiness

`Handoff Readiness` must be one of:
- READY FOR SPEC
- NOT READY — decisions required

Do not write implementation details unless necessary to explain why a requirement is ambiguous.
