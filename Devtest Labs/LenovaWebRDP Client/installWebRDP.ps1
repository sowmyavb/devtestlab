Function Get-RedirectedUrl
{
    Param (
        [Parameter(Mandatory=$true)]
        [String]$URL
    )
 
    $request = [System.Net.WebRequest]::Create($url)
    $request.AllowAutoRedirect=$false
    $response=$request.GetResponse()
 
    If ($response.StatusCode -eq "Found")
    {
        $response.GetResponseHeader("Location")
    }
}

$url = 'https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=10bd8fb81d56e4e56bdfc2d6fa2b279f8&authkey=AZypeFFiadtFF2N0Pa4DOMw'
$codeSetupUrl = Get-RedirectedUrl -URL $url
$vscodeSetup = "${env:Temp}\webRDP-Client_1.2.0.42-64.exe"


$url1 = 'https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=148f89d5479e643ba9d8ea518471c223a&authkey=AT6cmaKmfFZAacJeEpqZXvc'
$codeSetupUrl1= Get-RedirectedUrl -URL $url1
$vscodeSetup1 = "${env:Temp}\G7_CR_Technologies-license.swl"

$url2 = 'https://g7crtipl-my.sharepoint.com/personal/sowmya_badiger_g7cr_in/_layouts/15/guestaccess.aspx?docid=1f04930c056394cefa2d2bb14adff27de&authkey=AW5nU8odtmrt7jhLtikDPf4'
$codeSetupUrl2 = Get-RedirectedUrl -URL $url2
$vscodeSetup2 = "${env:Temp}\clientLenova.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($codeSetupUrl, $vscodeSetup)
}
catch
{
    Write-Error "Failed to download Webrdp Client"
}


try
{
    (New-Object System.Net.WebClient).DownloadFile($codeSetupUrl1, $vscodeSetup1)
}
catch
{
    Write-Error "Failed to download LicenseFile"
}

try
{
    (New-Object System.Net.WebClient).DownloadFile($codeSetupUrl2, $vscodeSetup2)
}
catch
{
    Write-Error "Failed to download AutoitWebrdp Setup"
}


try
{
    Start-Process -FilePath $vscodeSetup2 -ArgumentList "/VERYSILENT /MERGETASKS=!runcode "
}
catch
{
    Write-Error 'Failed to install VSCode'
}
