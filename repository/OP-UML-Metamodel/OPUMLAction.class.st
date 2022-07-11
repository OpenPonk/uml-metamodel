"
An Action is the fundamental unit of executable functionality. The execution of an Action represents some transformation or processing in the modeled system. Actions provide the ExecutableNodes within Activities and may also be used within Interactions.
"
Class {
	#name : #OPUMLAction,
	#superclass : #OPUMLElement,
	#instVars : [
		'outputs',
		'inputs',
		'localPostconditions',
		'context',
		'isLocallyReentrant',
		'localPreconditions'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'operations - stubs' }
OPUMLAction >> allActionsStub [
	"Return this Action and all Actions contained directly or indirectly in it. By default only the Action itself is returned, but the operation is overridden for StructuredActivityNodes."
	
	"{OCL} result = (self->asSet())"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLAction >> allOwnedNodesStub [
	"Returns all the ActivityNodes directly or indirectly owned by this Action. This includes at least all the Pins of the Action."
	
	"{OCL} result = (input.oclAsType(Pin)->asSet()->union(output->asSet()))"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'operations - stubs' }
OPUMLAction >> containingBehaviorStub [
	""
	
	"{OCL} result = (if inStructuredNode<>null then inStructuredNode.containingBehavior() 
else if activity<>null then activity
else interaction 
endif
endif
)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLAction >> context [
	"The context Classifier of the Behavior that contains this Action, or the Behavior itself if it has no context."
	^ context
]

{ #category : #accessing }
OPUMLAction >> context: aClassifier [
	"The context Classifier of the Behavior that contains this Action, or the Behavior itself if it has no context."
	context := aClassifier
]

{ #category : #'operations - stubs' }
OPUMLAction >> contextStub [
	"The derivation for the context property."
	
	"{OCL} result = (let behavior: Behavior = self.containingBehavior() in
if behavior=null then null
else if behavior._'context' = null then behavior
else behavior._'context'
endif
endif)"
	
	self notYetImplemented

]

{ #category : #'accessing - ExecutableNode' }
OPUMLAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ExecutableNode.
	}
]

{ #category : #initialization }
OPUMLAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: self.
]

{ #category : #accessing }
OPUMLAction >> inputs [
	"The ordered set of InputPins representing the inputs to the Action."
	^ inputs ifNil: [ inputs := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLAction >> inputs: anInputPin [
	"The ordered set of InputPins representing the inputs to the Action."
	inputs := anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #accessing }
OPUMLAction >> isLocallyReentrant [
	"If true, the Action can begin a new, concurrent execution, even if there is already another execution of the Action ongoing. If false, the Action cannot begin a new execution until any previous execution has completed."
	^ isLocallyReentrant ifNil: [ isLocallyReentrant := false ]
]

{ #category : #accessing }
OPUMLAction >> isLocallyReentrant: aBoolean [
	"If true, the Action can begin a new, concurrent execution, even if there is already another execution of the Action ongoing. If false, the Action cannot begin a new execution until any previous execution has completed."
	isLocallyReentrant := aBoolean
]

{ #category : #accessing }
OPUMLAction >> localPostconditions [
	"A Constraint that must be satisfied when execution of the Action is completed."
	^ localPostconditions ifNil: [ localPostconditions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLAction >> localPostconditions: aConstraint [
	"A Constraint that must be satisfied when execution of the Action is completed."
	localPostconditions := aConstraint
]

{ #category : #accessing }
OPUMLAction >> localPreconditions [
	"A Constraint that must be satisfied when execution of the Action is started."
	^ localPreconditions ifNil: [ localPreconditions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLAction >> localPreconditions: aConstraint [
	"A Constraint that must be satisfied when execution of the Action is started."
	localPreconditions := aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #accessing }
OPUMLAction >> outputs [
	"The ordered set of OutputPins representing outputs from the Action."
	^ outputs ifNil: [ outputs := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLAction >> outputs: anOutputPin [
	"The ordered set of OutputPins representing outputs from the Action."
	outputs := anOutputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
