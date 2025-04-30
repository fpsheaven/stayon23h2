@echo off
SETLOCAL

:: Create WindowsUpdate key if it doesn't exist
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f >nul

:: targetReleaseVersion to 1 
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v TargetReleaseVersion /t REG_DWORD /d 1 /f

:: targetReleaseVersionInfo to 23H2
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v TargetReleaseVersionInfo /t REG_SZ /d 23H2 /f

pause
ENDLOCAL
