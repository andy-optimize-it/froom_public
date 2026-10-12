# ============================================
# FROOM-public Auto-Push Script
# ============================================

Set-Location "C:\dev\froom_public"

# Änderungen prüfen
$changes = git status --porcelain

if (-not $changes) {
    Write-Host "Keine Änderungen gefunden. Push nicht erforderlich."
    exit 0
}

Write-Host "Änderungen erkannt:"
Write-Host $changes

# Änderungen hinzufügen
git add .

# Automatische Commit-Nachricht
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
$commitMessage = "Auto-push: Änderungen vom $timestamp"

git commit -m "$commitMessage"

# Push
git push

Write-Host "Auto-Push erfolgreich abgeschlossen."
