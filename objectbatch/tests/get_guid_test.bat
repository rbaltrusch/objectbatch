@echo off

call get_guid a
call get_guid b
call assert "%a%" NEQ "%b%" "the generated unique ID should be unique!"
exit /b %errorlevel%
