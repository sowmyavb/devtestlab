[CmdletBinding()]
param(
    [ValidateNotNullOrEmpty()]
    [Parameter(Mandatory=$True)]
    [string] $Uri,
    
    [ValidateNotNullOrEmpty()]
    [Parameter(Mandatory=$True)]
    [string] $Path,
    
    [int] $TimeoutSec = 60
)

Push-Location $PSScriptRoot

try
{
    # Ensure the path is available.
    if (-not [System.IO.Path]::IsPathRooted($Path))
    {
        $Path = Join-Path $Env:Temp $Path
    }
    Write-Host "Ensuring local path $Path"
    New-Item -ItemType Directory -Force -Path (Split-Path -parent $Path) | Out-Null

    # Download requested file.
    Write-Host "Downloading file from $Uri"
    Invoke-WebRequest -Uri $Uri -OutFile $Path 
}
finally
{
    Pop-Location
}