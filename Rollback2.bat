@echo off
powershell -Command "Start-Process powershell -ArgumentList 'Set-ItemProperty -Path \"HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications\" -Name \"DisableEnhancedNotifications\" -Value 1' -Verb runAs -WindowStyle Hidden"
