param(
  [string]$Repository = "cavaryman3-bot/project-flow-skills"
)
$ErrorActionPreference = "Stop"
if (-not (Get-Command codex -ErrorAction SilentlyContinue)) {
  throw "Codex CLI was not found. Install/update Codex first."
}
Write-Host "Adding Project Flow marketplace from $Repository ..."
codex plugin marketplace add $Repository --ref main
codex plugin marketplace upgrade
Write-Host ""
Write-Host "Restart ChatGPT Desktop / Codex, open /plugins, verify 'Project Flow', then start a new chat/session."
