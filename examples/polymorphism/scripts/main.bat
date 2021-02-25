@echo off

::make new instance obj of type Class1 and Class2
call new Class1 obj1 construct
call new Class2 obj2 construct


::Loop over them class-agnostically.
::This will call Class1.update once and Class2.update once
for %%o in (obj1 obj2) do (
	echo %%o
	call # %%o update
)
