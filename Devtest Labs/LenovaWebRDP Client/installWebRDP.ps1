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

$url2 = 'https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=110c47c29580c4323963db133328f8911&authkey=AWZwK6ob8PS2wm5DpTn0P3w'

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
    start-sleep(10)
    Start-Process -FilePath $vscodeSetup2  -Verb RunAs
}
catch
{
    Write-Error 'Failed to install webrdpclient'
}

