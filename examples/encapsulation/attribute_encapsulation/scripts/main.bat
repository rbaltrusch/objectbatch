@echo off

::Instantiating obj a of type myClass. myClass inherits from myClass2
call new myClass a construct

::We can access public attribute b
call getattr a b
echo b : %attr%

::We can also access private attribute _c outside of the class (specified with leading underscore naming convention).
::However, this should be avoided
call getattr a _c
echo _c : %attr%
