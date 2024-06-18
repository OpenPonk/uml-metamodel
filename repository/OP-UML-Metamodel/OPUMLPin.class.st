"
A Pin is an ObjectNode and MultiplicityElement that provides input values to an Action or accepts output values from an Action.
"
Class {
	#name : 'OPUMLPin',
	#superclass : 'OPUMLElement',
	#instVars : [
		'isControl'
	],
	#category : 'OP-UML-Metamodel-Actions',
	#package : 'OP-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> inStates [
	^ (sharedGeneralizations at: #ObjectNode) inStates
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> inStates: aState [
	(sharedGeneralizations at: #ObjectNode) inStates: aState
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : 'initialization' }
OPUMLPin >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ObjectNode.
		sharedGeneralizations at: #MultiplicityElement.
	}
]

{ #category : 'initialization' }
OPUMLPin >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ObjectNode put: (OPUMLObjectNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Pin put: self.
]

{ #category : 'accessing' }
OPUMLPin >> isControl [
	"Indicates whether the Pin provides data to the Action or just controls how the Action executes."
	^ isControl ifNil: [ isControl := false ]
]

{ #category : 'accessing' }
OPUMLPin >> isControl: aBoolean [
	"Indicates whether the Pin provides data to the Action or just controls how the Action executes."
	isControl := aBoolean
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> isControlType [
	^ (sharedGeneralizations at: #ObjectNode) isControlType
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> isControlType: aBoolean [
	(sharedGeneralizations at: #ObjectNode) isControlType: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLPin >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLPin >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'operations - MultiplicityElement' }
OPUMLPin >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : 'operations - MultiplicityElement' }
OPUMLPin >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : 'operations - MultiplicityElement' }
OPUMLPin >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> ordering [
	^ (sharedGeneralizations at: #ObjectNode) ordering
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> ordering: anObjectNodeOrderingKind [
	(sharedGeneralizations at: #ObjectNode) ordering: anObjectNodeOrderingKind
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLPin >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLPin >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : 'accessing - ActivityNode' }
OPUMLPin >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLPin >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLPin >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> selection [
	^ (sharedGeneralizations at: #ObjectNode) selection
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> selection: aBehavior [
	(sharedGeneralizations at: #ObjectNode) selection: aBehavior
]

{ #category : 'accessing - TypedElement' }
OPUMLPin >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : 'accessing - TypedElement' }
OPUMLPin >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : 'operations - MultiplicityElement' }
OPUMLPin >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : 'operations - MultiplicityElement' }
OPUMLPin >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : 'accessing - ObjectNode' }
OPUMLPin >> upperBound: aValueSpecification [
	(sharedGeneralizations at: #ObjectNode) upperBound: aValueSpecification
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLPin >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLPin >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
