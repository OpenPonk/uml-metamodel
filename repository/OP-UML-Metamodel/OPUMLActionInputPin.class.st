"
An ActionInputPin is a kind of InputPin that executes an Action to determine the values to input to another Action.
"
Class {
	#name : #OPUMLActionInputPin,
	#superclass : #OPUMLElement,
	#instVars : [
		'fromAction'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLActionInputPin >> fromAction [
	"The Action used to provide the values of the ActionInputPin."
	^ fromAction
]

{ #category : #accessing }
OPUMLActionInputPin >> fromAction: anAction [
	"The Action used to provide the values of the ActionInputPin."
	fromAction := anAction
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> inStates [
	^ (sharedGeneralizations at: #ObjectNode) inStates
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> inStates: aState [
	(sharedGeneralizations at: #ObjectNode) inStates: aState
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLActionInputPin >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InputPin.
	}
]

{ #category : #initialization }
OPUMLActionInputPin >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ObjectNode put: (OPUMLObjectNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Pin put: (OPUMLPin newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InputPin put: (OPUMLInputPin newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActionInputPin put: self.
]

{ #category : #'accessing - Pin' }
OPUMLActionInputPin >> isControl [
	^ (sharedGeneralizations at: #Pin) isControl
]

{ #category : #'accessing - Pin' }
OPUMLActionInputPin >> isControl: aBoolean [
	(sharedGeneralizations at: #Pin) isControl: aBoolean
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> isControlType [
	^ (sharedGeneralizations at: #ObjectNode) isControlType
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> isControlType: aBoolean [
	(sharedGeneralizations at: #ObjectNode) isControlType: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActionInputPin >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActionInputPin >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLActionInputPin >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLActionInputPin >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : #'operations - MultiplicityElement' }
OPUMLActionInputPin >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> ordering [
	^ (sharedGeneralizations at: #ObjectNode) ordering
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> ordering: anObjectNodeOrderingKind [
	(sharedGeneralizations at: #ObjectNode) ordering: anObjectNodeOrderingKind
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActionInputPin >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActionInputPin >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLActionInputPin >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActionInputPin >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActionInputPin >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> selection [
	^ (sharedGeneralizations at: #ObjectNode) selection
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> selection: aBehavior [
	(sharedGeneralizations at: #ObjectNode) selection: aBehavior
]

{ #category : #'accessing - TypedElement' }
OPUMLActionInputPin >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLActionInputPin >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - MultiplicityElement' }
OPUMLActionInputPin >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : #'operations - MultiplicityElement' }
OPUMLActionInputPin >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : #'accessing - ObjectNode' }
OPUMLActionInputPin >> upperBound: aValueSpecification [
	(sharedGeneralizations at: #ObjectNode) upperBound: aValueSpecification
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLActionInputPin >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLActionInputPin >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
