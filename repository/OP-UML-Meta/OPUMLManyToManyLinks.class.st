Class {
	#name : 'OPUMLManyToManyLinks',
	#superclass : 'OPUMLToManyLinks',
	#category : 'OP-UML-Meta-Models',
	#package : 'OP-UML-Meta',
	#tag : 'Models'
}

{ #category : 'adding' }
OPUMLManyToManyLinks >> addOppositeTo: anObject [
	(anObject perform: oppositeSelector) add: owner
]

{ #category : 'removing' }
OPUMLManyToManyLinks >> removeOppositeFrom: anObject [
	| opposite |
	opposite := anObject perform: oppositeSelector.
	(opposite includes: owner)
		ifTrue: [ opposite uncheckedRemove: owner ]
]
