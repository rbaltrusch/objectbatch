@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#class
	exit /b 0
)

set "class=@echo off & call getobjptr %~1 self 1 & call :public-%~2 %* & exit /b"
exit /b
