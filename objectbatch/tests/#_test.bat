@echo off
set result=0
call get_new_ptr obj
set %obj%.__class__=tests/myClass
call # obj test
call assert %result% EQU 123 "Result should equal 123 but equals %result%"

set obj=
exit /b %errorlevel%
