"
A RemoveStructuralFeatureValueAction is a WriteStructuralFeatureAction that removes values from a StructuralFeature.
"
Class {
	#name : #OPUMLRemoveStructuralFeatureValueAction,
	#superclass : #OPUMLElement,
	#instVars : [
		'removeAt',
		'isRemoveDuplicates'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #'accessing - ExecutableNode' }
OPUMLRemoveStructuralFeatureValueAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLRemoveStructuralFeatureValueAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLRemoveStructuralFeatureValueAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #WriteStructuralFeatureAction.
	}
]

{ #category : #initialization }
OPUMLRemoveStructuralFeatureValueAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuralFeatureAction put: (OPUMLStructuralFeatureAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #WriteStructuralFeatureAction put: (OPUMLWriteStructuralFeatureAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RemoveStructuralFeatureValueAction put: self.
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRemoveStructuralFeatureValueAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRemoveStructuralFeatureValueAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #accessing }
OPUMLRemoveStructuralFeatureValueAction >> isRemoveDuplicates [
	"Specifies whether to remove duplicates of the value in nonunique StructuralFeatures."
	^ isRemoveDuplicates ifNil: [ isRemoveDuplicates := false ]
]

{ #category : #accessing }
OPUMLRemoveStructuralFeatureValueAction >> isRemoveDuplicates: aBoolean [
	"Specifies whether to remove duplicates of the value in nonunique StructuralFeatures."
	isRemoveDuplicates := aBoolean
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - StructuralFeatureAction' }
OPUMLRemoveStructuralFeatureValueAction >> object [
	^ (sharedGeneralizations at: #StructuralFeatureAction) object
]

{ #category : #'accessing - StructuralFeatureAction' }
OPUMLRemoveStructuralFeatureValueAction >> object: anInputPin [
	(sharedGeneralizations at: #StructuralFeatureAction) object: anInputPin
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLRemoveStructuralFeatureValueAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRemoveStructuralFeatureValueAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRemoveStructuralFeatureValueAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLRemoveStructuralFeatureValueAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRemoveStructuralFeatureValueAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRemoveStructuralFeatureValueAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLRemoveStructuralFeatureValueAction >> removeAt [
	"An InputPin that provides the position of an existing value to remove in ordered, nonunique structural features. The type of the removeAt InputPin is UnlimitedNatural, but the value cannot be zero or unlimited."
	^ removeAt
]

{ #category : #accessing }
OPUMLRemoveStructuralFeatureValueAction >> removeAt: anInputPin [
	"An InputPin that provides the position of an existing value to remove in ordered, nonunique structural features. The type of the removeAt InputPin is UnlimitedNatural, but the value cannot be zero or unlimited."
	removeAt := anInputPin
]

{ #category : #'accessing - WriteStructuralFeatureAction' }
OPUMLRemoveStructuralFeatureValueAction >> result [
	^ (sharedGeneralizations at: #WriteStructuralFeatureAction) result
]

{ #category : #'accessing - WriteStructuralFeatureAction' }
OPUMLRemoveStructuralFeatureValueAction >> result: anOutputPin [
	(sharedGeneralizations at: #WriteStructuralFeatureAction) result: anOutputPin
]

{ #category : #'accessing - StructuralFeatureAction' }
OPUMLRemoveStructuralFeatureValueAction >> structuralFeature [
	^ (sharedGeneralizations at: #StructuralFeatureAction) structuralFeature
]

{ #category : #'accessing - StructuralFeatureAction' }
OPUMLRemoveStructuralFeatureValueAction >> structuralFeature: aStructuralFeature [
	(sharedGeneralizations at: #StructuralFeatureAction) structuralFeature: aStructuralFeature
]

{ #category : #'accessing - WriteStructuralFeatureAction' }
OPUMLRemoveStructuralFeatureValueAction >> value [
	^ (sharedGeneralizations at: #WriteStructuralFeatureAction) value
]

{ #category : #'accessing - WriteStructuralFeatureAction' }
OPUMLRemoveStructuralFeatureValueAction >> value: anInputPin [
	(sharedGeneralizations at: #WriteStructuralFeatureAction) value: anInputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLRemoveStructuralFeatureValueAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
