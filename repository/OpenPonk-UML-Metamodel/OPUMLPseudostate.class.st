"
A Pseudostate is an abstraction that encompasses different types of transient Vertices in the StateMachine graph. A StateMachine instance never comes to rest in a Pseudostate, instead, it will exit and enter the Pseudostate within a single run-to-completion step.
"
Class {
	#name : 'OPUMLPseudostate',
	#superclass : 'OPUMLElement',
	#instVars : [
		'stateMachine',
		'kind',
		'state'
	],
	#category : 'OpenPonk-UML-Metamodel-StateMachines',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Vertex' }
OPUMLPseudostate >> container [
	^ (sharedGeneralizations at: #Vertex) container
]

{ #category : 'accessing - Vertex' }
OPUMLPseudostate >> container: aRegion [
	(sharedGeneralizations at: #Vertex) container: aRegion
]

{ #category : 'accessing - Vertex' }
OPUMLPseudostate >> incomings [
	^ (sharedGeneralizations at: #Vertex) incomings
]

{ #category : 'accessing - Vertex' }
OPUMLPseudostate >> incomings: aTransition [
	(sharedGeneralizations at: #Vertex) incomings: aTransition
]

{ #category : 'initialization' }
OPUMLPseudostate >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Vertex.
	}
]

{ #category : 'initialization' }
OPUMLPseudostate >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Vertex put: (OPUMLVertex newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Pseudostate put: self.
]

{ #category : 'accessing' }
OPUMLPseudostate >> kind [
	"Determines the precise type of the Pseudostate and can be one of: entryPoint, exitPoint, initial, deepHistory, shallowHistory, join, fork, junction, terminate or choice."
	^ kind ifNil: [ kind := OPUMLPseudostateKind new initial ]
]

{ #category : 'accessing' }
OPUMLPseudostate >> kind: aPseudostateKind [
	"Determines the precise type of the Pseudostate and can be one of: entryPoint, exitPoint, initial, deepHistory, shallowHistory, join, fork, junction, terminate or choice."
	kind := aPseudostateKind
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Vertex' }
OPUMLPseudostate >> outgoings [
	^ (sharedGeneralizations at: #Vertex) outgoings
]

{ #category : 'accessing - Vertex' }
OPUMLPseudostate >> outgoings: aTransition [
	(sharedGeneralizations at: #Vertex) outgoings: aTransition
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLPseudostate >> state [
	"The State that owns this Pseudostate and in which it appears."
	^ state
]

{ #category : 'accessing' }
OPUMLPseudostate >> state: aState [
	"The State that owns this Pseudostate and in which it appears."
	state := OPUMLToOneLink
		on: self identity
		update: #connectionPoints
		from: state
		to: aState
]

{ #category : 'accessing' }
OPUMLPseudostate >> stateMachine [
	"The StateMachine in which this Pseudostate is defined. This only applies to Pseudostates of the kind entryPoint or exitPoint."
	^ stateMachine
]

{ #category : 'accessing' }
OPUMLPseudostate >> stateMachine: aStateMachine [
	"The StateMachine in which this Pseudostate is defined. This only applies to Pseudostates of the kind entryPoint or exitPoint."
	stateMachine := OPUMLToOneLink
		on: self identity
		update: #connectionPoints
		from: stateMachine
		to: aStateMachine
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLPseudostate >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
