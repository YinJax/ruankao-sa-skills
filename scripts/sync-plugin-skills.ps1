param(
    [switch]$Check
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$source = Join-Path $repoRoot "skills"
$target = Join-Path $repoRoot "plugins\rk\skills"

if (-not (Test-Path -LiteralPath $source -PathType Container)) {
    throw "Missing source skills directory: $source"
}

function Get-RelativeFileHashes([string]$Path) {
    $root = (Resolve-Path -LiteralPath $Path).Path.TrimEnd("\", "/")
    Get-ChildItem -LiteralPath $Path -Recurse -File |
        Sort-Object FullName |
        ForEach-Object {
            $relative = $_.FullName.Substring($root.Length).TrimStart("\", "/").Replace("\", "/")
            $hash = (Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256).Hash
            "$relative $hash"
        }
}

if ($Check) {
    if (-not (Test-Path -LiteralPath $target -PathType Container)) {
        throw "Missing plugin skills directory: $target"
    }

    $sourceHashes = Get-RelativeFileHashes $source
    $targetHashes = Get-RelativeFileHashes $target
    $diff = Compare-Object -ReferenceObject $sourceHashes -DifferenceObject $targetHashes

    if ($diff) {
        $diff | Format-Table -AutoSize | Out-String | Write-Host
        throw "Root skills and plugin skills are out of sync. Run scripts/sync-plugin-skills.ps1."
    }

    Write-Host "Root skills and plugin skills are in sync."
    exit 0
}

if (Test-Path -LiteralPath $target) {
    Remove-Item -LiteralPath $target -Recurse -Force
}

Copy-Item -LiteralPath $source -Destination $target -Recurse
Write-Host "Synced root skills to plugins/rk/skills."
