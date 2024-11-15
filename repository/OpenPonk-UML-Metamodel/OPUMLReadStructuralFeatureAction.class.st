"
A ReadStructuralFeatureAction is a StructuralFeatureAction that retrieves the values of a StructuralFeature.
"
Class {
	#name : 'OPUMLReadStructuralFeatureAction',
	#superclass : 'OPUMLElement',
	#instVars : [
		'result'
	],
	#category : 'OpenPonk-UML-Metamodel-Actions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : 'accessing - ExecutableNode' }
OPUMLReadStructuralFeatureAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : 'accessing - ExecutableNode' }
OPUMLReadStructuralFeatureAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : 'initialization' }
OPUMLReadStructuralFeatureAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #StructuralFeatureAction.
	}
]

{ #category : 'initialization' }
OPUMLReadStructuralFeatureAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuralFeatureAction put: (OPUMLStructuralFeatureAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ReadStructuralFeatureAction put: self.
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReadStructuralFeatureAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReadStructuralFeatureAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - StructuralFeatureAction' }
OPUMLReadStructuralFeatureAction >> object [
	^ (sharedGeneralizations at: #StructuralFeatureAction) object
]

{ #category : 'accessing - StructuralFeatureAction' }
OPUMLReadStructuralFeatureAction >> object: anInputPin [
	(sharedGeneralizations at: #StructuralFeatureAction) object: anInputPin
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : 'accessing - Action' }
OPUMLReadStructuralFeatureAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReadStructuralFeatureAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReadStructuralFeatureAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : 'accessing - ActivityNode' }
OPUMLReadStructuralFeatureAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReadStructuralFeatureAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReadStructuralFeatureAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing' }
OPUMLReadStructuralFeatureAction >> result [
	"The OutputPin on which the result values are placed."
	^ result
]

{ #category : 'accessing' }
OPUMLReadStructuralFeatureAction >> result: anOutputPin [
	"The OutputPin on which the result values are placed."
	result := anOutputPin
]

{ #category : 'accessing - StructuralFeatureAction' }
OPUMLReadStructuralFeatureAction >> structuralFeature [
	^ (sharedGeneralizations at: #StructuralFeatureAction) structuralFeature
]

{ #category : 'accessing - StructuralFeatureAction' }
OPUMLReadStructuralFeatureAction >> structuralFeature: aStructuralFeature [
	(sharedGeneralizations at: #StructuralFeatureAction) structuralFeature: aStructuralFeature
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLReadStructuralFeatureAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
