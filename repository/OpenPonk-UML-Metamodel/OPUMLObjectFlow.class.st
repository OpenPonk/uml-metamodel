"
An ObjectFlow is an ActivityEdge that is traversed by object tokens that may hold values. Object flows also support multicast/receive, token selection from object nodes, and transformation of tokens.
"
Class {
	#name : 'OPUMLObjectFlow',
	#superclass : 'OPUMLElement',
	#instVars : [
		'isMultireceive',
		'selection',
		'isMulticast',
		'transformation'
	],
	#category : 'OpenPonk-UML-Metamodel-Activities',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Activities'
}

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> activity [
	^ (sharedGeneralizations at: #ActivityEdge) activity
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> activity: anActivity [
	(sharedGeneralizations at: #ActivityEdge) activity: anActivity
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> guard [
	^ (sharedGeneralizations at: #ActivityEdge) guard
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> guard: aValueSpecification [
	(sharedGeneralizations at: #ActivityEdge) guard: aValueSpecification
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> inGroups [
	^ (sharedGeneralizations at: #ActivityEdge) inGroups
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityEdge) inGroups: anActivityGroup
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> inPartitions [
	^ (sharedGeneralizations at: #ActivityEdge) inPartitions
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityEdge) inPartitions: anActivityPartition
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityEdge) inStructuredNode
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityEdge) inStructuredNode: aStructuredActivityNode
]

{ #category : 'initialization' }
OPUMLObjectFlow >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ActivityEdge.
	}
]

{ #category : 'initialization' }
OPUMLObjectFlow >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityEdge put: (OPUMLActivityEdge newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ObjectFlow put: self.
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> interrupts [
	^ (sharedGeneralizations at: #ActivityEdge) interrupts
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> interrupts: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityEdge) interrupts: anInterruptibleActivityRegion
]

{ #category : 'accessing - RedefinableElement' }
OPUMLObjectFlow >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLObjectFlow >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing' }
OPUMLObjectFlow >> isMulticast [
	"Indicates whether the objects in the ObjectFlow are passed by multicasting."
	^ isMulticast ifNil: [ isMulticast := false ]
]

{ #category : 'accessing' }
OPUMLObjectFlow >> isMulticast: aBoolean [
	"Indicates whether the objects in the ObjectFlow are passed by multicasting."
	isMulticast := aBoolean
]

{ #category : 'accessing' }
OPUMLObjectFlow >> isMultireceive [
	"Indicates whether the objects in the ObjectFlow are gathered from respondents to multicasting."
	^ isMultireceive ifNil: [ isMultireceive := false ]
]

{ #category : 'accessing' }
OPUMLObjectFlow >> isMultireceive: aBoolean [
	"Indicates whether the objects in the ObjectFlow are gathered from respondents to multicasting."
	isMultireceive := aBoolean
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> redefinedEdges [
	^ (sharedGeneralizations at: #ActivityEdge) redefinedEdges
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> redefinedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityEdge) redefinedEdges: anActivityEdge
]

{ #category : 'accessing - RedefinableElement' }
OPUMLObjectFlow >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLObjectFlow >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLObjectFlow >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLObjectFlow >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing' }
OPUMLObjectFlow >> selection [
	"A Behavior used to select tokens from a source ObjectNode."
	^ selection
]

{ #category : 'accessing' }
OPUMLObjectFlow >> selection: aBehavior [
	"A Behavior used to select tokens from a source ObjectNode."
	selection := aBehavior
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> source [
	^ (sharedGeneralizations at: #ActivityEdge) source
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> source: anActivityNode [
	(sharedGeneralizations at: #ActivityEdge) source: anActivityNode
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> target [
	^ (sharedGeneralizations at: #ActivityEdge) target
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> target: anActivityNode [
	(sharedGeneralizations at: #ActivityEdge) target: anActivityNode
]

{ #category : 'accessing' }
OPUMLObjectFlow >> transformation [
	"A Behavior used to change or replace object tokens flowing along the ObjectFlow."
	^ transformation
]

{ #category : 'accessing' }
OPUMLObjectFlow >> transformation: aBehavior [
	"A Behavior used to change or replace object tokens flowing along the ObjectFlow."
	transformation := aBehavior
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLObjectFlow >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> weight [
	^ (sharedGeneralizations at: #ActivityEdge) weight
]

{ #category : 'accessing - ActivityEdge' }
OPUMLObjectFlow >> weight: aValueSpecification [
	(sharedGeneralizations at: #ActivityEdge) weight: aValueSpecification
]
