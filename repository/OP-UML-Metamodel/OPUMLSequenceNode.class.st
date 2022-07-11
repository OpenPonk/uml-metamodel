"
A SequenceNode is a StructuredActivityNode that executes a sequence of ExecutableNodes in order.
"
Class {
	#name : #OPUMLSequenceNode,
	#superclass : #OPUMLElement,
	#instVars : [
		'executableNodes'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> activity [
	^ (sharedGeneralizations at: #StructuredActivityNode) activity
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> activity: anActivity [
	(sharedGeneralizations at: #StructuredActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> containedEdges [
	^ (sharedGeneralizations at: #ActivityGroup) containedEdges
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> containedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityGroup) containedEdges: anActivityEdge
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> containedNodes [
	^ (sharedGeneralizations at: #ActivityGroup) containedNodes
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> containedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityGroup) containedNodes: anActivityNode
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> edges [
	^ (sharedGeneralizations at: #StructuredActivityNode) edges
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> edges: anActivityEdge [
	(sharedGeneralizations at: #StructuredActivityNode) edges: anActivityEdge
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #accessing }
OPUMLSequenceNode >> executableNodes [
	"The ordered set of ExecutableNodes to be sequenced."
	^ executableNodes ifNil: [ executableNodes := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLSequenceNode >> executableNodes: anExecutableNode [
	"The ordered set of ExecutableNodes to be sequenced."
	executableNodes := anExecutableNode
]

{ #category : #'accessing - ExecutableNode' }
OPUMLSequenceNode >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLSequenceNode >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> inActivity [
	^ (sharedGeneralizations at: #ActivityGroup) inActivity
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> inActivity: anActivity [
	(sharedGeneralizations at: #ActivityGroup) inActivity: anActivity
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLSequenceNode >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #StructuredActivityNode.
	}
]

{ #category : #initialization }
OPUMLSequenceNode >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityGroup put: (OPUMLActivityGroup newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuredActivityNode put: (OPUMLStructuredActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SequenceNode put: self.
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLSequenceNode >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLSequenceNode >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> mustIsolate [
	^ (sharedGeneralizations at: #StructuredActivityNode) mustIsolate
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> mustIsolate: aBoolean [
	(sharedGeneralizations at: #StructuredActivityNode) mustIsolate: aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> nodes [
	^ (sharedGeneralizations at: #StructuredActivityNode) nodes
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> nodes: anActivityNode [
	(sharedGeneralizations at: #StructuredActivityNode) nodes: anActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLSequenceNode >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLSequenceNode >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLSequenceNode >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLSequenceNode >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLSequenceNode >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLSequenceNode >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLSequenceNode >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> structuredNodeInputs [
	^ (sharedGeneralizations at: #StructuredActivityNode) structuredNodeInputs
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> structuredNodeInputs: anInputPin [
	(sharedGeneralizations at: #StructuredActivityNode) structuredNodeInputs: anInputPin
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> structuredNodeOutputs [
	^ (sharedGeneralizations at: #StructuredActivityNode) structuredNodeOutputs
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> structuredNodeOutputs: anOutputPin [
	(sharedGeneralizations at: #StructuredActivityNode) structuredNodeOutputs: anOutputPin
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> subgroups [
	^ (sharedGeneralizations at: #ActivityGroup) subgroups
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> subgroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) subgroups: anActivityGroup
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> superGroup [
	^ (sharedGeneralizations at: #ActivityGroup) superGroup
]

{ #category : #'accessing - ActivityGroup' }
OPUMLSequenceNode >> superGroup: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) superGroup: anActivityGroup
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> variables [
	^ (sharedGeneralizations at: #StructuredActivityNode) variables
]

{ #category : #'accessing - StructuredActivityNode' }
OPUMLSequenceNode >> variables: aVariable [
	(sharedGeneralizations at: #StructuredActivityNode) variables: aVariable
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLSequenceNode >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
