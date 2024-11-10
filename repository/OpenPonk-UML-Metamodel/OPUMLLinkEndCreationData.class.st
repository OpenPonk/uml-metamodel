"
LinkEndCreationData is LinkEndData used to provide values for one end of a link to be created by a CreateLinkAction.
"
Class {
	#name : 'OPUMLLinkEndCreationData',
	#superclass : 'OPUMLElement',
	#instVars : [
		'isReplaceAll',
		'insertAt'
	],
	#category : 'OpenPonk-UML-Metamodel-Actions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'operations - stubs' }
OPUMLLinkEndCreationData >> allPinsStub [
	"Adds the insertAt InputPin (if any) to the set of all Pins."
	
	"{OCL} result = (self.LinkEndData::allPins()->including(insertAt))"
	
	self notYetImplemented

]

{ #category : 'accessing - LinkEndData' }
OPUMLLinkEndCreationData >> end [
	^ (sharedGeneralizations at: #LinkEndData) end
]

{ #category : 'accessing - LinkEndData' }
OPUMLLinkEndCreationData >> end: aProperty [
	(sharedGeneralizations at: #LinkEndData) end: aProperty
]

{ #category : 'initialization' }
OPUMLLinkEndCreationData >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #LinkEndData.
	}
]

{ #category : 'initialization' }
OPUMLLinkEndCreationData >> initializeSharedGeneralizations [
	sharedGeneralizations at: #LinkEndData put: (OPUMLLinkEndData newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LinkEndCreationData put: self.
]

{ #category : 'accessing' }
OPUMLLinkEndCreationData >> insertAt [
	"For ordered Association ends, the InputPin that provides the position where the new link should be inserted or where an existing link should be moved to. The type of the insertAt InputPin is UnlimitedNatural, but the input cannot be zero. It is omitted for Association ends that are not ordered."
	^ insertAt
]

{ #category : 'accessing' }
OPUMLLinkEndCreationData >> insertAt: anInputPin [
	"For ordered Association ends, the InputPin that provides the position where the new link should be inserted or where an existing link should be moved to. The type of the insertAt InputPin is UnlimitedNatural, but the input cannot be zero. It is omitted for Association ends that are not ordered."
	insertAt := anInputPin
]

{ #category : 'accessing' }
OPUMLLinkEndCreationData >> isReplaceAll [
	"Specifies whether the existing links emanating from the object on this end should be destroyed before creating a new link."
	^ isReplaceAll ifNil: [ isReplaceAll := false ]
]

{ #category : 'accessing' }
OPUMLLinkEndCreationData >> isReplaceAll: aBoolean [
	"Specifies whether the existing links emanating from the object on this end should be destroyed before creating a new link."
	isReplaceAll := aBoolean
]

{ #category : 'accessing - LinkEndData' }
OPUMLLinkEndCreationData >> qualifiers [
	^ (sharedGeneralizations at: #LinkEndData) qualifiers
]

{ #category : 'accessing - LinkEndData' }
OPUMLLinkEndCreationData >> qualifiers: aQualifierValue [
	(sharedGeneralizations at: #LinkEndData) qualifiers: aQualifierValue
]

{ #category : 'accessing - LinkEndData' }
OPUMLLinkEndCreationData >> value [
	^ (sharedGeneralizations at: #LinkEndData) value
]

{ #category : 'accessing - LinkEndData' }
OPUMLLinkEndCreationData >> value: anInputPin [
	(sharedGeneralizations at: #LinkEndData) value: anInputPin
]
