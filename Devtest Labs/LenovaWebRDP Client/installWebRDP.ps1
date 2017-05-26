set-executionpolicy remotesigned -Force
Start-Sleep(10)
$vscodeSetup = "Z:\LenovaClient\clientLenova.exe"
try
{
    Start-Process -FilePath $vscodeSetup -Verb RunAs 
}
catch
{
    Write-Error 'Failed to install ClientLenova'
}