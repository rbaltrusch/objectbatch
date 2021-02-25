@echo off

::Instantiating obj a of type myClass. myClass inherits from myClass2
::Note that the myClass constructor calls private method myPrivateMethod (this works fine).
call new myClass a construct

::Calling public method1 (this works, as it is set to public in the top level class)
call # a method1

::Calling public method2 of inherited class myClass2 FAILS because we did not add it to the top level class using super
call # a method2

::Calling private top level method myPrivateMethod also FAILS as it is not public:
call # a myPrivateMethod

::We can verify that the private method call of the constructor succeeded using __dict__ (attr b should be equal to 1)
call # a __dict__
