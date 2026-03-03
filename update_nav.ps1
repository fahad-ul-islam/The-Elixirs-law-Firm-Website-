$files = Get-ChildItem -Filter *.html
foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file.FullName)
    $newContent = $content -replace 'Law\s+Updates', 'Landmark Cases' `
                           -replace 'Legal\s+Updates', 'Landmark Cases'
    if ($content -ne $newContent) {
        [System.IO.File]::WriteAllText($file.FullName, $newContent)
        Write-Host "Updated: $($file.Name)"
    }
}
