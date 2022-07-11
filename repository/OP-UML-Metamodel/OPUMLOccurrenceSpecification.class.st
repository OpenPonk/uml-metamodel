"
An OccurrenceSpecification is the basic semantic unit of Interactions. The sequences of occurrences specified by them are the meanings of Interactions.
"
Class {
	#name : #OPUMLOccurrenceSpecification,
	#superclass : #OPUMLElement,
	#instVars : [
		'toBefores',
		'covered',
		'toAfters'
	],
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLOccurrenceSpecification >> covered [
	"References the Lifeline on which the OccurrenceSpecification appears."
	^ covered
]

{ #category : #accessing }
OPUMLOccurrenceSpecification >> covered: aLifeline [
	"References the Lifeline on which the OccurrenceSpecification appears."
	covered := aLifeline
]

{ #category : #'accessing - InteractionFragment' }
OPUMLOccurrenceSpecification >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : #'accessing - InteractionFragment' }
OPUMLOccurrenceSpecification >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : #'accessing - InteractionFragment' }
OPUMLOccurrenceSpecification >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLOccurrenceSpecification >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLOccurrenceSpecification >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLOccurrenceSpecification >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLOccurrenceSpecification >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : #'accessing - InteractionFragment' }
OPUMLOccurrenceSpecification >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : #initialization }
OPUMLOccurrenceSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InteractionFragment.
	}
]

{ #category : #initialization }
OPUMLOccurrenceSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OccurrenceSpecification put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLOccurrenceSpecification >> toAfters [
	"References the GeneralOrderings that specify EventOcurrences that must occur after this OccurrenceSpecification."
	^ toAfters ifNil: [ toAfters := OPUMLToManyLinks on: self identity opposite: #before: ]
]

{ #category : #accessing }
OPUMLOccurrenceSpecification >> toAfters: aGeneralOrdering [
	"References the GeneralOrderings that specify EventOcurrences that must occur after this OccurrenceSpecification."
	self toAfters
		removeAll;
		addAll: aGeneralOrdering
]

{ #category : #accessing }
OPUMLOccurrenceSpecification >> toBefores [
	"References the GeneralOrderings that specify EventOcurrences that must occur before this OccurrenceSpecification."
	^ toBefores ifNil: [ toBefores := OPUMLToManyLinks on: self identity opposite: #after: ]
]

{ #category : #accessing }
OPUMLOccurrenceSpecification >> toBefores: aGeneralOrdering [
	"References the GeneralOrderings that specify EventOcurrences that must occur before this OccurrenceSpecification."
	self toBefores
		removeAll;
		addAll: aGeneralOrdering
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLOccurrenceSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
