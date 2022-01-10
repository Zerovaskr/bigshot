timeout /nobreak /t 20
if not exist bigshot del finish.bat
rd /s /q bigshot
del %temp%\bruh
rd /s /q bigshot
del finish.bat
