# Simple class

In this example, we define a simple class, with a constructor in which we define one custom attribute, *myAttr*, and one public method, *myMethod*. This example also showcases how attributes can be read and written to, and how methods, including the constructor, can be called. The class definition is as follows, with line numbers marked in for reference:

```batch
1	call class %*
2	%class%
3
4	:public-myMethod
5		echo hello from myMethod!
6	exit /b
7
8	:public-construct --> 1:objectname
9		call super %*
10		set %self%.myAttr=0
11	exit /b
```

The class header is defined one lines 1 and 2, 
## How to run

To run this example, run:

	cd /d <path_to_example_folder>
	main

Note that objectbatch needs to be on your [Windows PATH](https://stackoverflow.com/questions/9546324/adding-a-directory-to-the-path-environment-variable-in-windows) in order to run this example.

## More information

For a basic example, please have a look at the [simple example](https://github.com/rbaltrusch/objectbatch/tree/master/examples/simple_class) first.

More information is available in the [other examples](https://github.com/rbaltrusch/objectbatch/tree/master/examples) and the [wiki](https://github.com/rbaltrusch/objectbatch/wiki).
