"
A GeneralOrdering represents a binary relation between two OccurrenceSpecifications, to describe that one OccurrenceSpecification must occur before the other in a valid trace. This mechanism provides the ability to define partial orders of OccurrenceSpecifications that may otherwise not have a specified order.
"
Class {
	#name : #OPUMLGeneralOrdering,
	#superclass : #OPUMLElement,
	#instVars : [
		'before',
		'after'
	],
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #accessing }
OPUMLGeneralOrdering >> after [
	"The OccurrenceSpecification referenced comes after the OccurrenceSpecification referenced by before."
	^ after
]

{ #category : #accessing }
OPUMLGeneralOrdering >> after: anOccurrenceSpecification [
	"The OccurrenceSpecification referenced comes after the OccurrenceSpecification referenced by before."
	after := OPUMLToOneLink
		on: self identity
		update: #toBefores
		from: after
		to: anOccurrenceSpecification
]

{ #category : #accessing }
OPUMLGeneralOrdering >> before [
	"The OccurrenceSpecification referenced comes before the OccurrenceSpecification referenced by after."
	^ before
]

{ #category : #accessing }
OPUMLGeneralOrdering >> before: anOccurrenceSpecification [
	"The OccurrenceSpecification referenced comes before the OccurrenceSpecification referenced by after."
	before := OPUMLToOneLink
		on: self identity
		update: #toAfters
		from: before
		to: anOccurrenceSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLGeneralOrdering >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLGeneralOrdering >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #GeneralOrdering put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralOrdering >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
