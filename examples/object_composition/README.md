# Object composition

Object composition, meaning objects containing other objects, is achieved in objectbatch using the *sub* keyword. For example, if we have a class A defining attributes a and b, where b is another class B (which itself defines attributes c and d), the attribute structures would look as below:

    A.a
    A.b.c
    A.b.d
	
The example above may be implemented by defining the following constructor for class A:

```batch
:public-construct --> 1:objectname
	call super %*
	call sub B b construct
	set %self%.a=0
exit /b
```

## How to run

To run this example, run:

	cd /d <path_to_example_folder>
	main

Note that objectbatch needs to be on your [Windows PATH](https://stackoverflow.com/questions/9546324/adding-a-directory-to-the-path-environment-variable-in-windows) in order to run this example.

## More information

For a basic example, please have a look at the [simple example](https://github.com/rbaltrusch/objectbatch/tree/master/examples/simple_class) first.

More information is available in the [other examples](https://github.com/rbaltrusch/objectbatch/tree/master/examples) and the [wiki](https://github.com/rbaltrusch/objectbatch/wiki).
