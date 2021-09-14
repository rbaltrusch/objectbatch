set __super__=myClass2
call class %*
%class%

:public-__dict__ --> 1:objectname
	call super %*
exit /b

:public-construct --> 1:objectname
	call super %*

	::Accessing private attr of super class is possible:
	call getattr self _a
	echo accessing private super attr _a: %attr%

	set %self%.b=2
	
	::Using leading underscore variable name convention to specify private attribute
	set %self%._c=3
exit /b
