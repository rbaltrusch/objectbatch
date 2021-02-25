::This is the simplest class possible, i.e. these 5 lines of boilerplate batch are required:
::class header (call class %* and %class%), and class constructor (label :public-construct)

call class %*
%class%

:public-construct --> 1:objectname
	call super %*
exit /b
