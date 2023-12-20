git config --global user.name 'RixonTelus'
git config --global user.email 'rixon.polvi@telus.com'
git add .

# Check for unstaged changes
git status

if (git diff-index --quiet HEAD --) {
Write-Host "No changes detected."
} else {
# Commit if there are changes
$currentDate = Get-Date -Format "yyyy-MM-dd-HH-mm"
git commit -m "Extracted Rules - $currentDate"

# Push the changes
git push origin HEAD:$(git branch --show-current)
Write-Host "Changes have been pushed."
}