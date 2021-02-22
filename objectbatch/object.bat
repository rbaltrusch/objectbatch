call class %*
set __class__=%~0
%class%

:public-__dict__ --> 1:objectname
	set %self%
exit /b

:public-construct --> 1:objectname
	call get_new_objptr self
	set %~1=%self%
exit /b
