try
{

net use S: \\adevtestlab5046.file.core.windows.net\myfileshare /u:AZURE\adevtestlab50462/O6l7NZQ1Bj0fDr6b861XQym81oMYuN66MnXKCGD3k13pCU5CxjBsFfRh4AFQT7IgTID8rb7Wi3E2onoAk2xQ==
}
catch
{
    Write-Error "Failed to map file share" 
}


