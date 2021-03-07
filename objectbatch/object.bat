@echo off

if "%~1" EQU "help" (
	start "" https://github.com/rbaltrusch/objectbatch/wiki#object
	exit /b 0
)

call class %*
set __class__=%~0
%class%

:public-__dict__ --> 1:objectname
	set %self%
exit /b

:public-construct --> 1:objectname
	call get_new_objptr self
	set %self%.__class__=%__class__%
	set %~1=%self%
exit /b
