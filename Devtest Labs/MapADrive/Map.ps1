#parameters
param(
    [Parameter]
    [AllowEmptyString()]
    [string] $storageacc,

    [Parameter (Mandatory=$True)]
    [string] $user,

    [Parameter (Mandatory=$True)]
    [string] $key

)

try
{
cmdkey /add:$storageacc.file.core.windows.net /user:$user /pass:$key
net use z: \\$storageacc.file.core.windows.net\$filesharename
}
catch
{
    Write-Error "Failed to map file share" 
}


