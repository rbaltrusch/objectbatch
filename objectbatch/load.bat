@echo off
goto :main

:main 1:savefile
	for /f "tokens=1,2 delims==" %%a in (%~1) do (
		set %%a=%%b
	)
	if %~2 EQU delete ( del %~1 )
exit /b
