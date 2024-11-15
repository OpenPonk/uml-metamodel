"
An ExpansionRegion is a StructuredActivityNode that executes its content multiple times corresponding to elements of input collection(s).
"
Class {
	#name : 'OPUMLExpansionRegion',
	#superclass : 'OPUMLElement',
	#instVars : [
		'inputElements',
		'outputElements',
		'mode'
	],
	#category : 'OpenPonk-UML-Metamodel-Actions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> activity [
	^ (sharedGeneralizations at: #StructuredActivityNode) activity
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> activity: anActivity [
	(sharedGeneralizations at: #StructuredActivityNode) activity: anActivity
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> containedEdges [
	^ (sharedGeneralizations at: #ActivityGroup) containedEdges
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> containedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityGroup) containedEdges: anActivityEdge
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> containedNodes [
	^ (sharedGeneralizations at: #ActivityGroup) containedNodes
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> containedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityGroup) containedNodes: anActivityNode
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> edges [
	^ (sharedGeneralizations at: #StructuredActivityNode) edges
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> edges: anActivityEdge [
	(sharedGeneralizations at: #StructuredActivityNode) edges: anActivityEdge
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - ExecutableNode' }
OPUMLExpansionRegion >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : 'accessing - ExecutableNode' }
OPUMLExpansionRegion >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> inActivity [
	^ (sharedGeneralizations at: #ActivityGroup) inActivity
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> inActivity: anActivity [
	(sharedGeneralizations at: #ActivityGroup) inActivity: anActivity
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : 'initialization' }
OPUMLExpansionRegion >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #StructuredActivityNode.
	}
]

{ #category : 'initialization' }
OPUMLExpansionRegion >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityGroup put: (OPUMLActivityGroup newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuredActivityNode put: (OPUMLStructuredActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExpansionRegion put: self.
]

{ #category : 'accessing' }
OPUMLExpansionRegion >> inputElements [
	"The ExpansionNodes that hold the input collections for the ExpansionRegion."
	^ inputElements ifNil: [ inputElements := OPUMLToManyLinks on: self identity opposite: #regionAsInput: ]
]

{ #category : 'accessing' }
OPUMLExpansionRegion >> inputElements: anExpansionNode [
	"The ExpansionNodes that hold the input collections for the ExpansionRegion."
	self inputElements
		removeAll;
		addAll: anExpansionNode
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExpansionRegion >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExpansionRegion >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing' }
OPUMLExpansionRegion >> mode [
	"The mode in which the ExpansionRegion executes its contents. If parallel, executions are concurrent. If iterative, executions are sequential. If stream, a stream of values flows into a single execution."
	^ mode ifNil: [ mode := OPUMLExpansionKind new iterative ]
]

{ #category : 'accessing' }
OPUMLExpansionRegion >> mode: anExpansionKind [
	"The mode in which the ExpansionRegion executes its contents. If parallel, executions are concurrent. If iterative, executions are sequential. If stream, a stream of values flows into a single execution."
	mode := anExpansionKind
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> mustIsolate [
	^ (sharedGeneralizations at: #StructuredActivityNode) mustIsolate
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> mustIsolate: aBoolean [
	(sharedGeneralizations at: #StructuredActivityNode) mustIsolate: aBoolean
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> nodes [
	^ (sharedGeneralizations at: #StructuredActivityNode) nodes
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> nodes: anActivityNode [
	(sharedGeneralizations at: #StructuredActivityNode) nodes: anActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : 'accessing' }
OPUMLExpansionRegion >> outputElements [
	"The ExpansionNodes that form the output collections of the ExpansionRegion."
	^ outputElements ifNil: [ outputElements := OPUMLToManyLinks on: self identity opposite: #regionAsOutput: ]
]

{ #category : 'accessing' }
OPUMLExpansionRegion >> outputElements: anExpansionNode [
	"The ExpansionNodes that form the output collections of the ExpansionRegion."
	self outputElements
		removeAll;
		addAll: anExpansionNode
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : 'accessing - Action' }
OPUMLExpansionRegion >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLExpansionRegion >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExpansionRegion >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExpansionRegion >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : 'accessing - ActivityNode' }
OPUMLExpansionRegion >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExpansionRegion >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLExpansionRegion >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> structuredNodeInputs [
	^ (sharedGeneralizations at: #StructuredActivityNode) structuredNodeInputs
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> structuredNodeInputs: anInputPin [
	(sharedGeneralizations at: #StructuredActivityNode) structuredNodeInputs: anInputPin
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> structuredNodeOutputs [
	^ (sharedGeneralizations at: #StructuredActivityNode) structuredNodeOutputs
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> structuredNodeOutputs: anOutputPin [
	(sharedGeneralizations at: #StructuredActivityNode) structuredNodeOutputs: anOutputPin
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> subgroups [
	^ (sharedGeneralizations at: #ActivityGroup) subgroups
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> subgroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) subgroups: anActivityGroup
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> superGroup [
	^ (sharedGeneralizations at: #ActivityGroup) superGroup
]

{ #category : 'accessing - ActivityGroup' }
OPUMLExpansionRegion >> superGroup: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) superGroup: anActivityGroup
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> variables [
	^ (sharedGeneralizations at: #StructuredActivityNode) variables
]

{ #category : 'accessing - StructuredActivityNode' }
OPUMLExpansionRegion >> variables: aVariable [
	(sharedGeneralizations at: #StructuredActivityNode) variables: aVariable
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLExpansionRegion >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
