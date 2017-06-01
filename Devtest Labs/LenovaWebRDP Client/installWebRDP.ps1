$drive = "C:\Program Files\Windows NT" 
$folderName = "softwares" 
New-Item -Path $drive -Name $folderName -ItemType "directory"

$url2 = 'https://executeablesrepo.blob.core.windows.net/blob123/clientlenova.exe'

$vscodeSetup2 = "C:\Program Files\Windows NT\softwares\clientlenova.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url2, $vscodeSetup2)
    Write-Host "downloadning client lenova successfull"
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}

$url = 'https://executeablesrepo.blob.core.windows.net/blob123/webRDP-Client_1.2.0.42-64.exe'

$vscodeSetup = "C:\Program Files\Windows NT\softwares\webRDP-Client_1.2.0.42-64.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url, $vscodeSetup)
    Write-Host "downloadning WebRDP client successfull"
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}

$url1 = 'https://executeablesrepo.blob.core.windows.net/blob123/G7_CR_Technologies-license.swl'

$vscodeSetup1 = "C:\Program Files\Windows NT\softwares\G7_CR_Technologies-license.swl"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url1, $vscodeSetup1)
    Write-Host "downloadning license file successfull"
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}

Write-Host "Please wait starting the process"
try
{
    start-sleep(10)
    Start-Process -FilePath $vscodeSetup2  -Verb RunAs
    Write-Host "Process executed successfully"
}
catch
{
    Write-Error 'Failed to install webrdpclient'
    Write-Host "error occured during the process"
}

