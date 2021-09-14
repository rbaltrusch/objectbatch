call class %*
%class%

:public-__dict__ --> 1:objectname
	call super %*
exit /b

:public-construct --> 1:objectname
	call super %*
	set %self%.a=0
	set %self%.b=1
exit /b
