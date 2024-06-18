"
A StateInvariant is a runtime constraint on the participants of the Interaction. It may be used to specify a variety of different kinds of Constraints, such as values of Attributes or Variables, internal or external States, and so on. A StateInvariant is an InteractionFragment and it is placed on a Lifeline.
"
Class {
	#name : 'OPUMLStateInvariant',
	#superclass : 'OPUMLElement',
	#instVars : [
		'covered',
		'invariant'
	],
	#category : 'OP-UML-Metamodel-Interactions',
	#package : 'OP-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLStateInvariant >> covered [
	"References the Lifeline on which the StateInvariant appears."
	^ covered
]

{ #category : 'accessing' }
OPUMLStateInvariant >> covered: aLifeline [
	"References the Lifeline on which the StateInvariant appears."
	covered := aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLStateInvariant >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : 'accessing - InteractionFragment' }
OPUMLStateInvariant >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLStateInvariant >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLStateInvariant >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLStateInvariant >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLStateInvariant >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLStateInvariant >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : 'accessing - InteractionFragment' }
OPUMLStateInvariant >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : 'initialization' }
OPUMLStateInvariant >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InteractionFragment.
	}
]

{ #category : 'initialization' }
OPUMLStateInvariant >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StateInvariant put: self.
]

{ #category : 'accessing' }
OPUMLStateInvariant >> invariant [
	"A Constraint that should hold at runtime for this StateInvariant."
	^ invariant
]

{ #category : 'accessing' }
OPUMLStateInvariant >> invariant: aConstraint [
	"A Constraint that should hold at runtime for this StateInvariant."
	invariant := aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLStateInvariant >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
