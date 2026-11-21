"
I provide utility methods to manage a synchronized bidirectional reference to a single UML object. I automatically attach or detach the opposite side of a relationship when the primary reference is updated.
"
Class {
	#name : 'OPUMLToOneLink',
	#superclass : 'Object',
	#category : 'OpenPonk-UML-Meta-Models',
	#package : 'OpenPonk-UML-Meta',
	#tag : 'Models'
}

{ #category : 'instance creation' }
OPUMLToOneLink class >> on: anOwner thisSelector: aThisSelector otherSelector: anOtherSelector updateFrom: anOldObject to: aNewObject [

	| thisSetter otherSetter |
	anOldObject = aNewObject ifTrue: [ ^ aNewObject ].
	thisSetter := (aThisSelector , ':') asSymbol.
	otherSetter := (anOtherSelector , ':') asSymbol.
	anOldObject ifNotNil: [ (anOldObject perform: anOtherSelector) = anOwner ifTrue: [ anOldObject perform: otherSetter with: nil ] ].
	aNewObject ifNotNil: [
			| otherThis |
			otherThis := aNewObject perform: anOtherSelector.
			otherThis = anOwner ifFalse: [
					otherThis ifNotNil: [ otherThis perform: thisSetter with: nil ].
					aNewObject perform: otherSetter with: anOwner ] ].
	^ aNewObject
]

{ #category : 'instance creation' }
OPUMLToOneLink class >> on: anOwner update: anOppositeSelector from: anOldObject to: aNewObject [

	anOldObject = aNewObject ifTrue: [ ^ aNewObject ].
	anOldObject ifNotNil: [ (anOldObject perform: anOppositeSelector) uncheckedRemove: anOwner ].
	aNewObject ifNotNil: [ (aNewObject perform: anOppositeSelector) uncheckedAdd: anOwner ].
	^ aNewObject
]
