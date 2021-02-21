call class %*
set __class__=%~0
%class%

:__dict__ --> 1:objectname
	set %self%
exit /b

:construct --> 1:objectname
	call get_new_objptr self
	set %self%.__class__=%__class__%
	set %self%.test=1
	set %~1=%self%
exit /b
