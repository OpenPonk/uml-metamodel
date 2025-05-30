"
A model captures a view of a physical system. It is an abstraction of the physical system, with a certain purpose. This purpose determines what is to be included in the model and what is irrelevant. Thus the model completely describes those aspects of the physical system that are relevant to the purpose of the model, at the appropriate level of detail.
"
Class {
	#name : 'OPUMLModel',
	#superclass : 'OPUMLPackage',
	#category : 'OpenPonk-UML-Metamodel-Packages',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Packages'
}

{ #category : 'testing' }
OPUMLModel class >> isDeprecated [

	^ true
]

{ #category : 'instance creation' }
OPUMLModel class >> new [

	^ OPUMLPackage new
]
