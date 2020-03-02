
Write-Host "Removing Temp Internet Files..."
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
Start-Sleep -s 10
Write-Host "Removed Temp Internet Files..."

Write-Host "Removing Cookies..."
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
Start-Sleep -s 10
Write-Host "Removed Cookies"

Write-Host "Removing History..."
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
Start-Sleep -s 10
Write-Host "Removed History"

Write-Host "Removing Form Data..."
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
Start-Sleep -s 10
Write-Host "Removed Form Data"

Write-Host "Removing Passwords..."
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
Start-Sleep -s 10
Write-Host "Removed Passwords"

Write-Host "Removing Cache"
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
Start-Sleep -s 10
Write-Host "Removed Cache"

Write-Host "Reseting IE + files and settings stored by Add-ons"
rundll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351
Start-Sleep -s 10
Write-Host "Reset Completed"

pause
