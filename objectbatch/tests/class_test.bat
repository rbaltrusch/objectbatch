@echo off
goto :main

:public-method
	setlocal enabledelayedexpansion
		set rv=!%self%.a!
	endlocal & set rv=%rv%
exit /b 0

:main
	set obj=$123
	set $123.a=test
	call class obj method
	set rv=0
	%class%
	call assert "%rv%" EQU test "Content of attribute a should be test!"
exit /b %errorlevel%