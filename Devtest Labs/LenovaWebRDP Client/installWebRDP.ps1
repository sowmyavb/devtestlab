$drive = "C:\Program Files\Windows NT" 
$folderName = "softwares" 
New-Item -Path $drive -Name $folderName -ItemType "directory"

$url = 'https://executeablesrepo.blob.core.windows.net/blob123/webRDP-Client_1.2.0.42-64.exe'

$vscodeSetup = "C:\Program Files\Windows NT\softwares\webRDP-Client_1.2.0.42-64.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url, $vscodeSetup)
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
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}

$url2 = 'https://executeablesrepo.blob.core.windows.net/blob123/clientlenova.exe'

$vscodeSetup2 = "C:\Program Files\Windows NT\softwares\clientlenova.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url2, $vscodeSetup2)
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}

try
{
    Start-Process -FilePath $vscodeSetup2 -ArgumentList "/VERYSILENT /MERGETASKS=!runcode"
}
catch
{
    Write-Error 'Failed to install webrdpclient'
}

