@echo off

call new List mylist construct
call # mylist append 1
call # mylist append 2
call # mylist append 3
call # mylist append 4

call # mylist pop 3

echo full list of elements:
call # mylist print
echo.

call # mylist set 2 5
call # mylist get 2
echo value of third element: %element%
