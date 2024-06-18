"
A ControlFlow is an ActivityEdge traversed by control tokens or object tokens of control type, which are use to control the execution of ExecutableNodes.
"
Class {
	#name : 'OPUMLControlFlow',
	#superclass : 'OPUMLElement',
	#category : 'OP-UML-Metamodel-Activities',
	#package : 'OP-UML-Metamodel',
	#tag : 'Activities'
}

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> activity [
	^ (sharedGeneralizations at: #ActivityEdge) activity
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> activity: anActivity [
	(sharedGeneralizations at: #ActivityEdge) activity: anActivity
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> guard [
	^ (sharedGeneralizations at: #ActivityEdge) guard
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> guard: aValueSpecification [
	(sharedGeneralizations at: #ActivityEdge) guard: aValueSpecification
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> inGroups [
	^ (sharedGeneralizations at: #ActivityEdge) inGroups
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityEdge) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> inPartitions [
	^ (sharedGeneralizations at: #ActivityEdge) inPartitions
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityEdge) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityEdge) inStructuredNode
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityEdge) inStructuredNode: aStructuredActivityNode
]

{ #category : 'initialization' }
OPUMLControlFlow >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ActivityEdge.
	}
]

{ #category : 'initialization' }
OPUMLControlFlow >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityEdge put: (OPUMLActivityEdge newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ControlFlow put: self.
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> interrupts [
	^ (sharedGeneralizations at: #ActivityEdge) interrupts
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> interrupts: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityEdge) interrupts: anInterruptibleActivityRegion
]

{ #category : 'accessing - RedefinableElement' }
OPUMLControlFlow >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLControlFlow >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> redefinedEdges [
	^ (sharedGeneralizations at: #ActivityEdge) redefinedEdges
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> redefinedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityEdge) redefinedEdges: anActivityEdge
]

{ #category : 'accessing - RedefinableElement' }
OPUMLControlFlow >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLControlFlow >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLControlFlow >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLControlFlow >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> source [
	^ (sharedGeneralizations at: #ActivityEdge) source
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> source: anActivityNode [
	(sharedGeneralizations at: #ActivityEdge) source: anActivityNode
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> target [
	^ (sharedGeneralizations at: #ActivityEdge) target
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> target: anActivityNode [
	(sharedGeneralizations at: #ActivityEdge) target: anActivityNode
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLControlFlow >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> weight [
	^ (sharedGeneralizations at: #ActivityEdge) weight
]

{ #category : 'accessing - ActivityEdge' }
OPUMLControlFlow >> weight: aValueSpecification [
	(sharedGeneralizations at: #ActivityEdge) weight: aValueSpecification
]
