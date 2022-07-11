"
A ValueSpecificationAction is an Action that evaluates a ValueSpecification and provides a result.
"
Class {
	#name : #OPUMLValueSpecificationAction,
	#superclass : #OPUMLElement,
	#instVars : [
		'result',
		'value'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #'accessing - ExecutableNode' }
OPUMLValueSpecificationAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLValueSpecificationAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLValueSpecificationAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Action.
	}
]

{ #category : #initialization }
OPUMLValueSpecificationAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecificationAction put: self.
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLValueSpecificationAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLValueSpecificationAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLValueSpecificationAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLValueSpecificationAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLValueSpecificationAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLValueSpecificationAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLValueSpecificationAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLValueSpecificationAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLValueSpecificationAction >> result [
	"The OutputPin on which the result value is placed."
	^ result
]

{ #category : #accessing }
OPUMLValueSpecificationAction >> result: anOutputPin [
	"The OutputPin on which the result value is placed."
	result := anOutputPin
]

{ #category : #accessing }
OPUMLValueSpecificationAction >> value [
	"The ValueSpecification to be evaluated."
	^ value
]

{ #category : #accessing }
OPUMLValueSpecificationAction >> value: aValueSpecification [
	"The ValueSpecification to be evaluated."
	value := aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecificationAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
