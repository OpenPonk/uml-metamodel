"
A ConsiderIgnoreFragment is a kind of CombinedFragment that is used for the consider and ignore cases, which require lists of pertinent Messages to be specified.
"
Class {
	#name : 'OPUMLConsiderIgnoreFragment',
	#superclass : 'OPUMLElement',
	#instVars : [
		'messages'
	],
	#category : 'OP-UML-Metamodel-Interactions',
	#package : 'OP-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing - CombinedFragment' }
OPUMLConsiderIgnoreFragment >> cfragmentGates [
	^ (sharedGeneralizations at: #CombinedFragment) cfragmentGates
]

{ #category : 'accessing - CombinedFragment' }
OPUMLConsiderIgnoreFragment >> cfragmentGates: aGate [
	(sharedGeneralizations at: #CombinedFragment) cfragmentGates: aGate
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - InteractionFragment' }
OPUMLConsiderIgnoreFragment >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : 'accessing - InteractionFragment' }
OPUMLConsiderIgnoreFragment >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLConsiderIgnoreFragment >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLConsiderIgnoreFragment >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLConsiderIgnoreFragment >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLConsiderIgnoreFragment >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLConsiderIgnoreFragment >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : 'accessing - InteractionFragment' }
OPUMLConsiderIgnoreFragment >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : 'initialization' }
OPUMLConsiderIgnoreFragment >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #CombinedFragment.
	}
]

{ #category : 'initialization' }
OPUMLConsiderIgnoreFragment >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #CombinedFragment put: (OPUMLCombinedFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConsiderIgnoreFragment put: self.
]

{ #category : 'accessing - CombinedFragment' }
OPUMLConsiderIgnoreFragment >> interactionOperator [
	^ (sharedGeneralizations at: #CombinedFragment) interactionOperator
]

{ #category : 'accessing - CombinedFragment' }
OPUMLConsiderIgnoreFragment >> interactionOperator: anInteractionOperatorKind [
	(sharedGeneralizations at: #CombinedFragment) interactionOperator: anInteractionOperatorKind
]

{ #category : 'accessing' }
OPUMLConsiderIgnoreFragment >> messages [
	"The set of messages that apply to this fragment."
	^ messages ifNil: [ messages := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLConsiderIgnoreFragment >> messages: aNamedElement [
	"The set of messages that apply to this fragment."
	messages := aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - CombinedFragment' }
OPUMLConsiderIgnoreFragment >> operands [
	^ (sharedGeneralizations at: #CombinedFragment) operands
]

{ #category : 'accessing - CombinedFragment' }
OPUMLConsiderIgnoreFragment >> operands: anInteractionOperand [
	(sharedGeneralizations at: #CombinedFragment) operands: anInteractionOperand
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLConsiderIgnoreFragment >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
