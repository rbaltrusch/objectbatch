call class %*
%class%

:__dict__ --> 1:objectname
	call super %*
exit /b

:construct --> 1:objectname
	call super %*
	set %self%.a=0
	set %self%.c=1
exit /b
