Get-Process

$process = Get-Process
$process.Count

Get-Process | Where-Object {$_.CPU -gt 500}
Get-Process | Sort-Object WorkingSet64 -Descending

$process | Where-Object {$_.CPU -gt 500}
$process | Sort-Object WorkingSet64 -Descending

$total = 2 + 2
$total
$total | Get-Member
===============================================

$total = "2 + 2"
$total
$total | Get-Member

===============================================

$num1 = "2"
$num2 = "2"
$sum = $num1 + $num2
$sum

===============================================

[int]$num1 = "2"
[int]$num2 = "2"
$sum = $num1 + $num2
$sum.ToString() | Get-Member

===============================================

$literal = "Two plus two equals: $(2 + 2)"
$literal
$literal1 = 'Two plus two equals: $(2 + 2)'
$literal1
Write-Host '$literal'
Write-Host "$literal"
Write-Host '$literal1'
Write-Host "$literal1"

===============================================

$path = Read-Host -Prompt "Enter a path"
$rawfileData = Get-ChildItem -Path $path -Recurse
$rawfileData
$largeFiles = $rawfileData | Where-Object {$_.Length -lt 1KB}
$largeFiles
#$largeFilesCount = $largeFiles | Measure-Object | Select-Object -ExpandProperty Count
$largeFilesCount = $largeFiles.Count
$largeFilesCount