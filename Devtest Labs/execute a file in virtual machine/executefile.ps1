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

$ErrorActionPreference = "Stop"

Push-Location $PSScriptRoot

function Handle-LastError
{
    [CmdletBinding()]
    param(
    )

    $message = $error[0].Exception.Message
    if ($message)
    {
        Write-Host -Object "ERROR: $message" -ForegroundColor Red
    }
    
    exit -1
}



trap

    Handle-LastError
}

try
{

    if (-not [System.IO.Path]::IsPathRooted($Path))
    {
        $Path = Join-Path $Env:Temp $Path
    }
    Write-Host "Ensuring local path $Path"
    New-Item -ItemType Directory -Force -Path (Split-Path -parent $Path) | Out-Null

    Write-Host "Downloading file from $Uri"
    Invoke-WebRequest -Uri $Uri -OutFile $Path -TimeoutSec $TimeoutSec
}
finally
{
    Pop-Location
}