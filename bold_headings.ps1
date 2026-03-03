$practiceFiles = @(
    "banking-finance.html",
    "civil-litigation.html",
    "constitutional-law.html",
    "corporate-law.html",
    "criminal-defense.html",
    "cyber-law.html",
    "environmental-law.html",
    "family-law.html",
    "intellectual-property.html",
    "labor-employment.html",
    "real-estate.html",
    "taxation-law.html"
)

foreach ($file in $practiceFiles) {
    if (Test-Path $file) {
        $content = [System.IO.File]::ReadAllText((Get-Item $file).FullName)
        # Match <h1 ... class="..." ...> and add font-bold if not present
        if ($content -match '<h1[^>]*class="([^"]*)"') {
            $classes = $matches[1]
            if ($classes -notmatch 'font-bold') {
                $newClasses = "$classes font-bold"
                $newContent = $content -replace [regex]::Escape($classes), $newClasses
                [System.IO.File]::WriteAllText((Get-Item $file).FullName, $newContent)
                Write-Host "Updated heading: $file"
            }
        }
    }
}
