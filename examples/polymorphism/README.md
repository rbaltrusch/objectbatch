# Polymorphism

Due to batch being essentially interpreted text, polymorphism is an object-oriented feature that objectbatch gets *"for free"*, meaning that it is essentially in-built to the language.

We can, for example, define two objects *a* and *b* of two different classes and call the *update* method for both of them exploiting polymorphism:

```batch
call new Class1 obj1 construct
call new Class2 obj2 construct
for %%o in (obj1 obj2) do ( call # %%o update )
```

## How to run

To run this example, run:

	cd /d <path_to_example_folder>
	main

Note that objectbatch needs to be on your [Windows PATH](https://stackoverflow.com/questions/9546324/adding-a-directory-to-the-path-environment-variable-in-windows) in order to run this example.

## More information

For a basic example, please have a look at the [simple example](https://github.com/rbaltrusch/objectbatch/tree/master/examples/simple_class) first.

More information is available in the [other examples](https://github.com/rbaltrusch/objectbatch/tree/master/examples) and the [wiki](https://github.com/rbaltrusch/objectbatch/wiki).
