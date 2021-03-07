@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#getobjptr
	exit /b 0
)

if "%~1" EQU static (
	exit /b 0
)

if not defined %~2 (
	call getptr %*
)
