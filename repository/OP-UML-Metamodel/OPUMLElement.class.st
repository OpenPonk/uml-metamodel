"
An Element is a constituent of a model. As such, it has the capability of owning other Elements.
"
Class {
	#name : #OPUMLElement,
	#superclass : #OPUMLMetaElement,
	#instVars : [
		'ownedElements',
		'owner',
		'ownedComments'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #'operations - stubs' }
OPUMLElement >> allOwnedElementsStub [
	"The query allOwnedElements() gives all of the direct and indirect ownedElements of an Element."
	
	"{OCL} result = (ownedElement->union(ownedElement->collect(e | e.allOwnedElements()))->asSet())"
	
	self notYetImplemented

]

{ #category : #initialization }
OPUMLElement >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Element put: self.
]

{ #category : #'operations - stubs' }
OPUMLElement >> mustBeOwnedStub [
	"The query mustBeOwned() indicates whether Elements of this type must have an owner. Subclasses of Element that do not require an owner must override this operation."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLElement >> ownedComments [
	"The Comments owned by this Element."
	^ ownedComments ifNil: [ ownedComments := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLElement >> ownedComments: aComment [
	"The Comments owned by this Element."
	ownedComments := aComment
]

{ #category : #accessing }
OPUMLElement >> ownedElements [
	"The Elements owned by this Element."
	^ ownedElements ifNil: [ ownedElements := OPUMLToManyLinks on: self identity opposite: #owner: ]
]

{ #category : #accessing }
OPUMLElement >> ownedElements: anElement [
	"The Elements owned by this Element."
	self ownedElements
		removeAll;
		addAll: anElement
]

{ #category : #accessing }
OPUMLElement >> owner [
	"The Element that owns this Element."
	^ owner
]

{ #category : #accessing }
OPUMLElement >> owner: anElement [
	"The Element that owns this Element."
	owner := OPUMLToOneLink
		on: self identity
		update: #ownedElements
		from: owner
		to: anElement
]
