$drive = "C:\"
$folderName = "WEBRDPCLIENT" 
New-Item -Path $drive -Name $folderName -ItemType "directory"

$drive = "C:\WEBRDPCLIENT"
$folderName = "training" 
New-Item -Path $drive -Name $folderName -ItemType "directory"


$drive = "C:\Program Files (x86)\WindowsPowerShell\Modules"
$folderName = "WASP" 
New-Item -Path $drive -Name $folderName -ItemType "directory"

$drive = "C:\Program Files\WindowsPowerShell\Modules"
$folderName = "WASP" 
New-Item -Path $drive -Name $folderName -ItemType "directory"


$dll = 'https://executeablesrepo.blob.core.windows.net/blob123/WASP.dll'

$wasppath = "C:\Program Files (x86)\WindowsPowerShell\Modules\WASP\WASP.dll"

try
{
    (New-Object System.Net.WebClient).DownloadFile($dll, $wasppath)
    Write-Host "downloadning WAsp DLL successfull"
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}


$dll1 = 'https://executeablesrepo.blob.core.windows.net/blob123/WASP.dll'

$wasppath1 = "C:\Program Files\WindowsPowerShell\Modules\WASP\WASP.dll"

try
{
    (New-Object System.Net.WebClient).DownloadFile($dll1, $wasppath1)
    Write-Host "downloadning WAsp DLL successfull"
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}


$webrdpurl = 'https://executeablesrepo.blob.core.windows.net/blob123/webRDP-Client_1.2.0.42-64.exe'

$clientSetup = "C:\WEBRDPCLIENT\training\webRDP-Client_1.2.0.42-64.exe"

try
{
    (New-Object System.Net.WebClient).DownloadFile($webrdpurl, $clientSetup)
    Write-Host "downloadning WebRDP client successfull"
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}


$licurl = 'https://executeablesrepo.blob.core.windows.net/blob123/G7_CR_Technologies-license.swl'

$vscodeSetup1 = "C:\WEBRDPCLIENT\training\G7_CR_Technologies-license.swl"

try
{
    (New-Object System.Net.WebClient).DownloadFile($licUrl, $vscodeSetup1)
    Write-Host "downloadning license file successfull"
}
catch
{
    Write-Error "Failed to download WebRDP Setup"
}


#*$psurl = 'https://executeablesrepo.blob.core.windows.net/blob123/client.ps1'

#$pssetup = "C:\WEBRDPCLIENT\training\client.ps1"

#try
#{
  #  (New-Object System.Net.WebClient).DownloadFile($psUrl, $pssetup)
 #   Write-Host "downloadning client ps1 successfull"
#}
#catch
#{
#    Write-Error "Failed to download WebRDP Setup"
#}

try
{

Import-Module WASP -Force 

Start-Process -FilePath "C:\WEBRDPCLIENT234\training\webRDP-Client_1.2.0.42-64.exe"
Start-Sleep -Seconds 20
$ProcessName = Get-Process | Where-Object { $Name_ -Like 'webRDP-Client_1.2.0.42-64*' } |ForEach-Object {$Name_}

#1st WINDOW
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '~'
Start-Sleep -Seconds 2

#2nd WINDOW
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '{UP}'
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '(%{a})'
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '~'			
Start-Sleep -Seconds 2 

#3rd WINDOW
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '~'			
Start-Sleep -Seconds 2

#4th window
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{BACKSPACE}'
Select-window $ProcessName | Send-Keys '{BACKSPACE}'
Select-window $ProcessName | Send-Keys '{BACKSPACE}'
Select-window $ProcessName | Send-Keys 'C:\WEBRDPCLIENT\training\G7_CR_Technologies-license.swl'
Start-Sleep -Seconds 2
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '~'
Start-Sleep -Seconds 2

#5th Window
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '{TAB}'
Select-window $ProcessName | Send-Keys '~'
Start-Sleep -Seconds 2

#6th Window
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '~'
Start-Sleep -Seconds 15

#7th Window
Select-window $ProcessName | Set-WindowActive
Select-window $ProcessName | Send-Keys '~'
Exit
}
catch
{
    Write-Error 'Failed to install client'
    Write-Host "error occured during the process"
}