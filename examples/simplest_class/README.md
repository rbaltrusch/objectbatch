# Simplest Class

This example highlights the necessary boilerplate code to declare a simple class using objectbatch, with no attributes and no methods except a constructor.

The syntax is as in the example below, with a mandatory header (with some extra *magic code* executed on line 2, which is stored in the variable *class*. This *class* variable is declared in the *class.bat* objectbatch keyword script).
Below the header, we declare a simple constructor method (note the *public-* prefix in front of the constructor, which is required to declare public functions, such as constructors). Line numbers have been added for reference.
```batch
1	call class %*
2	%class%
3
4	:public-construct --> 1:objectname
5		call super %*
6	exit /b
```

In lines 1 and 2, we define the class header by calling the objectbatch inbuilt *class.bat*, which writes a macro type variable called *class*, which contains the header code required for our class. An in-depth explanation of the class header can be found in the [wiki](https://github.com/rbaltrusch/objectbatch/wiki/Class-header).

On line 4, we define the label public-construct, which is defining a public method with name construct, i.e. it can be called in the following way using the [*new*](https://github.com/rbaltrusch/objectbatch/wiki#new) keyword:
```batch
call new myClass obj construct
```

## How to run

To run this example, run:

	cd /d <path_to_example_folder>
	main

Note that objectbatch needs to be on your [Windows PATH](https://stackoverflow.com/questions/9546324/adding-a-directory-to-the-path-environment-variable-in-windows) in order to run this example.

## More information

For a basic example, please have a look at the [simple example](https://github.com/rbaltrusch/objectbatch/tree/master/examples/simple_class) first.

More information is available in the [other examples](https://github.com/rbaltrusch/objectbatch/tree/master/examples) and the [wiki](https://github.com/rbaltrusch/objectbatch/wiki).
