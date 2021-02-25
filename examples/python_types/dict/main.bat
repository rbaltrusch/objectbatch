@echo off

call new Dict mydict construct
call # mydict set a 1
call # mydict set b hello
call # mydict set c 23

call # mydict get a
echo value of a: %value%

call # mydict delete a

call # mydict __dict__
