"
LinkEndDestructionData is LinkEndData used to provide values for one end of a link to be destroyed by a DestroyLinkAction.
"
Class {
	#name : #OPUMLLinkEndDestructionData,
	#superclass : #OPUMLElement,
	#instVars : [
		'destroyAt',
		'isDestroyDuplicates'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'operations - stubs' }
OPUMLLinkEndDestructionData >> allPinsStub [
	"Adds the destroyAt InputPin (if any) to the set of all Pins."
	
	"{OCL} result = (self.LinkEndData::allPins()->including(destroyAt))"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLLinkEndDestructionData >> destroyAt [
	"The InputPin that provides the position of an existing link to be destroyed in an ordered, nonunique Association end. The type of the destroyAt InputPin is UnlimitedNatural, but the value cannot be zero or unlimited."
	^ destroyAt
]

{ #category : #accessing }
OPUMLLinkEndDestructionData >> destroyAt: anInputPin [
	"The InputPin that provides the position of an existing link to be destroyed in an ordered, nonunique Association end. The type of the destroyAt InputPin is UnlimitedNatural, but the value cannot be zero or unlimited."
	destroyAt := anInputPin
]

{ #category : #'accessing - LinkEndData' }
OPUMLLinkEndDestructionData >> end [
	^ (sharedGeneralizations at: #LinkEndData) end
]

{ #category : #'accessing - LinkEndData' }
OPUMLLinkEndDestructionData >> end: aProperty [
	(sharedGeneralizations at: #LinkEndData) end: aProperty
]

{ #category : #initialization }
OPUMLLinkEndDestructionData >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #LinkEndData.
	}
]

{ #category : #initialization }
OPUMLLinkEndDestructionData >> initializeSharedGeneralizations [
	sharedGeneralizations at: #LinkEndData put: (OPUMLLinkEndData newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LinkEndDestructionData put: self.
]

{ #category : #accessing }
OPUMLLinkEndDestructionData >> isDestroyDuplicates [
	"Specifies whether to destroy duplicates of the value in nonunique Association ends."
	^ isDestroyDuplicates ifNil: [ isDestroyDuplicates := false ]
]

{ #category : #accessing }
OPUMLLinkEndDestructionData >> isDestroyDuplicates: aBoolean [
	"Specifies whether to destroy duplicates of the value in nonunique Association ends."
	isDestroyDuplicates := aBoolean
]

{ #category : #'accessing - LinkEndData' }
OPUMLLinkEndDestructionData >> qualifiers [
	^ (sharedGeneralizations at: #LinkEndData) qualifiers
]

{ #category : #'accessing - LinkEndData' }
OPUMLLinkEndDestructionData >> qualifiers: aQualifierValue [
	(sharedGeneralizations at: #LinkEndData) qualifiers: aQualifierValue
]

{ #category : #'accessing - LinkEndData' }
OPUMLLinkEndDestructionData >> value [
	^ (sharedGeneralizations at: #LinkEndData) value
]

{ #category : #'accessing - LinkEndData' }
OPUMLLinkEndDestructionData >> value: anInputPin [
	(sharedGeneralizations at: #LinkEndData) value: anInputPin
]
