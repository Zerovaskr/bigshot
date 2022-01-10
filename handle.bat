set active=0
set count=0
set count2=0
start %homedrive%%homepath%\bigshot\sound.vbs

:change1
if %count% gtr 24 goto a
start %homedrive%%homepath%\bigshot\change.vbs
set /a count=%count%+1
goto change1

:a
if not exist %homedrive%%homepath%\bigshot\running goto change2
set /a rand=(%RANDOM%*8/32768)+1
if %rand% equ 1 set active=text1.txt
if %rand% equ 2 set active=text2.txt
if %rand% equ 3 set active=text3.txt
if %rand% equ 4 set active=text4.txt
if %rand% equ 5 set active=video1.mp4
if %rand% equ 6 set active=video2.mp4
if %rand% equ 7 set active=video3.mp4
if %rand% equ 8 set active=video4.mp4
start %homedrive%%homepath%\bigshot\%active%
timeout /nobreak 7
goto a

:change2
if %count2% gtr 24 goto done
start %homedrive%%homepath%\bigshot\change2.vbs
set /a count2=%count2%+1
goto change2

:done
start %homedrive%%homepath%\bigshot\kicker.vbs
exit
