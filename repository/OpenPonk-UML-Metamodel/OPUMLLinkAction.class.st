"
LinkAction is an abstract class for all Actions that identify the links to be acted on using LinkEndData.
"
Class {
	#name : 'OPUMLLinkAction',
	#superclass : 'OPUMLElement',
	#instVars : [
		'endDatas',
		'inputValues'
	],
	#category : 'OpenPonk-UML-Metamodel-Actions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : 'operations - stubs' }
OPUMLLinkAction >> associationStub [
	"Returns the Association acted on by this LinkAction."
	
	"{OCL} result = (endData->asSequence()->first().end.association)"
	
	self notYetImplemented

]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : 'accessing' }
OPUMLLinkAction >> endDatas [
	"The LinkEndData identifying the values on the ends of the links acting on by this LinkAction."
	^ endDatas ifNil: [ endDatas := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLLinkAction >> endDatas: aLinkEndData [
	"The LinkEndData identifying the values on the ends of the links acting on by this LinkAction."
	endDatas := aLinkEndData
]

{ #category : 'accessing - ExecutableNode' }
OPUMLLinkAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : 'accessing - ExecutableNode' }
OPUMLLinkAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : 'initialization' }
OPUMLLinkAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Action.
	}
]

{ #category : 'initialization' }
OPUMLLinkAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LinkAction put: self.
]

{ #category : 'accessing' }
OPUMLLinkAction >> inputValues [
	"InputPins used by the LinkEndData of the LinkAction."
	^ inputValues ifNil: [ inputValues := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLLinkAction >> inputValues: anInputPin [
	"InputPins used by the LinkEndData of the LinkAction."
	inputValues := anInputPin
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : 'accessing - RedefinableElement' }
OPUMLLinkAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLLinkAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : 'accessing - Action' }
OPUMLLinkAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLLinkAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLLinkAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : 'accessing - ActivityNode' }
OPUMLLinkAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : 'accessing - RedefinableElement' }
OPUMLLinkAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLLinkAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLLinkAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
