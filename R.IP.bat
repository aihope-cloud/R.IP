@echo off
color 0a
echo _____________________________________________________ 
echo     ??????????              /           !!!!!!!!!!!!!!
echo   ?           ?                         !!           /
echo   ?           ?                         !!           /
echo   ?           ?             /           !!           /
echo   ?           ?             /           !!           /
echo    ???????????              /           !!!!!!!!!!!!!!
echo    ?          ?             /           !!
echo    ?           ?            /           !!
echo    ?            ?    ..     /           !!
echo    ?             ?   ..     /           !!
echo MENU
echo 1 turn Internet off temporarly.
echo 2 locate host file.
echo 3 copies ip information to a text document on your usb drive.
echo 4 Shut down blue tooth hardware.
echo 5
echo 6
echo 7 Rick Roll
echo 8 


set /p option=
if %option% == 1 goto ipss
if %option% == 2 goto hostss
if %option% == 3 goto ipsettingsss
if %option% == 7 goto browserrr


:ipss
echo IP RELEASE
ipconfig /release
ipconfig /release6
netsh wlan disconnect interface="Wi-Fi"
echo FINISHED
pause
exit 


:hostss
echo FINDING HOSTS
start C:\Windows\System32\drivers\etc
echo HOSTS FOUND
pause
exit 

:ipsettingsss
rem Saved in D:\This PC\USB Drive (D:)
ipconfig /all>testip.txt
pause
exit

:browserrr
echo Enter The Devices Browser Being FireFox, Microsoft Edge, Google Chrome, Chromuim Or Other Browser's This Device Owns.
set /p browser= 
start %browser% https://www.youtube.com/watch?v=dQw4w9WgXcQ