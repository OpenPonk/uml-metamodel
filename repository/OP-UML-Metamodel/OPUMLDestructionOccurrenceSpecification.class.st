"
A DestructionOccurenceSpecification models the destruction of an object.
"
Class {
	#name : #OPUMLDestructionOccurrenceSpecification,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - OccurrenceSpecification' }
OPUMLDestructionOccurrenceSpecification >> covered [
	^ (sharedGeneralizations at: #OccurrenceSpecification) covered
]

{ #category : #'accessing - OccurrenceSpecification' }
OPUMLDestructionOccurrenceSpecification >> covered: aLifeline [
	(sharedGeneralizations at: #OccurrenceSpecification) covered: aLifeline
]

{ #category : #'accessing - InteractionFragment' }
OPUMLDestructionOccurrenceSpecification >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : #'accessing - InteractionFragment' }
OPUMLDestructionOccurrenceSpecification >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : #'accessing - InteractionFragment' }
OPUMLDestructionOccurrenceSpecification >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLDestructionOccurrenceSpecification >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLDestructionOccurrenceSpecification >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLDestructionOccurrenceSpecification >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLDestructionOccurrenceSpecification >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : #'accessing - InteractionFragment' }
OPUMLDestructionOccurrenceSpecification >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : #initialization }
OPUMLDestructionOccurrenceSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MessageOccurrenceSpecification.
	}
]

{ #category : #initialization }
OPUMLDestructionOccurrenceSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEnd put: (OPUMLMessageEnd newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OccurrenceSpecification put: (OPUMLOccurrenceSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageOccurrenceSpecification put: (OPUMLMessageOccurrenceSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DestructionOccurrenceSpecification put: self.
]

{ #category : #'accessing - MessageEnd' }
OPUMLDestructionOccurrenceSpecification >> message [
	^ (sharedGeneralizations at: #MessageEnd) message
]

{ #category : #'accessing - MessageEnd' }
OPUMLDestructionOccurrenceSpecification >> message: aMessage [
	(sharedGeneralizations at: #MessageEnd) message: aMessage
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - OccurrenceSpecification' }
OPUMLDestructionOccurrenceSpecification >> toAfters [
	^ (sharedGeneralizations at: #OccurrenceSpecification) toAfters
]

{ #category : #'accessing - OccurrenceSpecification' }
OPUMLDestructionOccurrenceSpecification >> toAfters: aGeneralOrdering [
	(sharedGeneralizations at: #OccurrenceSpecification) toAfters: aGeneralOrdering
]

{ #category : #'accessing - OccurrenceSpecification' }
OPUMLDestructionOccurrenceSpecification >> toBefores [
	^ (sharedGeneralizations at: #OccurrenceSpecification) toBefores
]

{ #category : #'accessing - OccurrenceSpecification' }
OPUMLDestructionOccurrenceSpecification >> toBefores: aGeneralOrdering [
	(sharedGeneralizations at: #OccurrenceSpecification) toBefores: aGeneralOrdering
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLDestructionOccurrenceSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
