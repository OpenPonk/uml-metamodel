# UML 2.5 Metamodel

This is work-in-progress implementation of the UML 2.5 Metamodel in Pharo.

The code is generated from specifications using https://github.com/OpenPonk/uml-bootstrap-generator

Any issues should also be reported in the generator https://github.com/OpenPonk/uml-bootstrap-generator/issues , and not here.

## Installation

```smalltalk
Metacello new
	baseline: 'UMLMetamodel';
	repository: 'github://OpenPonk/uml-metamodel/repository';
	load.
```
