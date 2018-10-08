"
An ExpansionNode is an ObjectNode used to indicate a collection input or output for an ExpansionRegion. A collection input of an ExpansionRegion contains a collection that is broken into its individual elements inside the region, whose content is executed once per element. A collection output of an ExpansionRegion combines individual elements produced by the execution of the region into a collection for use outside the region.
"
Class {
	#name : #OPUMLExpansionNode,
	#superclass : #OPUMLElement,
	#instVars : [
		'regionAsInput',
		'regionAsOutput'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> inStates [
	^ (sharedGeneralizations at: #ObjectNode) inStates
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> inStates: aState [
	(sharedGeneralizations at: #ObjectNode) inStates: aState
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLExpansionNode >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ObjectNode.
	}
]

{ #category : #initialization }
OPUMLExpansionNode >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ObjectNode put: (OPUMLObjectNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExpansionNode put: self.
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> isControlType [
	^ (sharedGeneralizations at: #ObjectNode) isControlType
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> isControlType: aBoolean [
	(sharedGeneralizations at: #ObjectNode) isControlType: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExpansionNode >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExpansionNode >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> ordering [
	^ (sharedGeneralizations at: #ObjectNode) ordering
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> ordering: anObjectNodeOrderingKind [
	(sharedGeneralizations at: #ObjectNode) ordering: anObjectNodeOrderingKind
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExpansionNode >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExpansionNode >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLExpansionNode >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExpansionNode >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExpansionNode >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLExpansionNode >> regionAsInput [
	"The ExpansionRegion for which the ExpansionNode is an input."
	^ regionAsInput
]

{ #category : #accessing }
OPUMLExpansionNode >> regionAsInput: anExpansionRegion [
	"The ExpansionRegion for which the ExpansionNode is an input."
	regionAsInput := OPUMLToOneLink
		on: self identity
		update: #inputElements
		from: regionAsInput
		to: anExpansionRegion
]

{ #category : #accessing }
OPUMLExpansionNode >> regionAsOutput [
	"The ExpansionRegion for which the ExpansionNode is an output."
	^ regionAsOutput
]

{ #category : #accessing }
OPUMLExpansionNode >> regionAsOutput: anExpansionRegion [
	"The ExpansionRegion for which the ExpansionNode is an output."
	regionAsOutput := OPUMLToOneLink
		on: self identity
		update: #outputElements
		from: regionAsOutput
		to: anExpansionRegion
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> selection [
	^ (sharedGeneralizations at: #ObjectNode) selection
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> selection: aBehavior [
	(sharedGeneralizations at: #ObjectNode) selection: aBehavior
]

{ #category : #'accessing - TypedElement' }
OPUMLExpansionNode >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLExpansionNode >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> upperBound [
	^ (sharedGeneralizations at: #ObjectNode) upperBound
]

{ #category : #'accessing - ObjectNode' }
OPUMLExpansionNode >> upperBound: aValueSpecification [
	(sharedGeneralizations at: #ObjectNode) upperBound: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLExpansionNode >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
