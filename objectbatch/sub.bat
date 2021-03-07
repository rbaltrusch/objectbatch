@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#sub
	exit /b 0
)

set _self=%self%
call new %*
for /f "tokens=1,2,3 delims=.=" %%a in ('set %self%') do (
	set %_self%.%~2.%%b=%%c
)
set %_self%.%~2=%self%
set self=%_self%
