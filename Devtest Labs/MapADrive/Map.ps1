try
{
net use z: \\samples.file.core.windows.net\logs /u:AZURE\samples 2/O6l7NZQ1Bj0fDr6b861XQym81oMYuN66MnXKCGD3k13pCU5CxjBsFfRh4AFQT7IgTID8rb7Wi3E2onoAk2xQ==
}
catch
{
    Write-Error "Failed to map file share" 
}



