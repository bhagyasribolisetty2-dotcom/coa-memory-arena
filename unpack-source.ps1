$ErrorActionPreference = 'Stop'
$root = $PSScriptRoot
$partsDir = Join-Path $root 'source-code-parts'
$parts = @(Get-ChildItem -LiteralPath $partsDir -Filter 'part-*.bin' -File | Sort-Object Name)
if ($parts.Count -ne 48) {
    throw "Expected 48 archive parts in source-code-parts; found $($parts.Count). Download the full repository ZIP first."
}
$archive = Join-Path $root 'coa-memory-arena-source-code.tar.xz'
$stream = [System.IO.File]::Create($archive)
try {
    foreach ($part in $parts) {
        $input = [System.IO.File]::OpenRead($part.FullName)
        try { $input.CopyTo($stream) } finally { $input.Dispose() }
    }
} finally {
    $stream.Dispose()
}
$destination = Join-Path $root 'source'
New-Item -ItemType Directory -Force -Path $destination | Out-Null
& tar -xJf $archive -C $destination
if ($LASTEXITCODE -ne 0) { throw 'Extraction failed. Install 7-Zip and extract coa-memory-arena-source-code.tar.xz manually.' }
Write-Host "Source extracted to $destination"
