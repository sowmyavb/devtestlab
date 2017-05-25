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


Function Get-RedirectedUrl1
{
    
    Param (
        [Parameter(Mandatory=$true)]
        [String]$URL1
    )
    
    $request = [System.Net.WebRequest]::Create($url)
    $request.AllowAutoRedirect=$false
    $response=$request.GetResponse()
 
    If ($response.StatusCode -eq "Found")
    {
        $response.GetResponseHeader("Location")
    }
}


Function Get-RedirectedUrl2
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

$url = 'ftp://ftp.mphasism4l.cloud/WebRDP-1.2.0.63%20-%20New%20Version/webRDP-Client_1.2.0.63-64.exe'

$codeSetupUrl = Get-RedirectedUrl -URL $url

$vscodeSetup = "${env:Temp}\webRDP-Client_1.2.0.63-64.exe"


$url1 ='ftp://ftp.mphasism4l.cloud/G7_CR_Technologies-license.swl'

$codeSetupUrl1= Get-RedirectedUrl -URL $url1

$vscodeSetup1 = "${env:Temp}\G7_CR_Technologies-license.swl"


$url2 ='ftp://ftp.mphasism4l.cloud/clientLenova.exe'

$codeSetupUrl2= Get-RedirectedUrl -URL $url2

$vscodeSetup2 = "${env:Temp}\clientLenova.exe"


try
{
    (New-Object System.Net.WebClient).DownloadFile($codeSetupUrl, $vscodeSetup)
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}


try
{
    (New-Object System.Net.WebClient).DownloadFile($codeSetupUrl1, $vscodeSetup1)
}
catch
{
    Write-Error "Failed to download licence file"
}

try
{
    (New-Object System.Net.WebClient).DownloadFile($codeSetupUrl2, $vscodeSetup2)
}
catch
{
    Write-Error "Failed to download autoit exe"
}


try
{
    Start-Process -FilePath $vscodeSetup -ArgumentList "/VERYSILENT /MERGETASKS=!runcode "
}

catch
{
    Write-Error 'Failed to install WebRDP Client'
}

