@echo off

::myClass contains an attribute containing a subobject of class myClass2
call new myClass a construct

::looking at all attributes of obj a (this includes subobjects)
call # a __dict__
echo.

::accessing attribute of obj b, where b is contained in obj a
set %a%.b.a=23

::accessing method of obj b, where b is contained in obj a
::This will output only attributes of subobject b
call # %a%.b __dict__
