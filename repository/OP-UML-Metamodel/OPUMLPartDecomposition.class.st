"
A PartDecomposition is a description of the internal Interactions of one Lifeline relative to an Interaction.
"
Class {
	#name : #OPUMLPartDecomposition,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> actualGates [
	^ (sharedGeneralizations at: #InteractionUse) actualGates
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> actualGates: aGate [
	(sharedGeneralizations at: #InteractionUse) actualGates: aGate
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> arguments [
	^ (sharedGeneralizations at: #InteractionUse) arguments
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> arguments: aValueSpecification [
	(sharedGeneralizations at: #InteractionUse) arguments: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - InteractionFragment' }
OPUMLPartDecomposition >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : #'accessing - InteractionFragment' }
OPUMLPartDecomposition >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : #'accessing - InteractionFragment' }
OPUMLPartDecomposition >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLPartDecomposition >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLPartDecomposition >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLPartDecomposition >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLPartDecomposition >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : #'accessing - InteractionFragment' }
OPUMLPartDecomposition >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : #initialization }
OPUMLPartDecomposition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InteractionUse.
	}
]

{ #category : #initialization }
OPUMLPartDecomposition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionUse put: (OPUMLInteractionUse newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PartDecomposition put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> refersTo [
	^ (sharedGeneralizations at: #InteractionUse) refersTo
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> refersTo: anInteraction [
	(sharedGeneralizations at: #InteractionUse) refersTo: anInteraction
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> returnValue [
	^ (sharedGeneralizations at: #InteractionUse) returnValue
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> returnValue: aValueSpecification [
	(sharedGeneralizations at: #InteractionUse) returnValue: aValueSpecification
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> returnValueRecipient [
	^ (sharedGeneralizations at: #InteractionUse) returnValueRecipient
]

{ #category : #'accessing - InteractionUse' }
OPUMLPartDecomposition >> returnValueRecipient: aProperty [
	(sharedGeneralizations at: #InteractionUse) returnValueRecipient: aProperty
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLPartDecomposition >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
