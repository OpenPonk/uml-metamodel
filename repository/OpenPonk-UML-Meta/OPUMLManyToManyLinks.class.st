"
I am a specialized collection extending OPUMLToManyLinks to explicitly manage synchronized bidirectional many-to-many relationships between UML objects.
"
Class {
	#name : 'OPUMLManyToManyLinks',
	#superclass : 'OPUMLToManyLinks',
	#category : 'OpenPonk-UML-Meta-Models',
	#package : 'OpenPonk-UML-Meta',
	#tag : 'Models'
}

{ #category : 'adding' }
OPUMLManyToManyLinks >> addOppositeTo: anObject [
	(anObject perform: oppositeSelector) add: owner
]

{ #category : 'adding' }
OPUMLManyToManyLinks >> removeOppositeFrom: anObject [
	| opposite |
	opposite := anObject perform: oppositeSelector.
	(opposite includes: owner)
		ifTrue: [ opposite uncheckedRemove: owner ]
]
