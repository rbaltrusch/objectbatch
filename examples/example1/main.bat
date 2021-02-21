@echo off
call new myClass a construct
set %a%.b.a=23

call # %a%.b __dict__

call new myClass2 c construct
set %c%.x=2

call # a __dict__
call # c __dict__
