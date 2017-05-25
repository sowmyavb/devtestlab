cmdkey /add:executeablesrepo.file.core.windows.net /user:executeablesrepo /pass:a9I1VAGZyxE9Vn+apQ8dSL6LPkM5FOAqA5DGJJk0OFNKbo/yFaGFVi5HbDgiKQEcvz6z8eWje6jhwuk8D7ubjw==
net use Z: \\executeablesrepo.file.core.windows.net\repo
sleep(20)
Start-Process -FilePath "Z:\webRDP-Client_1.2.0.42-64.exe" -Verb RunAs