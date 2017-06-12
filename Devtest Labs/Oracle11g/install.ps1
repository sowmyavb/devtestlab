
$drive = "C:\Program Files\Windows NT" 
$folderName = "oraclesetup" 
New-Item -Path $drive -Name $folderName -ItemType "directory"


$url = 'https://executeablesrepo.blob.core.windows.net/blob123/database11g.zip'

$vscodeSetup = "C:\Program Files\Windows NT\oraclesetup\database11g.zip"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url, $vscodeSetup)
    Write-Host "downloadning  successfull"
}
catch
{
    Write-Error "Failed to oraclesetup zip";
}

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "C:\Program Files\Windows NT\oraclesetup\database11g.zip" "C:\"


$responsefile= 'https://executeablesrepo.blob.core.windows.net/blob123/db11g.rsp'

$vscodeSetup1 = "C:\database\db.rsp"

try
{
    (New-Object System.Net.WebClient).DownloadFile($responsefile, $vscodeSetup1)
    Write-Host "downloadning  successfull"
}
catch
{
    Write-Error "Failed to download configurationfile";
}

Set-Location "C:\database"  

$filepath="C:\database\setup.exe"

try
{
   
    Start-Process -FilePath $filepath -ArgumentList "-silent -responseFile C:\database\db.rsp"

    Write-Host "Successfully installed initiated process of oracle11g";

}
catch
{
    Write-Error "Failed to install oracle11g in machine";
}
