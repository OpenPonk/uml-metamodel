Class {
	#name : 'OPUMLToOneLink',
	#superclass : 'Collection',
	#category : 'OpenPonk-UML-Meta-Models',
	#package : 'OpenPonk-UML-Meta',
	#tag : 'Models'
}

{ #category : 'instance creation' }
OPUMLToOneLink class >> on: anOwner thisSelector: aThisSelector otherSelector: anOtherSelector from: anOldObject to: aNewObject [
	| thisSetter otherSetter |
	anOldObject = aNewObject
		ifTrue: [ ^ aNewObject ].
	thisSetter := (aThisSelector , ':') asSymbol.
	otherSetter := (anOtherSelector , ':') asSymbol.
	anOldObject ifNotNil: [ anOldObject perform: otherSetter with: nil ].
	aNewObject
		ifNotNil: [ (aNewObject perform: anOtherSelector)
				ifNotNil: [ :otherThis | 
					otherThis = anOwner
						ifFalse: [ otherThis perform: thisSetter with: nil ] ].
			aNewObject perform: otherSetter with: anOwner ].
	^ aNewObject
]

{ #category : 'instance creation' }
OPUMLToOneLink class >> on: anOwner thisSelector: aThisSelector otherSelector: anOtherSelector updateFrom: anOldObject to: aNewObject [
	| thisSetter otherSetter |
	anOldObject = aNewObject
		ifTrue: [ ^ aNewObject ].
	thisSetter := (aThisSelector , ':') asSymbol.
	otherSetter := (anOtherSelector , ':') asSymbol.
	anOldObject ifNotNil: [ anOldObject perform: otherSetter with: nil ].
	aNewObject
		ifNotNil: [ (aNewObject perform: anOtherSelector)
				ifNotNil: [ :otherThis | 
					otherThis = anOwner
						ifFalse: [ otherThis perform: thisSetter with: nil ] ].
			aNewObject perform: otherSetter with: anOwner ].
	^ aNewObject
]

{ #category : 'instance creation' }
OPUMLToOneLink class >> on: anOwner update: anOppositeSelector from: anOldObject to: aNewObject [
	anOldObject = aNewObject
		ifTrue: [ ^ aNewObject ].
	anOppositeSelector numArgs = 1
		ifTrue: [ |var|
			var := anOppositeSelector allButLast asSymbol.
			anOldObject ifNotNil: [ anOldObject instVarNamed: var put: nil ].
			aNewObject ifNotNil: [ aNewObject instVarNamed: var put: anOwner ].
			^ aNewObject ].
	anOldObject
		ifNotNil: [ (anOldObject perform: anOppositeSelector) uncheckedRemove: anOwner ].
	aNewObject ifNotNil: [ (aNewObject perform: anOppositeSelector) uncheckedAdd: anOwner ].
	^ aNewObject
]
