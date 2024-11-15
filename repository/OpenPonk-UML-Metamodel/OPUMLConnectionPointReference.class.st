"
A ConnectionPointReference represents a usage (as part of a submachine State) of an entry/exit point Pseudostate defined in the StateMachine referenced by the submachine State.
"
Class {
	#name : 'OPUMLConnectionPointReference',
	#superclass : 'OPUMLElement',
	#instVars : [
		'exits',
		'state',
		'entries'
	],
	#category : 'OpenPonk-UML-Metamodel-StateMachines',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Vertex' }
OPUMLConnectionPointReference >> container [
	^ (sharedGeneralizations at: #Vertex) container
]

{ #category : 'accessing - Vertex' }
OPUMLConnectionPointReference >> container: aRegion [
	(sharedGeneralizations at: #Vertex) container: aRegion
]

{ #category : 'accessing' }
OPUMLConnectionPointReference >> entries [
	"The entryPoint Pseudostates corresponding to this connection point."
	^ entries ifNil: [ entries := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLConnectionPointReference >> entries: aPseudostate [
	"The entryPoint Pseudostates corresponding to this connection point."
	entries := aPseudostate
]

{ #category : 'accessing' }
OPUMLConnectionPointReference >> exits [
	"The exitPoints kind Pseudostates corresponding to this connection point."
	^ exits ifNil: [ exits := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLConnectionPointReference >> exits: aPseudostate [
	"The exitPoints kind Pseudostates corresponding to this connection point."
	exits := aPseudostate
]

{ #category : 'accessing - Vertex' }
OPUMLConnectionPointReference >> incomings [
	^ (sharedGeneralizations at: #Vertex) incomings
]

{ #category : 'accessing - Vertex' }
OPUMLConnectionPointReference >> incomings: aTransition [
	(sharedGeneralizations at: #Vertex) incomings: aTransition
]

{ #category : 'initialization' }
OPUMLConnectionPointReference >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Vertex.
	}
]

{ #category : 'initialization' }
OPUMLConnectionPointReference >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Vertex put: (OPUMLVertex newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectionPointReference put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Vertex' }
OPUMLConnectionPointReference >> outgoings [
	^ (sharedGeneralizations at: #Vertex) outgoings
]

{ #category : 'accessing - Vertex' }
OPUMLConnectionPointReference >> outgoings: aTransition [
	(sharedGeneralizations at: #Vertex) outgoings: aTransition
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLConnectionPointReference >> state [
	"The State in which the ConnectionPointReference is defined."
	^ state
]

{ #category : 'accessing' }
OPUMLConnectionPointReference >> state: aState [
	"The State in which the ConnectionPointReference is defined."
	state := OPUMLToOneLink
		on: self identity
		update: #connections
		from: state
		to: aState
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectionPointReference >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
