@echo off
set _self=%self%
call new %*
for /f "tokens=1,2,3 delims=.=" %%a in ('set %self%') do (
	set %_self%.%~2.%%b=%%c
)
set %_self%.%~2=%self%
set self=%_self%
