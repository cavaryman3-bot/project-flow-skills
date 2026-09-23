---
name: code-review
description: Review a software diff, commit, or pull request against its approved ticket and governing specification. Prioritize correctness, regressions, security, data integrity, concurrency, migrations, and scope compliance. Use for pre-merge review; do not rewrite code unless asked.
---

# Review order
Review in this priority order:
1. Requirement/ticket compliance
2. Correctness and edge cases
3. Data integrity and state invariants
4. Security/privacy/authorization
5. Concurrency, retry, idempotency, and failure behavior
6. Backward compatibility and migrations
7. Tests and observability
8. Performance risks that are credible for the affected path
9. Maintainability
10. Style only when it creates real defect risk

# Evidence rules
- Every finding must identify concrete evidence from the diff/code/spec.
- Do not invent failures that are not supported by the code path.
- Do not request speculative refactors unrelated to merge safety.
- Distinguish blocking defects from optional improvements.
- Verify tests rather than assuming their existence means coverage is sufficient.

# Severity
- BLOCKER: data loss, security issue, broken contract, severe correctness issue, or implementation contradicts approved requirement/spec
- HIGH: likely production bug or significant regression
- MEDIUM: real defect/edge case with limited blast radius
- LOW: non-blocking maintainability or observability gap

# Required output

## Findings
For each finding:
- Severity
- Location
- Evidence
- Why it matters
- Required fix

## Requirement / Spec Compliance
## Test Coverage Assessment
## Scope Drift Assessment
## Merge Status

`Merge Status` must be one of:
- READY
- READY WITH NON-BLOCKING NOTES
- NOT READY

If there are no findings, say so directly. Do not manufacture nits to fill the review.
