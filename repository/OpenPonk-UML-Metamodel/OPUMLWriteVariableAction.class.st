"
WriteVariableAction is an abstract class for VariableActions that change Variable values.
"
Class {
	#name : 'OPUMLWriteVariableAction',
	#superclass : 'OPUMLElement',
	#instVars : [
		'value'
	],
	#category : 'OpenPonk-UML-Metamodel-Actions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : 'accessing - ExecutableNode' }
OPUMLWriteVariableAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : 'accessing - ExecutableNode' }
OPUMLWriteVariableAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : 'initialization' }
OPUMLWriteVariableAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #VariableAction.
	}
]

{ #category : 'initialization' }
OPUMLWriteVariableAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #VariableAction put: (OPUMLVariableAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #WriteVariableAction put: self.
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : 'accessing - RedefinableElement' }
OPUMLWriteVariableAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLWriteVariableAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : 'accessing - Action' }
OPUMLWriteVariableAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLWriteVariableAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLWriteVariableAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : 'accessing - ActivityNode' }
OPUMLWriteVariableAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLWriteVariableAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLWriteVariableAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing' }
OPUMLWriteVariableAction >> value [
	"The InputPin that gives the value to be added or removed from the Variable."
	^ value
]

{ #category : 'accessing' }
OPUMLWriteVariableAction >> value: anInputPin [
	"The InputPin that gives the value to be added or removed from the Variable."
	value := anInputPin
]

{ #category : 'accessing - VariableAction' }
OPUMLWriteVariableAction >> variable [
	^ (sharedGeneralizations at: #VariableAction) variable
]

{ #category : 'accessing - VariableAction' }
OPUMLWriteVariableAction >> variable: aVariable [
	(sharedGeneralizations at: #VariableAction) variable: aVariable
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLWriteVariableAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
