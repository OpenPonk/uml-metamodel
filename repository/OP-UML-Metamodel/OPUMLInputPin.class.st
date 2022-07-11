"
An InputPin is a Pin that holds input values to be consumed by an Action.
"
Class {
	#name : #OPUMLInputPin,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> inStates [
	^ (sharedGeneralizations at: #ObjectNode) inStates
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> inStates: aState [
	(sharedGeneralizations at: #ObjectNode) inStates: aState
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLInputPin >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Pin.
	}
]

{ #category : #initialization }
OPUMLInputPin >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ObjectNode put: (OPUMLObjectNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Pin put: (OPUMLPin newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InputPin put: self.
]

{ #category : #'accessing - Pin' }
OPUMLInputPin >> isControl [
	^ (sharedGeneralizations at: #Pin) isControl
]

{ #category : #'accessing - Pin' }
OPUMLInputPin >> isControl: aBoolean [
	(sharedGeneralizations at: #Pin) isControl: aBoolean
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> isControlType [
	^ (sharedGeneralizations at: #ObjectNode) isControlType
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> isControlType: aBoolean [
	(sharedGeneralizations at: #ObjectNode) isControlType: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInputPin >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInputPin >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLInputPin >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLInputPin >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : #'operations - MultiplicityElement' }
OPUMLInputPin >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> ordering [
	^ (sharedGeneralizations at: #ObjectNode) ordering
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> ordering: anObjectNodeOrderingKind [
	(sharedGeneralizations at: #ObjectNode) ordering: anObjectNodeOrderingKind
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInputPin >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInputPin >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLInputPin >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInputPin >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInputPin >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> selection [
	^ (sharedGeneralizations at: #ObjectNode) selection
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> selection: aBehavior [
	(sharedGeneralizations at: #ObjectNode) selection: aBehavior
]

{ #category : #'accessing - TypedElement' }
OPUMLInputPin >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLInputPin >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - MultiplicityElement' }
OPUMLInputPin >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : #'operations - MultiplicityElement' }
OPUMLInputPin >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : #'accessing - ObjectNode' }
OPUMLInputPin >> upperBound: aValueSpecification [
	(sharedGeneralizations at: #ObjectNode) upperBound: aValueSpecification
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLInputPin >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLInputPin >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
