"
An ObjectNode is an abstract ActivityNode that may hold tokens within the object flow in an Activity. ObjectNodes also support token selection, limitation on the number of tokens held, specification of the state required for tokens being held, and carrying control values.

"
Class {
	#name : #OPUMLObjectNode,
	#superclass : #OPUMLElement,
	#instVars : [
		'selection',
		'isControlType',
		'ordering',
		'inStates',
		'upperBound'
	],
	#category : 'OP-UML-Metamodel-Activities'
}

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #accessing }
OPUMLObjectNode >> inStates [
	"The States required to be associated with the values held by tokens on this ObjectNode."
	^ inStates ifNil: [ inStates := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLObjectNode >> inStates: aState [
	"The States required to be associated with the values held by tokens on this ObjectNode."
	inStates := aState
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLObjectNode >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TypedElement.
		sharedGeneralizations at: #ActivityNode.
	}
]

{ #category : #initialization }
OPUMLObjectNode >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ObjectNode put: self.
]

{ #category : #accessing }
OPUMLObjectNode >> isControlType [
	"Indicates whether the type of the ObjectNode is to be treated as representing control values that may traverse ControlFlows."
	^ isControlType ifNil: [ isControlType := false ]
]

{ #category : #accessing }
OPUMLObjectNode >> isControlType: aBoolean [
	"Indicates whether the type of the ObjectNode is to be treated as representing control values that may traverse ControlFlows."
	isControlType := aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLObjectNode >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLObjectNode >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLObjectNode >> ordering [
	"Indicates how the tokens held by the ObjectNode are ordered for selection to traverse ActivityEdges outgoing from the ObjectNode."
	^ ordering ifNil: [ ordering := OPUMLObjectNodeOrderingKind new FIFO ]
]

{ #category : #accessing }
OPUMLObjectNode >> ordering: anObjectNodeOrderingKind [
	"Indicates how the tokens held by the ObjectNode are ordered for selection to traverse ActivityEdges outgoing from the ObjectNode."
	ordering := anObjectNodeOrderingKind
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLObjectNode >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLObjectNode >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLObjectNode >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLObjectNode >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLObjectNode >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLObjectNode >> selection [
	"A Behavior used to select tokens to be offered on outgoing ActivityEdges."
	^ selection
]

{ #category : #accessing }
OPUMLObjectNode >> selection: aBehavior [
	"A Behavior used to select tokens to be offered on outgoing ActivityEdges."
	selection := aBehavior
]

{ #category : #'accessing - TypedElement' }
OPUMLObjectNode >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLObjectNode >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #accessing }
OPUMLObjectNode >> upperBound [
	"The maximum number of tokens that may be held by this ObjectNode. Tokens cannot flow into the ObjectNode if the upperBound is reached. If no upperBound is specified, then there is no limit on how many tokens the ObjectNode can hold."
	^ upperBound
]

{ #category : #accessing }
OPUMLObjectNode >> upperBound: aValueSpecification [
	"The maximum number of tokens that may be held by this ObjectNode. Tokens cannot flow into the ObjectNode if the upperBound is reached. If no upperBound is specified, then there is no limit on how many tokens the ObjectNode can hold."
	upperBound := aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLObjectNode >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
