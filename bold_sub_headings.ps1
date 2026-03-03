$subFiles = Get-ChildItem -Include case-*.html, article-*.html -Recurse
foreach ($file in $subFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName)
    # Match <h1 ... class="..." ...> and add font-bold if not present
    # Or match <h1 style="..."> if no class exists
    if ($content -match '<h1[^>]*class="([^"]*)"') {
        $classes = $matches[1]
        if ($classes -notmatch 'font-bold') {
            $newClasses = "$classes font-bold"
            $newContent = $content -replace [regex]::Escape($classes), $newClasses
            [System.IO.File]::WriteAllText($file.FullName, $newContent)
            Write-Host "Updated heading (class): $($file.Name)"
        }
    }
    elseif ($content -match '<h1') {
        # If no class, add it
        $newContent = $content -replace '<h1', '<h1 class="font-bold"'
        [System.IO.File]::WriteAllText($file.FullName, $newContent)
        Write-Host "Updated heading (added class): $($file.Name)"
    }
}
