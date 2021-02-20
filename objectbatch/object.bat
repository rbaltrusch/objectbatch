@echo off
goto :__main__

:__main__ --> 1:objectname 2:methodname
	set __class__=%0
	call getptr %~1 self 1
	call :%~2 %*
exit /b

:__dict__ --> 1:objectname
	set %self%
exit /b

:construct --> 1:objectname
	call get_new_ptr self
	set %self%.type=%__class__%
	set %self%.test=1
	set %~1=%self%
exit /b
