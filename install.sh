#!/usr/bin/env bash
set -euo pipefail
REPO="${1:-cavaryman3-bot/project-flow-skills}"
command -v codex >/dev/null || { echo "Codex CLI not found" >&2; exit 1; }
codex plugin marketplace add "$REPO" --ref main
codex plugin marketplace upgrade
echo "Restart ChatGPT Desktop / Codex, open /plugins, verify Project Flow, then start a new chat/session."
