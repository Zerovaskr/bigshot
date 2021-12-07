dim wshshell
set wshshell = wscript.createobject("wscript.shell")
wshshell.run "%homedrive%%homepath%\bigshot\handle.bat", 0
wshshell.run "%homedrive%%homepath%\bigshot\signal.bat", 0
