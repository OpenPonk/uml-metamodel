"
A BroadcastSignalAction is an InvocationAction that transmits a Signal instance to all the potential target objects in the system. Values from the argument InputPins are used to provide values for the attributes of the Signal. The requestor continues execution immediately after the Signal instances are sent out and cannot receive reply values.
"
Class {
	#name : #OPUMLBroadcastSignalAction,
	#superclass : #OPUMLElement,
	#instVars : [
		'signal'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - InvocationAction' }
OPUMLBroadcastSignalAction >> arguments [
	^ (sharedGeneralizations at: #InvocationAction) arguments
]

{ #category : #'accessing - InvocationAction' }
OPUMLBroadcastSignalAction >> arguments: anInputPin [
	(sharedGeneralizations at: #InvocationAction) arguments: anInputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #'accessing - ExecutableNode' }
OPUMLBroadcastSignalAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLBroadcastSignalAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLBroadcastSignalAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InvocationAction.
	}
]

{ #category : #initialization }
OPUMLBroadcastSignalAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InvocationAction put: (OPUMLInvocationAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BroadcastSignalAction put: self.
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBroadcastSignalAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBroadcastSignalAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - InvocationAction' }
OPUMLBroadcastSignalAction >> onPort [
	^ (sharedGeneralizations at: #InvocationAction) onPort
]

{ #category : #'accessing - InvocationAction' }
OPUMLBroadcastSignalAction >> onPort: aPort [
	(sharedGeneralizations at: #InvocationAction) onPort: aPort
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLBroadcastSignalAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBroadcastSignalAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBroadcastSignalAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLBroadcastSignalAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBroadcastSignalAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLBroadcastSignalAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLBroadcastSignalAction >> signal [
	"The Signal whose instances are to be sent."
	^ signal
]

{ #category : #accessing }
OPUMLBroadcastSignalAction >> signal: aSignal [
	"The Signal whose instances are to be sent."
	signal := aSignal
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLBroadcastSignalAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
