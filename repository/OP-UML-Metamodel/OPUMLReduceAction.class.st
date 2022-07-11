"
A ReduceAction is an Action that reduces a collection to a single value by repeatedly combining the elements of the collection using a reducer Behavior.
"
Class {
	#name : #OPUMLReduceAction,
	#superclass : #OPUMLElement,
	#instVars : [
		'isOrdered',
		'result',
		'collection',
		'reducer'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLReduceAction >> collection [
	"The InputPin that provides the collection to be reduced."
	^ collection
]

{ #category : #accessing }
OPUMLReduceAction >> collection: anInputPin [
	"The InputPin that provides the collection to be reduced."
	collection := anInputPin
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #'accessing - ExecutableNode' }
OPUMLReduceAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLReduceAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLReduceAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Action.
	}
]

{ #category : #initialization }
OPUMLReduceAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ReduceAction put: self.
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLReduceAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLReduceAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #accessing }
OPUMLReduceAction >> isOrdered [
	"Indicates whether the order of the input collection should determine the order in which the reducer Behavior is applied to its elements."
	^ isOrdered ifNil: [ isOrdered := false ]
]

{ #category : #accessing }
OPUMLReduceAction >> isOrdered: aBoolean [
	"Indicates whether the order of the input collection should determine the order in which the reducer Behavior is applied to its elements."
	isOrdered := aBoolean
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLReduceAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLReduceAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLReduceAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLReduceAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLReduceAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLReduceAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLReduceAction >> reducer [
	"A Behavior that is repreatedly applied to two elements of the input collection to produce a value that is of the same type as elements of the collection."
	^ reducer
]

{ #category : #accessing }
OPUMLReduceAction >> reducer: aBehavior [
	"A Behavior that is repreatedly applied to two elements of the input collection to produce a value that is of the same type as elements of the collection."
	reducer := aBehavior
]

{ #category : #accessing }
OPUMLReduceAction >> result [
	"The output pin on which the result value is placed."
	^ result
]

{ #category : #accessing }
OPUMLReduceAction >> result: anOutputPin [
	"The output pin on which the result value is placed."
	result := anOutputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLReduceAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
