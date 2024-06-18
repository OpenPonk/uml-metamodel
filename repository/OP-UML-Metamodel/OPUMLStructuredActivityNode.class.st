"
A StructuredActivityNode is an Action that is also an ActivityGroup and whose behavior is specified by the ActivityNodes and ActivityEdges it so contains. Unlike other kinds of ActivityGroup, a StructuredActivityNode owns the ActivityNodes and ActivityEdges it contains, and so a node or edge can only be directly contained in one StructuredActivityNode, though StructuredActivityNodes may be nested.
"
Class {
	#name : 'OPUMLStructuredActivityNode',
	#superclass : 'OPUMLElement',
	#instVars : [
		'activity',
		'mustIsolate',
		'nodes',
		'edges',
		'structuredNodeInputs',
		'variables',
		'structuredNodeOutputs'
	],
	#category : 'OP-UML-Metamodel-Actions',
	#package : 'OP-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> activity [
	"The Activity immediately containing the StructuredActivityNode, if it is not contained in another StructuredActivityNode."
	^ activity
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> activity: anActivity [
	"The Activity immediately containing the StructuredActivityNode, if it is not contained in another StructuredActivityNode."
	activity := OPUMLToOneLink
		on: self identity
		update: #structuredNodes
		from: activity
		to: anActivity
]

{ #category : 'operations - stubs' }
OPUMLStructuredActivityNode >> allActionsStub [
	"Returns this StructuredActivityNode and all Actions contained in it."
	
	"{OCL} result = (node->select(oclIsKindOf(Action)).oclAsType(Action).allActions()->including(self)->asSet())"
	
	self notYetImplemented

]

{ #category : 'operations - stubs' }
OPUMLStructuredActivityNode >> allOwnedNodesStub [
	"Returns all the ActivityNodes contained directly or indirectly within this StructuredActivityNode, in addition to the Pins of the StructuredActivityNode."
	
	"{OCL} result = (self.Action::allOwnedNodes()->union(node)->union(node->select(oclIsKindOf(Action)).oclAsType(Action).allOwnedNodes())->asSet())"
	
	self notYetImplemented

]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> containedEdges [
	^ (sharedGeneralizations at: #ActivityGroup) containedEdges
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> containedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityGroup) containedEdges: anActivityEdge
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> containedNodes [
	^ (sharedGeneralizations at: #ActivityGroup) containedNodes
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> containedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityGroup) containedNodes: anActivityNode
]

{ #category : 'operations - stubs' }
OPUMLStructuredActivityNode >> containingActivityStub [
	"The Activity that directly or indirectly contains this StructuredActivityNode (considered as an Action)."
	
	"{OCL} result = (self.Action::containingActivity())"
	
	self notYetImplemented

]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> edges [
	"The ActivityEdges immediately contained in the StructuredActivityNode."
	^ edges ifNil: [ edges := OPUMLToManyLinks on: self identity opposite: #inStructuredNode: ]
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> edges: anActivityEdge [
	"The ActivityEdges immediately contained in the StructuredActivityNode."
	self edges
		removeAll;
		addAll: anActivityEdge
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - ExecutableNode' }
OPUMLStructuredActivityNode >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : 'accessing - ExecutableNode' }
OPUMLStructuredActivityNode >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> inActivity [
	^ (sharedGeneralizations at: #ActivityGroup) inActivity
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> inActivity: anActivity [
	(sharedGeneralizations at: #ActivityGroup) inActivity: anActivity
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : 'initialization' }
OPUMLStructuredActivityNode >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Namespace.
		sharedGeneralizations at: #ActivityGroup.
		sharedGeneralizations at: #Action.
	}
]

{ #category : 'initialization' }
OPUMLStructuredActivityNode >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityGroup put: (OPUMLActivityGroup newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuredActivityNode put: self.
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuredActivityNode >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuredActivityNode >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> mustIsolate [
	"If true, then any object used by an Action within the StructuredActivityNode cannot be accessed by any Action outside the node until the StructuredActivityNode as a whole completes. Any concurrent Actions that would result in accessing such objects are required to have their execution deferred until the completion of the StructuredActivityNode.
"
	^ mustIsolate ifNil: [ mustIsolate := false ]
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> mustIsolate: aBoolean [
	"If true, then any object used by an Action within the StructuredActivityNode cannot be accessed by any Action outside the node until the StructuredActivityNode as a whole completes. Any concurrent Actions that would result in accessing such objects are required to have their execution deferred until the completion of the StructuredActivityNode.
"
	mustIsolate := aBoolean
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> nodes [
	"The ActivityNodes immediately contained in the StructuredActivityNode."
	^ nodes ifNil: [ nodes := OPUMLToManyLinks on: self identity opposite: #inStructuredNode: ]
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> nodes: anActivityNode [
	"The ActivityNodes immediately contained in the StructuredActivityNode."
	self nodes
		removeAll;
		addAll: anActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : 'accessing - Action' }
OPUMLStructuredActivityNode >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLStructuredActivityNode >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuredActivityNode >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuredActivityNode >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : 'accessing - ActivityNode' }
OPUMLStructuredActivityNode >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuredActivityNode >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuredActivityNode >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'operations - stubs' }
OPUMLStructuredActivityNode >> sourceNodesStub [
	"Return those ActivityNodes contained immediately within the StructuredActivityNode that may act as sources of edges owned by the StructuredActivityNode."
	
	"{OCL} result = (node->union(input.oclAsType(ActivityNode)->asSet())->
  union(node->select(oclIsKindOf(Action)).oclAsType(Action).output)->asSet())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> structuredNodeInputs [
	"The InputPins owned by the StructuredActivityNode."
	^ structuredNodeInputs ifNil: [ structuredNodeInputs := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> structuredNodeInputs: anInputPin [
	"The InputPins owned by the StructuredActivityNode."
	structuredNodeInputs := anInputPin
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> structuredNodeOutputs [
	"The OutputPins owned by the StructuredActivityNode."
	^ structuredNodeOutputs ifNil: [ structuredNodeOutputs := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> structuredNodeOutputs: anOutputPin [
	"The OutputPins owned by the StructuredActivityNode."
	structuredNodeOutputs := anOutputPin
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> subgroups [
	^ (sharedGeneralizations at: #ActivityGroup) subgroups
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> subgroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) subgroups: anActivityGroup
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> superGroup [
	^ (sharedGeneralizations at: #ActivityGroup) superGroup
]

{ #category : 'accessing - ActivityGroup' }
OPUMLStructuredActivityNode >> superGroup: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) superGroup: anActivityGroup
]

{ #category : 'operations - stubs' }
OPUMLStructuredActivityNode >> targetNodesStub [
	"Return those ActivityNodes contained immediately within the StructuredActivityNode that may act as targets of edges owned by the StructuredActivityNode."
	
	"{OCL} result = (node->union(output.oclAsType(ActivityNode)->asSet())->
  union(node->select(oclIsKindOf(Action)).oclAsType(Action).input)->asSet())"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> variables [
	"The Variables defined in the scope of the StructuredActivityNode."
	^ variables ifNil: [ variables := OPUMLToManyLinks on: self identity opposite: #scope: ]
]

{ #category : 'accessing' }
OPUMLStructuredActivityNode >> variables: aVariable [
	"The Variables defined in the scope of the StructuredActivityNode."
	self variables
		removeAll;
		addAll: aVariable
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuredActivityNode >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
