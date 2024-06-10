[CmdletBinding()]
param (
    [string]$Path = './app',
    [string]$DestinationPath = './',
    [switch]$PathIsWebApp
)

if ($PathIsWebApp -eq $true){
    try {
        $ContainsApplicationFiles = "$((Get-ChildItem $Path).Extension | Sort-Object -Unique)" -match '\.js|\.css|\.html'
        if (-not $ContainsApplicationFiles){
            Throw "The directory $Path does not contain any application files"
        } else {
            Write-Host "The directory $Path contains application files"
        }
    }
    catch {
        Throw "No backup created: $($_.Exception.Message)"
    }
}


if (-not (Test-Path $Path)) {
    Throw "The source directory $Path does not exist, please specify a valid directory"
}

$date = Get-Date -format "yyyy-MM-dd"
$DestinationFile = "$($DestinationPath + 'backup-' + $date + '.zip')"
If (-not (Test-Path $DestinationFile))
{
    Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinatioPath + 'backup-' + $date)"
    Write-Host "Created backup at $($DestinatioPath + "backup-" + $date + '.zip')"
} Else{
    Write-Error "Backup file already exists at $DestinationFile"
}
