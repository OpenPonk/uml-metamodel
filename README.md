# UML 2.5 Metamodel

This is work-in-progress implementation of the complete UML Metamodel in Pharo.

The code is generated from specifications using https://github.com/OpenPonk/uml-bootstrap-generator

## Installation

```smalltalk
Metacello new
	baseline: 'UMLMetamodel';
	repository: 'github://OpenPonk/uml-metamodel/repository';
	load.
```