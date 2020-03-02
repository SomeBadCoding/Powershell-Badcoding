$DaysToDelete = 365

$temporaryIEDir = "C:\users\*\AppData\Local\Microsoft\Windows\Temporary Internet Files\*" ## Remove all files and folders in user's Temporary Internet Files. 
$cachesDir = "C:\Users\*\AppData\Local\Microsoft\Windows\Caches"  ## Remove all IE caches. 
$cookiesDir = "C:\Documents and Settings\*\Cookies\*" ## Deletes all cookies. 
$locSetDir = "C:\Documents and Settings\*\Local Settings\Temp\*"  ## Deletes all local settings temp 
$locSetIEDir = "C:\Documents and Settings\*\Local Settings\Temporary Internet Files\*"   ## Deletes all local settings IE temp 
$locSetHisDir = "C:\Documents and Settings\*\Local Settings\History\*"  ## Deletes all local settings history

Get-ChildItem $temporaryIEDir, $cachesDir, $cookiesDir, $locSetDir, $locSetIEDir, $locSetHisDir -Recurse -Force -Verbose -ErrorAction SilentlyContinue | Where-Object { ($_.CreationTime -lt $(Get-Date).AddDays(-$DaysToDelete)) } | remove-item -force -Verbose -recurse -ErrorAction SilentlyContinue

$DaysToDelete = 365

$crLauncherDir = "C:\Documents and Settings\%USERNAME%\Local Settings\Application Data\Chromium\User Data\Default"
$chromeDir = "C:\Users\*\AppData\Local\Google\Chrome\User Data\Default"
$chromeSetDir = "C:\Users\*\Local Settings\Application Data\Google\Chrome\User Data\Default"

$Items = @("*Archived History*", "*Cache*", "*Cookies*", "*History*", "*Login Data*", "*Top Sites*", "*Visited Links*", "*Web Data*")

$items | ForEach-Object {
$item = $_ 
Get-ChildItem $crLauncherDir, $chromeDir, $chromeSetDir -Recurse -Force -ErrorAction SilentlyContinue | 
    Where-Object { ($_.CreationTime -lt $(Get-Date).AddDays(-$DaysToDelete)) -and $_ -like $item} | ForEach-Object -Process { Remove-Item $_ -force -Verbose -recurse -ErrorAction SilentlyContinue }
}

Read-Host -Prompt "Press Enter to exit"
