"
An ActivityEdge is an abstract class for directed connections between two ActivityNodes.
"
Class {
	#name : #OPUMLActivityEdge,
	#superclass : #OPUMLElement,
	#instVars : [
		'redefinedEdges',
		'activity',
		'guard',
		'weight',
		'inPartitions',
		'interrupts',
		'inStructuredNode',
		'target',
		'source',
		'inGroups'
	],
	#category : 'OP-UML-Metamodel-Activities'
}

{ #category : #accessing }
OPUMLActivityEdge >> activity [
	"The Activity containing the ActivityEdge, if it is directly owned by an Activity."
	^ activity
]

{ #category : #accessing }
OPUMLActivityEdge >> activity: anActivity [
	"The Activity containing the ActivityEdge, if it is directly owned by an Activity."
	activity := OPUMLToOneLink
		on: self identity
		update: #edges
		from: activity
		to: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLActivityEdge >> guard [
	"A ValueSpecification that is evaluated to determine if a token can traverse the ActivityEdge. If an ActivityEdge has no guard, then there is no restriction on tokens traversing the edge."
	^ guard
]

{ #category : #accessing }
OPUMLActivityEdge >> guard: aValueSpecification [
	"A ValueSpecification that is evaluated to determine if a token can traverse the ActivityEdge. If an ActivityEdge has no guard, then there is no restriction on tokens traversing the edge."
	guard := aValueSpecification
]

{ #category : #accessing }
OPUMLActivityEdge >> inGroups [
	"ActivityGroups containing the ActivityEdge."
	^ inGroups ifNil: [ inGroups := OPUMLManyToManyLinks on: self identity opposite: #containedEdges ]
]

{ #category : #accessing }
OPUMLActivityEdge >> inGroups: anActivityGroup [
	"ActivityGroups containing the ActivityEdge."
	self inGroups
		removeAll;
		addAll: anActivityGroup
]

{ #category : #accessing }
OPUMLActivityEdge >> inPartitions [
	"ActivityPartitions containing the ActivityEdge."
	^ inPartitions ifNil: [ inPartitions := OPUMLManyToManyLinks on: self identity opposite: #edges ]
]

{ #category : #accessing }
OPUMLActivityEdge >> inPartitions: anActivityPartition [
	"ActivityPartitions containing the ActivityEdge."
	self inPartitions
		removeAll;
		addAll: anActivityPartition
]

{ #category : #accessing }
OPUMLActivityEdge >> inStructuredNode [
	"The StructuredActivityNode containing the ActivityEdge, if it is owned by a StructuredActivityNode."
	^ inStructuredNode
]

{ #category : #accessing }
OPUMLActivityEdge >> inStructuredNode: aStructuredActivityNode [
	"The StructuredActivityNode containing the ActivityEdge, if it is owned by a StructuredActivityNode."
	inStructuredNode := OPUMLToOneLink
		on: self identity
		update: #edges
		from: inStructuredNode
		to: aStructuredActivityNode
]

{ #category : #initialization }
OPUMLActivityEdge >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableElement.
	}
]

{ #category : #initialization }
OPUMLActivityEdge >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityEdge put: self.
]

{ #category : #accessing }
OPUMLActivityEdge >> interrupts [
	"The InterruptibleActivityRegion for which this ActivityEdge is an interruptingEdge."
	^ interrupts
]

{ #category : #accessing }
OPUMLActivityEdge >> interrupts: anInterruptibleActivityRegion [
	"The InterruptibleActivityRegion for which this ActivityEdge is an interruptingEdge."
	interrupts := OPUMLToOneLink
		on: self identity
		update: #interruptingEdges
		from: interrupts
		to: anInterruptibleActivityRegion
]

{ #category : #'operations - stubs' }
OPUMLActivityEdge >> isConsistentWithStub [
	""
	
	"{OCL} result = (redefiningElement.oclIsKindOf(ActivityEdge))"
	
	self notYetImplemented

]

{ #category : #'accessing - RedefinableElement' }
OPUMLActivityEdge >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActivityEdge >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLActivityEdge >> redefinedEdges [
	"ActivityEdges from a generalization of the Activity containing this ActivityEdge that are redefined by this ActivityEdge."
	^ redefinedEdges ifNil: [ redefinedEdges := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLActivityEdge >> redefinedEdges: anActivityEdge [
	"ActivityEdges from a generalization of the Activity containing this ActivityEdge that are redefined by this ActivityEdge."
	redefinedEdges := anActivityEdge
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActivityEdge >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActivityEdge >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActivityEdge >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLActivityEdge >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLActivityEdge >> source [
	"The ActivityNode from which tokens are taken when they traverse the ActivityEdge."
	^ source
]

{ #category : #accessing }
OPUMLActivityEdge >> source: anActivityNode [
	"The ActivityNode from which tokens are taken when they traverse the ActivityEdge."
	source := OPUMLToOneLink
		on: self identity
		update: #outgoings
		from: source
		to: anActivityNode
]

{ #category : #accessing }
OPUMLActivityEdge >> target [
	"The ActivityNode to which tokens are put when they traverse the ActivityEdge."
	^ target
]

{ #category : #accessing }
OPUMLActivityEdge >> target: anActivityNode [
	"The ActivityNode to which tokens are put when they traverse the ActivityEdge."
	target := OPUMLToOneLink
		on: self identity
		update: #incomings
		from: target
		to: anActivityNode
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityEdge >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]

{ #category : #accessing }
OPUMLActivityEdge >> weight [
	"The minimum number of tokens that must traverse the ActivityEdge at the same time. If no weight is specified, this is equivalent to specifying a constant value of 1."
	^ weight
]

{ #category : #accessing }
OPUMLActivityEdge >> weight: aValueSpecification [
	"The minimum number of tokens that must traverse the ActivityEdge at the same time. If no weight is specified, this is equivalent to specifying a constant value of 1."
	weight := aValueSpecification
]
