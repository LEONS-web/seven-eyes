# Nuwa Design Board · One-click install (Windows PowerShell)
# Copies all 7 designer skills to the active agent's skill directory
# Supports: Reasonix, Claude Code

param()

$ErrorActionPreference = "Stop"
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillsSrc = Join-Path $ScriptDir "..\skills"

Write-Host "🎨 Nuwa Design Board · Installer" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Detect platform
function Detect-Platform {
    $home = $env:USERPROFILE
    if (Test-Path "$home\.reasonix\skills") { return "reasonix" }
    if (Test-Path "$home\.claude\skills") { return "claude" }
    if (Test-Path "$home\AppData\Roaming\reasonix\memory") { return "reasonix" }
    return ""
}

$Platform = Detect-Platform

if (-not $Platform) {
    Write-Host "⚠️  No supported agent platform detected." -ForegroundColor Yellow
    Write-Host "   Supported: Reasonix, Claude Code"
    Write-Host ""
    Write-Host "Manual install: copy skills\* to your agent's skill directory"
    exit 1
}

switch ($Platform) {
    "reasonix" { $Target = "$env:USERPROFILE\.reasonix\skills" }
    "claude" { $Target = "$env:USERPROFILE\.claude\skills" }
}

Write-Host "📦 Platform detected: $Platform"
Write-Host "📂 Target directory: $Target"
Write-Host ""

# Create target if needed
New-Item -ItemType Directory -Force -Path $Target | Out-Null

$Skills = @(
    "kenya-hara-design",
    "paula-scher-design",
    "susan-kare-design",
    "yugo-nakamura-design",
    "dieter-rams-design",
    "refactoring-ui-design",
    "stefan-sagmeister-design"
)

$Installed = 0
foreach ($skill in $Skills) {
    $Src = Join-Path $SkillsSrc $skill
    $Dst = Join-Path $Target $skill

    if (-not (Test-Path $Src)) {
        Write-Host "   ⚠️  $skill : source not found, skipping"
        continue
    }

    # Remove old version if exists
    if (Test-Path $Dst) { Remove-Item -Recurse -Force $Dst }

    # Create destination
    New-Item -ItemType Directory -Force -Path $Dst | Out-Null

    # Copy SKILL.md
    Copy-Item (Join-Path $Src "SKILL.md") (Join-Path $Dst "SKILL.md")

    # Copy phase2-synthesis.md if exists
    $SynthesisPath = Join-Path $Src "references\phase2-synthesis.md"
    if (Test-Path $SynthesisPath) {
        New-Item -ItemType Directory -Force -Path (Join-Path $Dst "references") | Out-Null
        Copy-Item $SynthesisPath (Join-Path $Dst "references\phase2-synthesis.md")
    }

    Write-Host "   ✅ $skill" -ForegroundColor Green
    $Installed++
}

Write-Host ""
Write-Host "🎉 Done! $Installed/7 skills installed to $Target" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:"
Write-Host "   1. Restart your agent (Reasonix / Claude Code)"
Write-Host "   2. In a session, try: 'Load kenya-hara-design skill'"
Write-Host "   3. Run the full pipeline: load all 7, input a product brief"
