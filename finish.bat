timeout /nobreak /t 10
if not exist bigshot del finish.bat
rd /s /q bigshot
del %temp%\bruh
del finish.bat
