::creates a new unique pointer value and assigns it to the first arg passed (varname)

@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#get_new_ptr
	exit /b 0
)

call get_guid ptr
setlocal enabledelayedexpansion
endlocal & set %~1=$%ptr%