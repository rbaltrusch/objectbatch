@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#clear
	exit /b 0
)

if defined %~1 (
	set clearptr=
	call getptr %~1 clearptr 1
	
	if "%clearptr%" NEQ "" (
		for /f "tokens=1,2 delims==" %%a in ('set %clearptr%') do (
			set %%a=
		)
	)

	set %~1=
)

exit /b 0
