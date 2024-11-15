"
ActivityNode is an abstract class for points in the flow of an Activity connected by ActivityEdges.
"
Class {
	#name : 'OPUMLActivityNode',
	#superclass : 'OPUMLElement',
	#instVars : [
		'outgoings',
		'activity',
		'inStructuredNode',
		'inGroups',
		'inInterruptibleRegions',
		'inPartitions',
		'redefinedNodes',
		'incomings'
	],
	#category : 'OpenPonk-UML-Metamodel-Activities',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Activities'
}

{ #category : 'accessing' }
OPUMLActivityNode >> activity [
	"The Activity containing the ActivityNode, if it is directly owned by an Activity."
	^ activity
]

{ #category : 'accessing' }
OPUMLActivityNode >> activity: anActivity [
	"The Activity containing the ActivityNode, if it is directly owned by an Activity."
	activity := OPUMLToOneLink
		on: self identity
		update: #nodes
		from: activity
		to: anActivity
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'operations - stubs' }
OPUMLActivityNode >> containingActivityStub [
	"The Activity that directly or indirectly contains this ActivityNode."
	
	"{OCL} result = (if inStructuredNode<>null then inStructuredNode.containingActivity()
else activity
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLActivityNode >> inGroups [
	"ActivityGroups containing the ActivityNode."
	^ inGroups ifNil: [ inGroups := OPUMLManyToManyLinks on: self identity opposite: #containedNodes ]
]

{ #category : 'accessing' }
OPUMLActivityNode >> inGroups: anActivityGroup [
	"ActivityGroups containing the ActivityNode."
	self inGroups
		removeAll;
		addAll: anActivityGroup
]

{ #category : 'accessing' }
OPUMLActivityNode >> inInterruptibleRegions [
	"InterruptibleActivityRegions containing the ActivityNode."
	^ inInterruptibleRegions ifNil: [ inInterruptibleRegions := OPUMLManyToManyLinks on: self identity opposite: #nodes ]
]

{ #category : 'accessing' }
OPUMLActivityNode >> inInterruptibleRegions: anInterruptibleActivityRegion [
	"InterruptibleActivityRegions containing the ActivityNode."
	self inInterruptibleRegions
		removeAll;
		addAll: anInterruptibleActivityRegion
]

{ #category : 'accessing' }
OPUMLActivityNode >> inPartitions [
	"ActivityPartitions containing the ActivityNode."
	^ inPartitions ifNil: [ inPartitions := OPUMLManyToManyLinks on: self identity opposite: #nodes ]
]

{ #category : 'accessing' }
OPUMLActivityNode >> inPartitions: anActivityPartition [
	"ActivityPartitions containing the ActivityNode."
	self inPartitions
		removeAll;
		addAll: anActivityPartition
]

{ #category : 'accessing' }
OPUMLActivityNode >> inStructuredNode [
	"The StructuredActivityNode containing the ActvityNode, if it is directly owned by a StructuredActivityNode."
	^ inStructuredNode
]

{ #category : 'accessing' }
OPUMLActivityNode >> inStructuredNode: aStructuredActivityNode [
	"The StructuredActivityNode containing the ActvityNode, if it is directly owned by a StructuredActivityNode."
	inStructuredNode := OPUMLToOneLink
		on: self identity
		update: #nodes
		from: inStructuredNode
		to: aStructuredActivityNode
]

{ #category : 'accessing' }
OPUMLActivityNode >> incomings [
	"ActivityEdges that have the ActivityNode as their target."
	^ incomings ifNil: [ incomings := OPUMLToManyLinks on: self identity opposite: #target: ]
]

{ #category : 'accessing' }
OPUMLActivityNode >> incomings: anActivityEdge [
	"ActivityEdges that have the ActivityNode as their target."
	self incomings
		removeAll;
		addAll: anActivityEdge
]

{ #category : 'initialization' }
OPUMLActivityNode >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableElement.
	}
]

{ #category : 'initialization' }
OPUMLActivityNode >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: self.
]

{ #category : 'operations - stubs' }
OPUMLActivityNode >> isConsistentWithStub [
	""
	
	"{OCL} result = (redefiningElement.oclIsKindOf(ActivityNode))"
	
	self notYetImplemented

]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivityNode >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivityNode >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing' }
OPUMLActivityNode >> outgoings [
	"ActivityEdges that have the ActivityNode as their source."
	^ outgoings ifNil: [ outgoings := OPUMLToManyLinks on: self identity opposite: #source: ]
]

{ #category : 'accessing' }
OPUMLActivityNode >> outgoings: anActivityEdge [
	"ActivityEdges that have the ActivityNode as their source."
	self outgoings
		removeAll;
		addAll: anActivityEdge
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivityNode >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivityNode >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing' }
OPUMLActivityNode >> redefinedNodes [
	"ActivityNodes from a generalization of the Activity containining this ActivityNode that are redefined by this ActivityNode."
	^ redefinedNodes ifNil: [ redefinedNodes := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLActivityNode >> redefinedNodes: anActivityNode [
	"ActivityNodes from a generalization of the Activity containining this ActivityNode that are redefined by this ActivityNode."
	redefinedNodes := anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivityNode >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivityNode >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityNode >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
