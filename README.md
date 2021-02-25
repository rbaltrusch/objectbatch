# Object oriented batch

Objectbatch is an object-oriented extension of the Windows batchfile language, including classes and instances, methods and attributes, inheritance, encapsulation, polymorphism and object composition.

Simple use of a class instance:
```batch
::instantiate new object obj of type MyClass
call new MyClass obj construct

::calling method myMethod of instance obj
call # obj myMethod

::reading obj attribute myAttr
echo !%obj%.myAttr!

::writing obj attribute myAttr
set %obj%.myAttr=1
```

Simple class definition:
```batch
::boilerplate
call class %*
%class%

::this is the constructor, adding one custom attribute attr
:public-construct
    call super %*
    set %self%.attr=0
exit /b
```

## Getting started

To get a copy of this repository, simply open up git bash in an empty folder and use the command:

    $ git clone https://github.com/rbaltrusch/objectbatch

To use objectbatch anywhere, add the objectbatch folder to your Windows PATH.

## More information

For more information on the various object-oriented features available, please have a look at the [examples](https://github.com/rbaltrusch/objectbatch/tree/master/examples) and the [wiki](https://github.com/rbaltrusch/objectbatch/wiki).

## Contributions

Any contributions, such as additional features, bugfixes, or documentation are much appreciated. Contribution guidelines are specified in [CONTRIBUTING.md](https://github.com/rbaltrusch/objectbatch/blob/master/CONTRIBUTING.md).

## License

This repository is open-source software available under the [MIT license](https://github.com/rbaltrusch/objectbatch/blob/master/LICENSE).

## Contact

Please raise an issue for code changes. To reach out, please send an email to richard@baltrusch.net.
