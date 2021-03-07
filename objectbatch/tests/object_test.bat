@echo off

set self=
set obj=
call object obj construct
call assert defined self "Pointer self should change after object construction!"

::test that this __dict__ call produces no logged output except self.__class__
call object obj __dict__>__file__
call load __file__
del __file__

exit /b %errorlevel%
