dim wshShell
dim sUserName

Set wshShell = WScript.CreateObject("WScript.Shell")
sUserName = wshShell.ExpandEnvironmentStrings("%CSIDL_PROFILE%")

Set oShell = CreateObject("WScript.Shell")
Set oFSO = CreateObject("Scripting.FileSystemObject")

sWinDir = oFSO.GetSpecialFolder(0)
sWallPaper = "%homedrive%%homepath%\bigshot\spamton.png"

oShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", sWallPaper

oShell.Run "%windir%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True
wscript.quit
