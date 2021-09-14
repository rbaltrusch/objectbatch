call class %*
%class%

:public-__dict__ --> 1:objectname
	call super %*
exit /b

:public-construct --> 1:objectname
	call super %*
	call sub myClass2 b construct
	set %self%.x=0
	set %self%.y=0
exit /b
