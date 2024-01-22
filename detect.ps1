param(
    [string]$FilePath1,
    [string]$FilePath2
)

function Get-FileSHA256($FilePath) {
    return (Get-FileHash -Algorithm SHA256 $FilePath).Hash
}

$hash1 = Get-FileSHA256 $FilePath1
$hash2 = Get-FileSHA256 $FilePath2

if ($hash1 -eq $hash2) {
    Write-Host "The files are identical."
} else {
    Write-Host "The files are different."
}

Write-Host "SHA256(File1) - ${FilePath1}: $hash1"
Write-Host "SHA256(File2) - ${FilePath2}: $hash2"
