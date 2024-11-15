"
An ActivityPartition is a kind of ActivityGroup for identifying ActivityNodes that have some characteristic in common.
"
Class {
	#name : 'OPUMLActivityPartition',
	#superclass : 'OPUMLElement',
	#instVars : [
		'represents',
		'nodes',
		'isDimension',
		'subpartitions',
		'edges',
		'isExternal',
		'superPartition'
	],
	#category : 'OpenPonk-UML-Metamodel-Activities',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Activities'
}

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> containedEdges [
	^ (sharedGeneralizations at: #ActivityGroup) containedEdges
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> containedEdges: anActivityEdge [
	(sharedGeneralizations at: #ActivityGroup) containedEdges: anActivityEdge
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> containedNodes [
	^ (sharedGeneralizations at: #ActivityGroup) containedNodes
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> containedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityGroup) containedNodes: anActivityNode
]

{ #category : 'accessing' }
OPUMLActivityPartition >> edges [
	"ActivityEdges immediately contained in the ActivityPartition."
	^ edges ifNil: [ edges := OPUMLManyToManyLinks on: self identity opposite: #inPartitions ]
]

{ #category : 'accessing' }
OPUMLActivityPartition >> edges: anActivityEdge [
	"ActivityEdges immediately contained in the ActivityPartition."
	self edges
		removeAll;
		addAll: anActivityEdge
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> inActivity [
	^ (sharedGeneralizations at: #ActivityGroup) inActivity
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> inActivity: anActivity [
	(sharedGeneralizations at: #ActivityGroup) inActivity: anActivity
]

{ #category : 'initialization' }
OPUMLActivityPartition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ActivityGroup.
	}
]

{ #category : 'initialization' }
OPUMLActivityPartition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityGroup put: (OPUMLActivityGroup newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityPartition put: self.
]

{ #category : 'accessing' }
OPUMLActivityPartition >> isDimension [
	"Indicates whether the ActivityPartition groups other ActivityPartitions along a dimension."
	^ isDimension ifNil: [ isDimension := false ]
]

{ #category : 'accessing' }
OPUMLActivityPartition >> isDimension: aBoolean [
	"Indicates whether the ActivityPartition groups other ActivityPartitions along a dimension."
	isDimension := aBoolean
]

{ #category : 'accessing' }
OPUMLActivityPartition >> isExternal [
	"Indicates whether the ActivityPartition represents an entity to which the partitioning structure does not apply."
	^ isExternal ifNil: [ isExternal := false ]
]

{ #category : 'accessing' }
OPUMLActivityPartition >> isExternal: aBoolean [
	"Indicates whether the ActivityPartition represents an entity to which the partitioning structure does not apply."
	isExternal := aBoolean
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing' }
OPUMLActivityPartition >> nodes [
	"ActivityNodes immediately contained in the ActivityPartition."
	^ nodes ifNil: [ nodes := OPUMLManyToManyLinks on: self identity opposite: #inPartitions ]
]

{ #category : 'accessing' }
OPUMLActivityPartition >> nodes: anActivityNode [
	"ActivityNodes immediately contained in the ActivityPartition."
	self nodes
		removeAll;
		addAll: anActivityNode
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLActivityPartition >> represents [
	"An Element represented by the functionality modeled within the ActivityPartition."
	^ represents
]

{ #category : 'accessing' }
OPUMLActivityPartition >> represents: anElement [
	"An Element represented by the functionality modeled within the ActivityPartition."
	represents := anElement
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> subgroups [
	^ (sharedGeneralizations at: #ActivityGroup) subgroups
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> subgroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) subgroups: anActivityGroup
]

{ #category : 'accessing' }
OPUMLActivityPartition >> subpartitions [
	"Other ActivityPartitions immediately contained in this ActivityPartition (as its subgroups)."
	^ subpartitions ifNil: [ subpartitions := OPUMLToManyLinks on: self identity opposite: #superPartition: ]
]

{ #category : 'accessing' }
OPUMLActivityPartition >> subpartitions: anActivityPartition [
	"Other ActivityPartitions immediately contained in this ActivityPartition (as its subgroups)."
	self subpartitions
		removeAll;
		addAll: anActivityPartition
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> superGroup [
	^ (sharedGeneralizations at: #ActivityGroup) superGroup
]

{ #category : 'accessing - ActivityGroup' }
OPUMLActivityPartition >> superGroup: anActivityGroup [
	(sharedGeneralizations at: #ActivityGroup) superGroup: anActivityGroup
]

{ #category : 'accessing' }
OPUMLActivityPartition >> superPartition [
	"Other ActivityPartitions immediately containing this ActivityPartition (as its superGroups)."
	^ superPartition
]

{ #category : 'accessing' }
OPUMLActivityPartition >> superPartition: anActivityPartition [
	"Other ActivityPartitions immediately containing this ActivityPartition (as its superGroups)."
	superPartition := OPUMLToOneLink
		on: self identity
		update: #subpartitions
		from: superPartition
		to: anActivityPartition
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLActivityPartition >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
