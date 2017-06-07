$drive = "C:\Program Files\Windows NT" 
$folderName = "sqlsetup" 
New-Item -Path $drive -Name $folderName -ItemType "directory"

$url = 'https://executeablesrepo.blob.core.windows.net/blob123/SQLServer2016-x64-ENU.iso'

$vscodeSetup = "C:\Program Files\Windows NT\sqlsetup\SQLServer2016-x64-ENU.iso"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url, $vscodeSetup)
    Write-Host "downloadning  successfull"
}
catch
{
    Write-Error "Failed to download sql iso";
}

$url1 = 'https://executeablesrepo.blob.core.windows.net/blob123/ConfigurationFile.ini'

$vscodeSetup1 = "C:\ConfigurationFile.ini"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url1, $vscodeSetup1)
    Write-Host "downloadning  successfull"
}
catch
{
    Write-Error "Failed to download configurationfile";
}


try
{
    Mount-DiskImage -ImagePath "C:\Program Files\Windows NT\sqlsetup\SQLServer2016-x64-ENU.iso"
    Write-Host "Mounting  successfull"
}
catch
{
    Write-Error "failed to mount";
}

Set-Location "C:\"  

try
{
   
    F:\setup.exe /ConfigurationFile=ConfigurationFile.ini

    Write-Host "Successfully installed SQL Evaluation 2016";

}
catch
{
    Write-Error "Failed to install SQL in machine";
}
