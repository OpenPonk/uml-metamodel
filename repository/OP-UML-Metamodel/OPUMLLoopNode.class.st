"
A LoopNode is a StructuredActivityNode that represents an iterative loop with setup, test, and body sections.
"
Class {
	#name : #OPUMLLoopNode,
	#superclass : #OPUMLElement,
	#instVars : [
		'results',
		'decider',
		'tests',
		'isTestedFirst',
		'loopVariables',
		'bodyParts',
		'bodyOutputs',
		'loopVariableInputs',
		'setupParts'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> activity [
	^ (sharedGeneralizations at: #StructuredActivityNode) activity
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> activity: anActivity [
	(sharedGeneralizations at: #StructuredActivityNode) activity: anActivity
]

{ #category : #'operations - stubs' }
OPUMLLoopNode >> allActionsStub [
	"Return only this LoopNode. This prevents Actions within the LoopNode from having their OutputPins used as bodyOutputs or decider Pins in containing LoopNodes or ConditionalNodes."
	
	"{OCL} result = (self->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLLoopNode >> bodyOutputs [
	"The OutputPins on Actions within the bodyPart, the values of which are moved to the loopVariable OutputPins after the completion of each execution of the bodyPart, before the next iteration of the loop begins or before the loop exits."
	^ bodyOutputs ifNil: [ bodyOutputs := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLLoopNode >> bodyOutputs: anOutputPin [
	"The OutputPins on Actions within the bodyPart, the values of which are moved to the loopVariable OutputPins after the completion of each execution of the bodyPart, before the next iteration of the loop begins or before the loop exits."
	bodyOutputs := anOutputPin
]

{ #category : #accessing }
OPUMLLoopNode >> bodyParts [
	"The set of ExecutableNodes that perform the repetitive computations of the loop. The bodyPart is executed as long as the test section produces a true value."
	^ bodyParts ifNil: [ bodyParts := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLLoopNode >> bodyParts: anExecutableNode [
	"The set of ExecutableNodes that perform the repetitive computations of the loop. The bodyPart is executed as long as the test section produces a true value."
	bodyParts := anExecutableNode
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> containedEdges [
	^ (sharedGeneralizations at: #ActivityGroup) containedEdges
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> containedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityGroup) containedEdges: anActivityEdge
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> containedNodes [
	^ (sharedGeneralizations at: #ActivityGroup) containedNodes
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> containedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityGroup) containedNodes: anActivityNode
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #accessing }
OPUMLLoopNode >> decider [
	"An OutputPin on an Action in the test section whose Boolean value determines whether to continue executing the loop bodyPart."
	^ decider
]

{ #category : #accessing }
OPUMLLoopNode >> decider: anOutputPin [
	"An OutputPin on an Action in the test section whose Boolean value determines whether to continue executing the loop bodyPart."
	decider := anOutputPin
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> edges [
	^ (sharedGeneralizations at: #StructuredActivityNode) edges
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> edges: anActivityEdge [
	(sharedGeneralizations at: #StructuredActivityNode) edges: anActivityEdge
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - ExecutableNode' }
OPUMLLoopNode >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLLoopNode >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> inActivity [
	^ (sharedGeneralizations at: #ActivityGroup) inActivity
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> inActivity: anActivity [
	(sharedGeneralizations at: #ActivityGroup) inActivity: anActivity
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLLoopNode >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #StructuredActivityNode.
	}
]

{ #category : #initialization }
OPUMLLoopNode >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityGroup put: (OPUMLActivityGroup newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuredActivityNode put: (OPUMLStructuredActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LoopNode put: self.
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLLoopNode >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLLoopNode >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #accessing }
OPUMLLoopNode >> isTestedFirst [
	"If true, the test is performed before the first execution of the bodyPart. If false, the bodyPart is executed once before the test is performed."
	^ isTestedFirst ifNil: [ isTestedFirst := false ]
]

{ #category : #accessing }
OPUMLLoopNode >> isTestedFirst: aBoolean [
	"If true, the test is performed before the first execution of the bodyPart. If false, the bodyPart is executed once before the test is performed."
	isTestedFirst := aBoolean
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #accessing }
OPUMLLoopNode >> loopVariableInputs [
	"A list of InputPins whose values are moved into the loopVariable Pins before the first iteration of the loop."
	^ loopVariableInputs ifNil: [ loopVariableInputs := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLLoopNode >> loopVariableInputs: anInputPin [
	"A list of InputPins whose values are moved into the loopVariable Pins before the first iteration of the loop."
	loopVariableInputs := anInputPin
]

{ #category : #accessing }
OPUMLLoopNode >> loopVariables [
	"A list of OutputPins that hold the values of the loop variables during an execution of the loop. When the test fails, the values are moved to the result OutputPins of the loop."
	^ loopVariables ifNil: [ loopVariables := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLLoopNode >> loopVariables: anOutputPin [
	"A list of OutputPins that hold the values of the loop variables during an execution of the loop. When the test fails, the values are moved to the result OutputPins of the loop."
	loopVariables := anOutputPin
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> mustIsolate [
	^ (sharedGeneralizations at: #StructuredActivityNode) mustIsolate
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> mustIsolate: aBoolean [
	(sharedGeneralizations at: #StructuredActivityNode) mustIsolate: aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> nodes [
	^ (sharedGeneralizations at: #StructuredActivityNode) nodes
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> nodes: anActivityNode [
	(sharedGeneralizations at: #StructuredActivityNode) nodes: anActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLLoopNode >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLLoopNode >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLLoopNode >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLLoopNode >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLLoopNode >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLLoopNode >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLLoopNode >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLLoopNode >> results [
	"A list of OutputPins that receive the loopVariable values after the last iteration of the loop and constitute the output of the LoopNode."
	^ results ifNil: [ results := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLLoopNode >> results: anOutputPin [
	"A list of OutputPins that receive the loopVariable values after the last iteration of the loop and constitute the output of the LoopNode."
	results := anOutputPin
]

{ #category : #accessing }
OPUMLLoopNode >> setupParts [
	"The set of ExecutableNodes executed before the first iteration of the loop, in order to initialize values or perform other setup computations."
	^ setupParts ifNil: [ setupParts := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLLoopNode >> setupParts: anExecutableNode [
	"The set of ExecutableNodes executed before the first iteration of the loop, in order to initialize values or perform other setup computations."
	setupParts := anExecutableNode
]

{ #category : #'operations - stubs' }
OPUMLLoopNode >> sourceNodesStub [
	"Return the loopVariable OutputPins in addition to other source nodes for the LoopNode as a StructuredActivityNode."
	
	"{OCL} result = (self.StructuredActivityNode::sourceNodes()->union(loopVariable))"
	
	self notYetImplemented

]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> structuredNodeInputs [
	^ (sharedGeneralizations at: #StructuredActivityNode) structuredNodeInputs
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> structuredNodeInputs: anInputPin [
	(sharedGeneralizations at: #StructuredActivityNode) structuredNodeInputs: anInputPin
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> structuredNodeOutputs [
	^ (sharedGeneralizations at: #StructuredActivityNode) structuredNodeOutputs
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> structuredNodeOutputs: anOutputPin [
	(sharedGeneralizations at: #StructuredActivityNode) structuredNodeOutputs: anOutputPin
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> subgroups [
	^ (sharedGeneralizations at: #ActivityGroup) subgroups
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> subgroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) subgroups: anActivityGroup
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> superGroup [
	^ (sharedGeneralizations at: #ActivityGroup) superGroup
]

{ #category : #'accessing - ActivityGroup' }
OPUMLLoopNode >> superGroup: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) superGroup: anActivityGroup
]

{ #category : #accessing }
OPUMLLoopNode >> tests [
	"The set of ExecutableNodes executed in order to provide the test result for the loop."
	^ tests ifNil: [ tests := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLLoopNode >> tests: anExecutableNode [
	"The set of ExecutableNodes executed in order to provide the test result for the loop."
	tests := anExecutableNode
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> variables [
	^ (sharedGeneralizations at: #StructuredActivityNode) variables
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLLoopNode >> variables: aVariable [
	(sharedGeneralizations at: #StructuredActivityNode) variables: aVariable
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLLoopNode >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
