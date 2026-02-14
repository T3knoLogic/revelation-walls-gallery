# Revelation Walls Gallery - Deploy to GitHub
# 1. Run: gh auth login (one-time) OR set $env:GH_TOKEN = "your_token"
# 2. Run this script

$ErrorActionPreference = "Stop"
Push-Location $PSScriptRoot

Write-Host "`n=== Revelation Walls Gallery - GitHub Deploy ===" -ForegroundColor Cyan

gh auth status 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "`nNot logged in. Run: gh auth login" -ForegroundColor Yellow
    Write-Host "Browser will open - enter code at https://github.com/login/device" -ForegroundColor Yellow
    Start-Process "https://github.com/login/device"
    Pop-Location
    exit 1
}

Write-Host "`nCreating repo T3kNoLogic/revelation-walls-gallery..." -ForegroundColor Green
gh repo create T3kNoLogic/revelation-walls-gallery --public --source=. --remote=origin --push

Write-Host "`n=== DONE ===" -ForegroundColor Green
Write-Host "Gallery: https://t3knologic.github.io/revelation-walls-gallery/" -ForegroundColor Cyan
Write-Host "Enable Pages: Settings -> Pages -> Source: main, / (root)" -ForegroundColor Gray

Pop-Location
