"
A MessageOccurrenceSpecification specifies the occurrence of Message events, such as sending and receiving of Signals or invoking or receiving of Operation calls. A MessageOccurrenceSpecification is a kind of MessageEnd. Messages are generated either by synchronous Operation calls or asynchronous Signal sends. They are received by the execution of corresponding AcceptEventActions.
"
Class {
	#name : 'OPUMLMessageOccurrenceSpecification',
	#superclass : 'OPUMLElement',
	#category : 'OpenPonk-UML-Metamodel-Interactions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLMessageOccurrenceSpecification >> covered [
	^ (sharedGeneralizations at: #OccurrenceSpecification) covered
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLMessageOccurrenceSpecification >> covered: aLifeline [
	(sharedGeneralizations at: #OccurrenceSpecification) covered: aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLMessageOccurrenceSpecification >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : 'accessing - InteractionFragment' }
OPUMLMessageOccurrenceSpecification >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLMessageOccurrenceSpecification >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLMessageOccurrenceSpecification >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLMessageOccurrenceSpecification >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLMessageOccurrenceSpecification >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLMessageOccurrenceSpecification >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : 'accessing - InteractionFragment' }
OPUMLMessageOccurrenceSpecification >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : 'initialization' }
OPUMLMessageOccurrenceSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MessageEnd.
		sharedGeneralizations at: #OccurrenceSpecification.
	}
]

{ #category : 'initialization' }
OPUMLMessageOccurrenceSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEnd put: (OPUMLMessageEnd newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OccurrenceSpecification put: (OPUMLOccurrenceSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageOccurrenceSpecification put: self.
]

{ #category : 'accessing - MessageEnd' }
OPUMLMessageOccurrenceSpecification >> message [
	^ (sharedGeneralizations at: #MessageEnd) message
]

{ #category : 'accessing - MessageEnd' }
OPUMLMessageOccurrenceSpecification >> message: aMessage [
	(sharedGeneralizations at: #MessageEnd) message: aMessage
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLMessageOccurrenceSpecification >> toAfters [
	^ (sharedGeneralizations at: #OccurrenceSpecification) toAfters
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLMessageOccurrenceSpecification >> toAfters: aGeneralOrdering [
	(sharedGeneralizations at: #OccurrenceSpecification) toAfters: aGeneralOrdering
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLMessageOccurrenceSpecification >> toBefores [
	^ (sharedGeneralizations at: #OccurrenceSpecification) toBefores
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLMessageOccurrenceSpecification >> toBefores: aGeneralOrdering [
	(sharedGeneralizations at: #OccurrenceSpecification) toBefores: aGeneralOrdering
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLMessageOccurrenceSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
