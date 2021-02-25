@echo off

::We are instantiating two objects a and b of types myClass and myClass2

::myClass inherits from myClass2
call new myClass a construct
call new myClass2 b construct

::Echoing out the attribute list of a and b
call # a __dict__
echo.
call # b __dict__
