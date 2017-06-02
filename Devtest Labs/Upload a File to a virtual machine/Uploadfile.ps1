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
