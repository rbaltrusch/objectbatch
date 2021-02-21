call class %*
%class%

:__dict__ --> 1:objectname
	call super %*
exit /b

:construct --> 1:objectname
	call super %*
	set %self%.z=0
exit /b
