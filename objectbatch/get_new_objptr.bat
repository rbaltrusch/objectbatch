@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#get_new_objptr
	exit /b 0
)

if not defined %~1 (
	call get_new_ptr %~1
)
