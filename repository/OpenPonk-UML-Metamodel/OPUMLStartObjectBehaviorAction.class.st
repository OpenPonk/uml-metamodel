"
A StartObjectBehaviorAction is an InvocationAction that starts the execution either of a directly instantiated Behavior or of the classifierBehavior of an object. Argument values may be supplied for the input Parameters of the Behavior. If the Behavior is invoked synchronously, then output values may be obtained for output Parameters.
"
Class {
	#name : 'OPUMLStartObjectBehaviorAction',
	#superclass : 'OPUMLElement',
	#instVars : [
		'object'
	],
	#category : 'OpenPonk-UML-Metamodel-Actions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : 'accessing - InvocationAction' }
OPUMLStartObjectBehaviorAction >> arguments [
	^ (sharedGeneralizations at: #InvocationAction) arguments
]

{ #category : 'accessing - InvocationAction' }
OPUMLStartObjectBehaviorAction >> arguments: anInputPin [
	(sharedGeneralizations at: #InvocationAction) arguments: anInputPin
]

{ #category : 'operations - stubs' }
OPUMLStartObjectBehaviorAction >> behaviorStub [
	"If the type of the object InputPin is a Behavior, then that Behavior. Otherwise, if the type of the object InputPin is a BehavioredClassifier, then the classifierBehavior of that BehavioredClassifier."
	
	"{OCL} result = (if object.type.oclIsKindOf(Behavior) then
  object.type.oclAsType(Behavior)
else if object.type.oclIsKindOf(BehavioredClassifier) then
  object.type.oclAsType(BehavioredClassifier).classifierBehavior
else
  null
endif
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : 'accessing - ExecutableNode' }
OPUMLStartObjectBehaviorAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : 'accessing - ExecutableNode' }
OPUMLStartObjectBehaviorAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : 'initialization' }
OPUMLStartObjectBehaviorAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #CallAction.
	}
]

{ #category : 'initialization' }
OPUMLStartObjectBehaviorAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InvocationAction put: (OPUMLInvocationAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #CallAction put: (OPUMLCallAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StartObjectBehaviorAction put: self.
]

{ #category : 'operations - stubs' }
OPUMLStartObjectBehaviorAction >> inputParametersStub [
	"Return the in and inout ownedParameters of the Behavior being called."
	
	"{OCL} result = (self.behavior().inputParameters())"
	
	self notYetImplemented

]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStartObjectBehaviorAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStartObjectBehaviorAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : 'accessing - CallAction' }
OPUMLStartObjectBehaviorAction >> isSynchronous [
	^ (sharedGeneralizations at: #CallAction) isSynchronous
]

{ #category : 'accessing - CallAction' }
OPUMLStartObjectBehaviorAction >> isSynchronous: aBoolean [
	(sharedGeneralizations at: #CallAction) isSynchronous: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing' }
OPUMLStartObjectBehaviorAction >> object [
	"An InputPin that holds the object that is either a Behavior to be started or has a classifierBehavior to be started."
	^ object
]

{ #category : 'accessing' }
OPUMLStartObjectBehaviorAction >> object: anInputPin [
	"An InputPin that holds the object that is either a Behavior to be started or has a classifierBehavior to be started."
	object := anInputPin
]

{ #category : 'accessing - InvocationAction' }
OPUMLStartObjectBehaviorAction >> onPort [
	^ (sharedGeneralizations at: #InvocationAction) onPort
]

{ #category : 'accessing - InvocationAction' }
OPUMLStartObjectBehaviorAction >> onPort: aPort [
	(sharedGeneralizations at: #InvocationAction) onPort: aPort
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : 'operations - stubs' }
OPUMLStartObjectBehaviorAction >> outputParametersStub [
	"Return the inout, out and return ownedParameters of the Behavior being called."
	
	"{OCL} result = (self.behavior().outputParameters())"
	
	self notYetImplemented

]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : 'accessing - Action' }
OPUMLStartObjectBehaviorAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStartObjectBehaviorAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStartObjectBehaviorAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : 'accessing - ActivityNode' }
OPUMLStartObjectBehaviorAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStartObjectBehaviorAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStartObjectBehaviorAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - CallAction' }
OPUMLStartObjectBehaviorAction >> results [
	^ (sharedGeneralizations at: #CallAction) results
]

{ #category : 'accessing - CallAction' }
OPUMLStartObjectBehaviorAction >> results: anOutputPin [
	(sharedGeneralizations at: #CallAction) results: anOutputPin
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLStartObjectBehaviorAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
