"
An InterruptibleActivityRegion is an ActivityGroup that supports the termination of tokens flowing in the portions of an activity within it.
"
Class {
	#name : #OPUMLInterruptibleActivityRegion,
	#superclass : #OPUMLElement,
	#instVars : [
		'nodes',
		'interruptingEdges'
	],
	#category : 'OP-UML-Metamodel-Activities'
}

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> containedEdges [
	^ (sharedGeneralizations at: #ActivityGroup) containedEdges
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> containedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityGroup) containedEdges: anActivityEdge
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> containedNodes [
	^ (sharedGeneralizations at: #ActivityGroup) containedNodes
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> containedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityGroup) containedNodes: anActivityNode
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> inActivity [
	^ (sharedGeneralizations at: #ActivityGroup) inActivity
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> inActivity: anActivity [
	(sharedGeneralizations at: #ActivityGroup) inActivity: anActivity
]

{ #category : #initialization }
OPUMLInterruptibleActivityRegion >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ActivityGroup.
	}
]

{ #category : #initialization }
OPUMLInterruptibleActivityRegion >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityGroup put: (OPUMLActivityGroup newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InterruptibleActivityRegion put: self.
]

{ #category : #accessing }
OPUMLInterruptibleActivityRegion >> interruptingEdges [
	"The ActivityEdges leaving the InterruptibleActivityRegion on which a traversing token will result in the termination of other tokens flowing in the InterruptibleActivityRegion."
	^ interruptingEdges ifNil: [ interruptingEdges := OPUMLToManyLinks on: self identity opposite: #interrupts: ]
]

{ #category : #accessing }
OPUMLInterruptibleActivityRegion >> interruptingEdges: anActivityEdge [
	"The ActivityEdges leaving the InterruptibleActivityRegion on which a traversing token will result in the termination of other tokens flowing in the InterruptibleActivityRegion."
	self interruptingEdges
		removeAll;
		addAll: anActivityEdge
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLInterruptibleActivityRegion >> nodes [
	"ActivityNodes immediately contained in the InterruptibleActivityRegion."
	^ nodes ifNil: [ nodes := OPUMLManyToManyLinks on: self identity opposite: #inInterruptibleRegions ]
]

{ #category : #accessing }
OPUMLInterruptibleActivityRegion >> nodes: anActivityNode [
	"ActivityNodes immediately contained in the InterruptibleActivityRegion."
	self nodes
		removeAll;
		addAll: anActivityNode
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> subgroups [
	^ (sharedGeneralizations at: #ActivityGroup) subgroups
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> subgroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) subgroups: anActivityGroup
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> superGroup [
	^ (sharedGeneralizations at: #ActivityGroup) superGroup
]

{ #category : #'accessing - ActivityGroup' }
OPUMLInterruptibleActivityRegion >> superGroup: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) superGroup: anActivityGroup
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLInterruptibleActivityRegion >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
