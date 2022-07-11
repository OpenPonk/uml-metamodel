"
ActivityGroup is an abstract class for defining sets of ActivityNodes and ActivityEdges in an Activity.
"
Class {
	#name : #OPUMLActivityGroup,
	#superclass : #OPUMLElement,
	#instVars : [
		'superGroup',
		'containedEdges',
		'containedNodes',
		'inActivity',
		'subgroups'
	],
	#category : 'OP-UML-Metamodel-Activities'
}

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLActivityGroup >> containedEdges [
	"ActivityEdges immediately contained in the ActivityGroup."
	^ containedEdges ifNil: [ containedEdges := OPUMLManyToManyLinks on: self identity opposite: #inGroups ]
]

{ #category : #accessing }
OPUMLActivityGroup >> containedEdges: anActivityEdge [
	"ActivityEdges immediately contained in the ActivityGroup."
	self containedEdges
		removeAll;
		addAll: anActivityEdge
]

{ #category : #accessing }
OPUMLActivityGroup >> containedNodes [
	"ActivityNodes immediately contained in the ActivityGroup."
	^ containedNodes ifNil: [ containedNodes := OPUMLManyToManyLinks on: self identity opposite: #inGroups ]
]

{ #category : #accessing }
OPUMLActivityGroup >> containedNodes: anActivityNode [
	"ActivityNodes immediately contained in the ActivityGroup."
	self containedNodes
		removeAll;
		addAll: anActivityNode
]

{ #category : #'operations - stubs' }
OPUMLActivityGroup >> containingActivityStub [
	"The Activity that directly or indirectly contains this ActivityGroup."
	
	"{OCL} result = (if superGroup<>null then superGroup.containingActivity()
else inActivity
endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLActivityGroup >> inActivity [
	"The Activity containing the ActivityGroup, if it is directly owned by an Activity."
	^ inActivity
]

{ #category : #accessing }
OPUMLActivityGroup >> inActivity: anActivity [
	"The Activity containing the ActivityGroup, if it is directly owned by an Activity."
	inActivity := OPUMLToOneLink
		on: self identity
		update: #groups
		from: inActivity
		to: anActivity
]

{ #category : #initialization }
OPUMLActivityGroup >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLActivityGroup >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityGroup put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLActivityGroup >> subgroups [
	"Other ActivityGroups immediately contained in this ActivityGroup."
	^ subgroups ifNil: [ subgroups := OPUMLToManyLinks on: self identity opposite: #superGroup: ]
]

{ #category : #accessing }
OPUMLActivityGroup >> subgroups: anActivityGroup [
	"Other ActivityGroups immediately contained in this ActivityGroup."
	self subgroups
		removeAll;
		addAll: anActivityGroup
]

{ #category : #accessing }
OPUMLActivityGroup >> superGroup [
	"The ActivityGroup immediately containing this ActivityGroup, if it is directly owned by another ActivityGroup."
	^ superGroup
]

{ #category : #accessing }
OPUMLActivityGroup >> superGroup: anActivityGroup [
	"The ActivityGroup immediately containing this ActivityGroup, if it is directly owned by another ActivityGroup."
	superGroup := OPUMLToOneLink
		on: self identity
		update: #subgroups
		from: superGroup
		to: anActivityGroup
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLActivityGroup >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
