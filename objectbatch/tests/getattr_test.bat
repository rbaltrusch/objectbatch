@echo off

set a=$123
set $123.att=test
call getattr a att
call assert "%attr%" EQU "test" "a.att should contain the value test"
exit /b %errorlevel%
