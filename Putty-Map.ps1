$username = $env:UserName
Copy-Item "C:\Program Files\PuTTY\putty.exe" -Destination "C:\Users\$username\Desktop"
Write-Host "Putty copied successfully"
Start-Sleep -s 2
