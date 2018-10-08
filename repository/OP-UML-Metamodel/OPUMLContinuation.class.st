"
A Continuation is a syntactic way to define continuations of different branches of an alternative CombinedFragment. Continuations are intuitively similar to labels representing intermediate points in a flow of control.
"
Class {
	#name : #OPUMLContinuation,
	#superclass : #OPUMLElement,
	#instVars : [
		'setting'
	],
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - InteractionFragment' }
OPUMLContinuation >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : #'accessing - InteractionFragment' }
OPUMLContinuation >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : #'accessing - InteractionFragment' }
OPUMLContinuation >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLContinuation >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLContinuation >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLContinuation >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLContinuation >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : #'accessing - InteractionFragment' }
OPUMLContinuation >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : #initialization }
OPUMLContinuation >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InteractionFragment.
	}
]

{ #category : #initialization }
OPUMLContinuation >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Continuation put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLContinuation >> setting [
	"True: when the Continuation is at the end of the enclosing InteractionFragment and False when it is in the beginning."
	^ setting ifNil: [ setting := true ]
]

{ #category : #accessing }
OPUMLContinuation >> setting: aBoolean [
	"True: when the Continuation is at the end of the enclosing InteractionFragment and False when it is in the beginning."
	setting := aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLContinuation >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
