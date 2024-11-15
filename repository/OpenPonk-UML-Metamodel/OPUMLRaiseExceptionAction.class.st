"
A RaiseExceptionAction is an Action that causes an exception to occur. The input value becomes the exception object.
"
Class {
	#name : 'OPUMLRaiseExceptionAction',
	#superclass : 'OPUMLElement',
	#instVars : [
		'exception'
	],
	#category : 'OpenPonk-UML-Metamodel-Actions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : 'accessing' }
OPUMLRaiseExceptionAction >> exception [
	"An InputPin whose value becomes the exception object."
	^ exception
]

{ #category : 'accessing' }
OPUMLRaiseExceptionAction >> exception: anInputPin [
	"An InputPin whose value becomes the exception object."
	exception := anInputPin
]

{ #category : 'accessing - ExecutableNode' }
OPUMLRaiseExceptionAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : 'accessing - ExecutableNode' }
OPUMLRaiseExceptionAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : 'initialization' }
OPUMLRaiseExceptionAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Action.
	}
]

{ #category : 'initialization' }
OPUMLRaiseExceptionAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RaiseExceptionAction put: self.
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRaiseExceptionAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRaiseExceptionAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : 'accessing - Action' }
OPUMLRaiseExceptionAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRaiseExceptionAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRaiseExceptionAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : 'accessing - ActivityNode' }
OPUMLRaiseExceptionAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRaiseExceptionAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLRaiseExceptionAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLRaiseExceptionAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
