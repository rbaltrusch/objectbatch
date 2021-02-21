set __super__=myClass2
call class %*
%class%

:__dict__ --> 1:objectname
	call super %*
exit /b

:construct --> 1:objectname
	call super %*
	call sub myClass3 b construct
	set %self%.x=0
	set %self%.y=0
exit /b
