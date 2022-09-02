@echo off
title yoyo - Build Screen
set /p menu="Build game? [Y/N/C]"
       if %menu%==Y goto BuildGame
       if %menu%==y goto BuildGame
       if %menu%==N goto CancelGame
       if %menu%==n goto CancelGame
       if %menu%==C goto Credits
       if %menu%==c goto Credits
       cls
	   
:BuildGame 
cls
title yoyo - Building
set /p menu="Build debug? [Y/N/C]"
       if %menu%==Y goto BuildDebug
       if %menu%==y goto BuildDebug
       if %menu%==N goto BuildRelease
       if %menu%==n goto BuildRelease
       if %menu%==C goto Credits
       if %menu%==c goto Credits
       cls
	   
:BuildDebug
cls
title yoyo - Building Debug
echo Compiling, please wait...
lime test windows -debug
echo.
echo Debug build complete.
set /p menu="Recompile? [Y/N/C]"
       if %menu%==Y goto BuildDebug
       if %menu%==y goto BuildDebug
       if %menu%==N goto CancelGame
       if %menu%==n goto CancelGame
       if %menu%==C goto Credits
       if %menu%==c goto Credits
       cls
exit
	   
:BuildRelease
cls
title yoyo - Building
echo Compiling, please wait...
lime test windows -release
echo.
echo Relase build complete.
set /p menu="Recompile? [Y/N/C]"
       if %menu%==Y goto BuildRelease
       if %menu%==y goto BuildRelease
       if %menu%==N goto CancelGame
       if %menu%==n goto CancelGame
       if %menu%==C goto Credits
       if %menu%==c goto Credits
       cls
exit

:CancelGame 
cls
title yoyo - Cancelling
echo Build aborted. Press any key to continue.
exit 

:Credits
cls
title yoyo - Credits
echo yoyo
echo.
echo Dev links:
echo https://www.github.com/DillyzThe1
echo.
echo.
echo Press any key to continue.
exit
