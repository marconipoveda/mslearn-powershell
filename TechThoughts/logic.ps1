$path = "C:\Users\MarconiPoveda\"
$evalPath = Test-Path $path

if ($evalPath -eq $true) {
    Write-Host "Path exists"
}
else {
    Write-Host "Path does not exist"
}

===================================

[int]$valueEntered = Read-Host "Enter a number"
switch ($valueEntered) {
    1 {
        Write-Host "You entered One"
    }
    2 {
        Write-Host "You entered Two"
    }
    3 {
        Write-Host "You entered Three"
    }
    4 {
        Write-Host "You entered Four"
    }
    Default {
        Write-Host "You entered an invalid number"
    }
}


===================================

for ($i = 0; $i -le 15; $i++) {
    Write-Host "The value of i is $i" -BackgroundColor $i -ForegroundColor $i
}

===================================

$aString = "This is a string"
$rString = ""

for ($i = $aString.Length; $i -ge 0; $i--) {
    $rString += $aString[$i]
}
Write-Host $rString -ForegroundColor Cyan

===================================

$path = "C:\Users\MarconiPoveda\devops\"
[int]$totalSize = 0
$fileInfo = Get-ChildItem $path -Recurse
foreach ($item in $fileInfo) {
    $totalSize += $item.Length
}
Write-Host "The total size of the files in $path is $($totalSize/1GB) Gbytes"