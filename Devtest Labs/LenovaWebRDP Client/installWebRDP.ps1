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
$webrdplic = "https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=148f89d5479e643ba9d8ea518471c223a&authkey=AT6cmaKmfFZAacJeEpqZXvc"

$webrdplicensepath = "${env:Temp}\G7_CR_Technologies-license.swl"

try
{
    (New-Object System.Net.WebClient).DownloadFile($webrdplic, $webrdplicensepath )
}
catch
{
    Write-Error "Failed to download webrdp license file"
}

Write-Host "downloaded webRDP license file successfully"

$autoiturl = "https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=1f04930c056394cefa2d2bb14adff27de&authkey=AW5nU8odtmrt7jhLtikDPf4"

$autoitexepath = "${env:Temp}\clientLenova.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($autoiturl, $autoitexepath )
}
catch
{
    Write-Error "Failed to download autoitwebrdpclient exe"
}

Write-Host "downloaded autoit webRDP "

try
{
    Start-Process -FilePath $autoitexepath -ArgumentList "/VERYSILENT /MERGETASKS=!runcode "
}
catch
{
    Write-Error 'Failed to install clientlenova'
}
