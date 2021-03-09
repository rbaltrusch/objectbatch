# Inheritance

Inheritance in objectbatch is implemented using the *super* keyword, which uses the *\_\_super\_\_* variable. The latter typically is defined at the top of a class definition along with the class header. If a *\_\_super\_\_* variable is not defined for a particular class, it automatically inherits from *object*.

The following class header defines the superclass *myClass2*:

```batch
set __super__=myClass2
call class %*
%class%
```

Note that a call to *super*, which is used in methods, such as the constructor or other inherited methods, "consumes" the *\_\_super\_\_* variable by setting it to zero. This has the effect that combining method calls to multiple inherited methods is not possible in a single method.

## How to run

To run this example, run:

	cd /d <path_to_example_folder>
	main

Note that objectbatch needs to be on your [Windows PATH](https://stackoverflow.com/questions/9546324/adding-a-directory-to-the-path-environment-variable-in-windows) in order to run this example.

## More information

For a basic example, please have a look at the [simple example](https://github.com/rbaltrusch/objectbatch/tree/master/examples/simple_class) first.

More information is available in the [other examples](https://github.com/rbaltrusch/objectbatch/tree/master/examples) and the [wiki](https://github.com/rbaltrusch/objectbatch/wiki).
