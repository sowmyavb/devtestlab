$webrdpclient = "https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=10bd8fb81d56e4e56bdfc2d6fa2b279f8&authkey=AZypeFFiadtFF2N0Pa4DOMw"

$webrdpclipath = "${env:Temp}\webRDP-Client_1.2.0.42-64.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($webrdpclient, $webrdpclipath )
}
catch
{
    Write-Error "Failed to download WebRDP Client Setup"
}
Write-Host "downloaded webRDP-Client_1.2.0.42-64.exe successfully"