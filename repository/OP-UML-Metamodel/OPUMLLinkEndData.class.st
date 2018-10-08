"
LinkEndData is an Element that identifies on end of a link to be read or written by a LinkAction. As a link (that is not a link object) cannot be passed as a runtime value to or from an Action, it is instead identified by its end objects and qualifier values, if any. A LinkEndData instance provides these values for a single Association end.
"
Class {
	#name : #OPUMLLinkEndData,
	#superclass : #OPUMLElement,
	#instVars : [
		'end',
		'qualifiers',
		'value'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'operations - stubs' }
OPUMLLinkEndData >> allPinsStub [
	"Returns all the InputPins referenced by this LinkEndData. By default this includes the value and qualifier InputPins, but subclasses may override the operation to add other InputPins."
	
	"{OCL} result = (value->asBag()->union(qualifier.value))"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLLinkEndData >> end [
	"The Association end for which this LinkEndData specifies values."
	^ end
]

{ #category : #accessing }
OPUMLLinkEndData >> end: aProperty [
	"The Association end for which this LinkEndData specifies values."
	end := aProperty
]

{ #category : #initialization }
OPUMLLinkEndData >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLLinkEndData >> initializeSharedGeneralizations [
	sharedGeneralizations at: #LinkEndData put: self.
]

{ #category : #accessing }
OPUMLLinkEndData >> qualifiers [
	"A set of QualifierValues used to provide values for the qualifiers of the end."
	^ qualifiers ifNil: [ qualifiers := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLLinkEndData >> qualifiers: aQualifierValue [
	"A set of QualifierValues used to provide values for the qualifiers of the end."
	qualifiers := aQualifierValue
]

{ #category : #accessing }
OPUMLLinkEndData >> value [
	"The InputPin that provides the specified value for the given end. This InputPin is omitted if the LinkEndData specifies the ""open"" end for a ReadLinkAction."
	^ value
]

{ #category : #accessing }
OPUMLLinkEndData >> value: anInputPin [
	"The InputPin that provides the specified value for the given end. This InputPin is omitted if the LinkEndData specifies the ""open"" end for a ReadLinkAction."
	value := anInputPin
]
