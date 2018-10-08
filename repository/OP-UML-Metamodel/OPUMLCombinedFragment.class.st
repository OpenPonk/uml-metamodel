"
A CombinedFragment defines an expression of InteractionFragments. A CombinedFragment is defined by an interaction operator and corresponding InteractionOperands. Through the use of CombinedFragments the user will be able to describe a number of traces in a compact and concise manner.
"
Class {
	#name : #OPUMLCombinedFragment,
	#superclass : #OPUMLElement,
	#instVars : [
		'interactionOperator',
		'operands',
		'cfragmentGates'
	],
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #accessing }
OPUMLCombinedFragment >> cfragmentGates [
	"Specifies the gates that form the interface between this CombinedFragment and its surroundings"
	^ cfragmentGates ifNil: [ cfragmentGates := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLCombinedFragment >> cfragmentGates: aGate [
	"Specifies the gates that form the interface between this CombinedFragment and its surroundings"
	cfragmentGates := aGate
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - InteractionFragment' }
OPUMLCombinedFragment >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : #'accessing - InteractionFragment' }
OPUMLCombinedFragment >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : #'accessing - InteractionFragment' }
OPUMLCombinedFragment >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLCombinedFragment >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLCombinedFragment >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLCombinedFragment >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLCombinedFragment >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : #'accessing - InteractionFragment' }
OPUMLCombinedFragment >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : #initialization }
OPUMLCombinedFragment >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InteractionFragment.
	}
]

{ #category : #initialization }
OPUMLCombinedFragment >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #CombinedFragment put: self.
]

{ #category : #accessing }
OPUMLCombinedFragment >> interactionOperator [
	"Specifies the operation which defines the semantics of this combination of InteractionFragments."
	^ interactionOperator ifNil: [ interactionOperator := OPUMLInteractionOperatorKind new seq ]
]

{ #category : #accessing }
OPUMLCombinedFragment >> interactionOperator: anInteractionOperatorKind [
	"Specifies the operation which defines the semantics of this combination of InteractionFragments."
	interactionOperator := anInteractionOperatorKind
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLCombinedFragment >> operands [
	"The set of operands of the combined fragment."
	^ operands ifNil: [ operands := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLCombinedFragment >> operands: anInteractionOperand [
	"The set of operands of the combined fragment."
	operands := anInteractionOperand
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLCombinedFragment >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
