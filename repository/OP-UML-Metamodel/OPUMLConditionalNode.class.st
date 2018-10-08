"
A ConditionalNode is a StructuredActivityNode that chooses one among some number of alternative collections of ExecutableNodes to execute.
"
Class {
	#name : #OPUMLConditionalNode,
	#superclass : #OPUMLElement,
	#instVars : [
		'clauses',
		'isDeterminate',
		'results',
		'isAssured'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> activity [
	^ (sharedGeneralizations at: #StructuredActivityNode) activity
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> activity: anActivity [
	(sharedGeneralizations at: #StructuredActivityNode) activity: anActivity
]

{ #category : #'operations - stubs' }
OPUMLConditionalNode >> allActionsStub [
	"Return only this ConditionalNode. This prevents Actions within the ConditionalNode from having their OutputPins used as bodyOutputs or decider Pins in containing LoopNodes or ConditionalNodes."
	
	"{OCL} result = (self->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLConditionalNode >> clauses [
	"The set of Clauses composing the ConditionalNode."
	^ clauses ifNil: [ clauses := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLConditionalNode >> clauses: aClause [
	"The set of Clauses composing the ConditionalNode."
	clauses := aClause
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> containedEdges [
	^ (sharedGeneralizations at: #ActivityGroup) containedEdges
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> containedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityGroup) containedEdges: anActivityEdge
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> containedNodes [
	^ (sharedGeneralizations at: #ActivityGroup) containedNodes
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> containedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityGroup) containedNodes: anActivityNode
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> edges [
	^ (sharedGeneralizations at: #StructuredActivityNode) edges
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> edges: anActivityEdge [
	(sharedGeneralizations at: #StructuredActivityNode) edges: anActivityEdge
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - ExecutableNode' }
OPUMLConditionalNode >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLConditionalNode >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> inActivity [
	^ (sharedGeneralizations at: #ActivityGroup) inActivity
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> inActivity: anActivity [
	(sharedGeneralizations at: #ActivityGroup) inActivity: anActivity
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLConditionalNode >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #StructuredActivityNode.
	}
]

{ #category : #initialization }
OPUMLConditionalNode >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityGroup put: (OPUMLActivityGroup newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuredActivityNode put: (OPUMLStructuredActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConditionalNode put: self.
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #accessing }
OPUMLConditionalNode >> isAssured [
	"If true, the modeler asserts that the test for at least one Clause of the ConditionalNode will succeed."
	^ isAssured ifNil: [ isAssured := false ]
]

{ #category : #accessing }
OPUMLConditionalNode >> isAssured: aBoolean [
	"If true, the modeler asserts that the test for at least one Clause of the ConditionalNode will succeed."
	isAssured := aBoolean
]

{ #category : #accessing }
OPUMLConditionalNode >> isDeterminate [
	"If true, the modeler asserts that the test for at most one Clause of the ConditionalNode will succeed."
	^ isDeterminate ifNil: [ isDeterminate := false ]
]

{ #category : #accessing }
OPUMLConditionalNode >> isDeterminate: aBoolean [
	"If true, the modeler asserts that the test for at most one Clause of the ConditionalNode will succeed."
	isDeterminate := aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConditionalNode >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConditionalNode >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> mustIsolate [
	^ (sharedGeneralizations at: #StructuredActivityNode) mustIsolate
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> mustIsolate: aBoolean [
	(sharedGeneralizations at: #StructuredActivityNode) mustIsolate: aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> nodes [
	^ (sharedGeneralizations at: #StructuredActivityNode) nodes
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> nodes: anActivityNode [
	(sharedGeneralizations at: #StructuredActivityNode) nodes: anActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLConditionalNode >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLConditionalNode >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConditionalNode >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConditionalNode >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLConditionalNode >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConditionalNode >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConditionalNode >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLConditionalNode >> results [
	"The OutputPins that onto which are moved values from the bodyOutputs of the Clause selected for execution."
	^ results ifNil: [ results := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLConditionalNode >> results: anOutputPin [
	"The OutputPins that onto which are moved values from the bodyOutputs of the Clause selected for execution."
	results := anOutputPin
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> structuredNodeInputs [
	^ (sharedGeneralizations at: #StructuredActivityNode) structuredNodeInputs
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> structuredNodeInputs: anInputPin [
	(sharedGeneralizations at: #StructuredActivityNode) structuredNodeInputs: anInputPin
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> structuredNodeOutputs [
	^ (sharedGeneralizations at: #StructuredActivityNode) structuredNodeOutputs
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> structuredNodeOutputs: anOutputPin [
	(sharedGeneralizations at: #StructuredActivityNode) structuredNodeOutputs: anOutputPin
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> subgroups [
	^ (sharedGeneralizations at: #ActivityGroup) subgroups
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> subgroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) subgroups: anActivityGroup
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> superGroup [
	^ (sharedGeneralizations at: #ActivityGroup) superGroup
]

{ #category : #'accessing - ActivityGroup' }
OPUMLConditionalNode >> superGroup: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) superGroup: anActivityGroup
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> variables [
	^ (sharedGeneralizations at: #StructuredActivityNode) variables
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLConditionalNode >> variables: aVariable [
	(sharedGeneralizations at: #StructuredActivityNode) variables: aVariable
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLConditionalNode >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
