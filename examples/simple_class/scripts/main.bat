@echo off

::make new instance obj of type SimpleClass by calling constructor
call new SimpleClass obj construct

::call method
call # obj myMethod

::read attribute
setlocal enabledelayedexpansion
	echo !%obj%.myAttr!
endlocal

::to read attributes without delayed expansion, use getattr:
call getattr obj myAttr
echo %attr% attr

::write attribute
set %obj%.myAttr=1
