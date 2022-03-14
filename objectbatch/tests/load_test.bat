@echo off

echo $123.a=testvalue>__testfile__
set $123.a=
call load __testfile__
call assert "%$123.a%" EQU "testvalue" "The value stored in attribute a of pointer $123 should equal testvalue after loading from file!"
if errorlevel 1 ( exit /b %errorlevel% )

call load __testfile__ delete
call assert not exist __testfile__ "__testfile__ should be deleted if optional argument delete is provided to the load function!"

exit /b %errorlevel%
