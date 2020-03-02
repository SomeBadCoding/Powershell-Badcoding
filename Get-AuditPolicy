@echo off

mkdir C:\Users\%username%\Desktop\AuditLogs\
"C:\Windows\System32\auditpol.exe" /get /category:* >> "C:\Users\%username%\Desktop\AuditLogs\auditpol.txt"
"C:\Windows\System32\auditpol.exe" /list /subcategory:* /v >> "C:\Users\%username%\Desktop\AuditLogs\auditpolSubcat.txt"
"C:\Windows\System32\gpresult.exe" /Z >> "C:\Users\%username%\Desktop\AuditLogs\gpresult.txt"

pause
