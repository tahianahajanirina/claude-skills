# install.ps1 — Installe les skills Claude Code globalement (Windows)
# Exécuter en tant qu'Administrateur OU activer le Developer Mode :
#   Paramètres → Système → Pour les développeurs → Mode développeur : Activé

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ClaudeSkills = "$env:USERPROFILE\.claude\skills"

# Créer le dossier si inexistant
if (!(Test-Path $ClaudeSkills)) {
    New-Item -ItemType Directory -Path $ClaudeSkills -Force | Out-Null
}

# Créer les symlinks pour chaque skill
Get-ChildItem "$ScriptDir\skills" -Directory | ForEach-Object {
    $target = Join-Path $ClaudeSkills $_.Name
    if (Test-Path $target) { Remove-Item $target -Recurse -Force }
    New-Item -ItemType SymbolicLink -Path $target -Target $_.FullName | Out-Null
    Write-Host "-> $($_.Name) installé"
}

# Settings globaux (ne pas écraser si existant)
$settingsPath = "$env:USERPROFILE\.claude\settings.json"
if (!(Test-Path $settingsPath)) {
    Copy-Item "$ScriptDir\settings.json" $settingsPath
    Write-Host "-> settings.json installé"
} else {
    Write-Host "-> settings.json déjà existant, non écrasé"
}

Write-Host ""
Write-Host "Done. Skills disponibles dans toutes les sessions Claude Code."
Write-Host "Vérifier avec : Get-ChildItem $env:USERPROFILE\.claude\skills"
