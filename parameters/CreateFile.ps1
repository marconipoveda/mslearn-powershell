#CreateFile
param(
    # Parameter help description
    [Parameter(Mandatory, HelpMessage = "Please provide a valid Path")]
    [string]$Path
)

# Creates new file at $Path
if ([string]::IsNullOrEmpty($Path)) {
    Write-Error "Please provide a valid Path"
    return
}
else {
    #Notifies the user that the file was created
    Write-Host "Creating file at $Path"
    New-Item $Path
}
