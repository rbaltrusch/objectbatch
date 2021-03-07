# Encapsulation

Objectbatch directly supports [method encapsulation](https://github.com/rbaltrusch/objectbatch/tree/master/examples/encapsulation/method_encapsulation) with private, protected and public access levels.

[Attribute encapsulation](https://github.com/rbaltrusch/objectbatch/tree/master/examples/encapsulation/attribute_encapsulation) is not directly supported. Instead, a Python-like naming convention can be used for attribute names:
```batch
::public attribute
obj.attr

::private attribute
obj._attr
```

## How to run

To run this example, run:

	cd /d <path_to_example_folder>
	main

Note that objectbatch needs to be on your [Windows PATH](https://stackoverflow.com/questions/9546324/adding-a-directory-to-the-path-environment-variable-in-windows) in order to run this example.

## More information

For a basic example, please have a look at the [simple example](https://github.com/rbaltrusch/objectbatch/tree/master/examples/simple_class) first.

More information is available in the [other examples](https://github.com/rbaltrusch/objectbatch/tree/master/examples) and the [wiki](https://github.com/rbaltrusch/objectbatch/wiki/Encapsulation).
