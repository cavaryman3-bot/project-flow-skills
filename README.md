# Project Flow Skills

A reusable skills-only plugin for ChatGPT/Codex that standardizes the path from ambiguous requirements to reviewed implementation.

Workflow:

`grill-with-docs -> to-spec -> to-tickets -> implement -> code-review`

## Why this exists

Use this when you want the agent to execute against explicit product/engineering decisions instead of continuously redesigning the project.

## Install from Codex CLI

```bash
codex plugin marketplace add cavaryman3-bot/project-flow-skills --ref main
codex plugin marketplace upgrade
```

Then open `/plugins`, select **Project Flow**, and install it. Restart/start a new ChatGPT Desktop or Codex session after installation.

## Use

In Codex, explicitly invoke a skill with `$skill-name`:

```text
$grill-with-docs Review docs/requirements/event-ingestion.md and identify unresolved decisions.
$to-spec Turn the approved requirement into an implementation-ready spec.
$to-tickets Break this spec into independently reviewable tickets.
$implement Implement ticket T-003 only. Do not expand scope.
$code-review Review the current diff against T-003 and the governing spec.
```

In ChatGPT with the plugin enabled, ask naturally or explicitly:

```text
Use the to-spec skill on this requirement.
```

## Design principles

- Source documents are authoritative.
- Never silently invent missing requirements.
- Never change scope during implementation.
- Every ticket must have objective verification.
- Reviews prioritize correctness, regression risk, security, data integrity, and scope compliance over style.

## Structure

```text
.agents/plugins/marketplace.json
plugins/project-flow/
  plugin.json
  assets/FLOW.md
  skills/
    grill-with-docs/SKILL.md
    to-spec/SKILL.md
    to-tickets/SKILL.md
    implement/SKILL.md
    code-review/SKILL.md
```

## Recommended operating model

Use the five skills as gates, not one giant autonomous run. If implementation discovers a decision that changes product semantics, stop and return to the previous gate instead of allowing the coding agent to decide silently.
