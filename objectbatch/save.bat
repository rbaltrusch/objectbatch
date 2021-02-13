@echo off
goto :main

:main 1:savefile 2:elements
	setlocal enabledelayedexpansion
		::remove savefile
		if exist %~1 ( del %~1 )
		
		::loop through elements and redirect them to savefile
		set counter=1
		for %%a in ( %* ) do (
			::skip the first two arguments
			if !counter! GEQ 2 (
				for /f "tokens=1,2 delims==" %%b in ('set %%a') do (
					echo %%b=%%c>> %~1
				)
			)
			set /a counter=!counter! + 1
		)
	endlocal
exit /b