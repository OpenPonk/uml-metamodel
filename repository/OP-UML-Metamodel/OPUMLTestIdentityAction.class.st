"
A TestIdentityAction is an Action that tests if two values are identical objects.
"
Class {
	#name : #OPUMLTestIdentityAction,
	#superclass : #OPUMLElement,
	#instVars : [
		'second',
		'result',
		'first'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #accessing }
OPUMLTestIdentityAction >> first [
	"The InputPin on which the first input object is placed."
	^ first
]

{ #category : #accessing }
OPUMLTestIdentityAction >> first: anInputPin [
	"The InputPin on which the first input object is placed."
	first := anInputPin
]

{ #category : #'accessing - ExecutableNode' }
OPUMLTestIdentityAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLTestIdentityAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLTestIdentityAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Action.
	}
]

{ #category : #initialization }
OPUMLTestIdentityAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TestIdentityAction put: self.
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLTestIdentityAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLTestIdentityAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLTestIdentityAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLTestIdentityAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLTestIdentityAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLTestIdentityAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLTestIdentityAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLTestIdentityAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLTestIdentityAction >> result [
	"The OutputPin whose Boolean value indicates whether the two input objects are identical."
	^ result
]

{ #category : #accessing }
OPUMLTestIdentityAction >> result: anOutputPin [
	"The OutputPin whose Boolean value indicates whether the two input objects are identical."
	result := anOutputPin
]

{ #category : #accessing }
OPUMLTestIdentityAction >> second [
	"The OutputPin on which the second input object is placed."
	^ second
]

{ #category : #accessing }
OPUMLTestIdentityAction >> second: anInputPin [
	"The OutputPin on which the second input object is placed."
	second := anInputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLTestIdentityAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
