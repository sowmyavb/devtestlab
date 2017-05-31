$drive = "C:\Program Files\Windows NT" 
$folderName = "softwares" 
New-Item -Path $drive -Name $folderName -ItemType "directory"

$url = 'https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=10bd8fb81d56e4e56bdfc2d6fa2b279f8&authkey=AZypeFFiadtFF2N0Pa4DOMw'

$vscodeSetup = "C:\Program Files\Windows NT\softwares\webRDP-Client_1.2.0.42-64.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url, $vscodeSetup)
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}

$url1 = 'https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=148f89d5479e643ba9d8ea518471c223a&authkey=AT6cmaKmfFZAacJeEpqZXvc'

$vscodeSetup1 = "C:\Program Files\Windows NT\softwares\G7_CR_Technologies-license.swl"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url1, $vscodeSetup1)
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}

$url2 = 'https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=1f04930c056394cefa2d2bb14adff27de&authkey=AW5nU8odtmrt7jhLtikDPf4'

$vscodeSetup2 = "C:\Program Files\Windows NT\softwares\clientLenova.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($Url2, $vscodeSetup2)
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}

