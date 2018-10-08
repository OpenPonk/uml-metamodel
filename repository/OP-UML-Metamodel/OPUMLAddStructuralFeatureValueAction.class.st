"
An AddStructuralFeatureValueAction is a WriteStructuralFeatureAction for adding values to a StructuralFeature.
"
Class {
	#name : #OPUMLAddStructuralFeatureValueAction,
	#superclass : #OPUMLElement,
	#instVars : [
		'isReplaceAll',
		'insertAt'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> activity [
	^ (sharedGeneralizations at: #ActivityNode) activity
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> activity: anActivity [
	(sharedGeneralizations at: #ActivityNode) activity: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> context [
	^ (sharedGeneralizations at: #Action) context
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> context: aClassifier [
	(sharedGeneralizations at: #Action) context: aClassifier
]

{ #category : #'accessing - ExecutableNode' }
OPUMLAddStructuralFeatureValueAction >> handlers [
	^ (sharedGeneralizations at: #ExecutableNode) handlers
]

{ #category : #'accessing - ExecutableNode' }
OPUMLAddStructuralFeatureValueAction >> handlers: anExceptionHandler [
	(sharedGeneralizations at: #ExecutableNode) handlers: anExceptionHandler
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> inGroups [
	^ (sharedGeneralizations at: #ActivityNode) inGroups
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> inGroups: anActivityGroup [
	(sharedGeneralizations at: #ActivityNode) inGroups: anActivityGroup
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> inInterruptibleRegions [
	^ (sharedGeneralizations at: #ActivityNode) inInterruptibleRegions
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> inInterruptibleRegions: anInterruptibleActivityRegion [
	(sharedGeneralizations at: #ActivityNode) inInterruptibleRegions: anInterruptibleActivityRegion
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> inPartitions [
	^ (sharedGeneralizations at: #ActivityNode) inPartitions
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> inPartitions: anActivityPartition [
	(sharedGeneralizations at: #ActivityNode) inPartitions: anActivityPartition
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> inStructuredNode [
	^ (sharedGeneralizations at: #ActivityNode) inStructuredNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> inStructuredNode: aStructuredActivityNode [
	(sharedGeneralizations at: #ActivityNode) inStructuredNode: aStructuredActivityNode
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> incomings [
	^ (sharedGeneralizations at: #ActivityNode) incomings
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> incomings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) incomings: anActivityEdge
]

{ #category : #initialization }
OPUMLAddStructuralFeatureValueAction >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #WriteStructuralFeatureAction.
	}
]

{ #category : #initialization }
OPUMLAddStructuralFeatureValueAction >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActivityNode put: (OPUMLActivityNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutableNode put: (OPUMLExecutableNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Action put: (OPUMLAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuralFeatureAction put: (OPUMLStructuralFeatureAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #WriteStructuralFeatureAction put: (OPUMLWriteStructuralFeatureAction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #AddStructuralFeatureValueAction put: self.
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> inputs [
	^ (sharedGeneralizations at: #Action) inputs
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> inputs: anInputPin [
	(sharedGeneralizations at: #Action) inputs: anInputPin
]

{ #category : #accessing }
OPUMLAddStructuralFeatureValueAction >> insertAt [
	"The InputPin that gives the position at which to insert the value in an ordered StructuralFeature. The type of the insertAt InputPin is UnlimitedNatural, but the value cannot be zero. It is omitted for unordered StructuralFeatures."
	^ insertAt
]

{ #category : #accessing }
OPUMLAddStructuralFeatureValueAction >> insertAt: anInputPin [
	"The InputPin that gives the position at which to insert the value in an ordered StructuralFeature. The type of the insertAt InputPin is UnlimitedNatural, but the value cannot be zero. It is omitted for unordered StructuralFeatures."
	insertAt := anInputPin
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAddStructuralFeatureValueAction >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAddStructuralFeatureValueAction >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> isLocallyReentrant [
	^ (sharedGeneralizations at: #Action) isLocallyReentrant
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> isLocallyReentrant: aBoolean [
	(sharedGeneralizations at: #Action) isLocallyReentrant: aBoolean
]

{ #category : #accessing }
OPUMLAddStructuralFeatureValueAction >> isReplaceAll [
	"Specifies whether existing values of the StructuralFeature should be removed before adding the new value."
	^ isReplaceAll ifNil: [ isReplaceAll := false ]
]

{ #category : #accessing }
OPUMLAddStructuralFeatureValueAction >> isReplaceAll: aBoolean [
	"Specifies whether existing values of the StructuralFeature should be removed before adding the new value."
	isReplaceAll := aBoolean
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> localPostconditions [
	^ (sharedGeneralizations at: #Action) localPostconditions
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> localPostconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPostconditions: aConstraint
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> localPreconditions [
	^ (sharedGeneralizations at: #Action) localPreconditions
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> localPreconditions: aConstraint [
	(sharedGeneralizations at: #Action) localPreconditions: aConstraint
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - StructuralFeatureAction' }
OPUMLAddStructuralFeatureValueAction >> object [
	^ (sharedGeneralizations at: #StructuralFeatureAction) object
]

{ #category : #'accessing - StructuralFeatureAction' }
OPUMLAddStructuralFeatureValueAction >> object: anInputPin [
	(sharedGeneralizations at: #StructuralFeatureAction) object: anInputPin
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> outgoings [
	^ (sharedGeneralizations at: #ActivityNode) outgoings
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> outgoings: anActivityEdge [
	(sharedGeneralizations at: #ActivityNode) outgoings: anActivityEdge
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> outputs [
	^ (sharedGeneralizations at: #Action) outputs
]

{ #category : #'accessing - Action' }
OPUMLAddStructuralFeatureValueAction >> outputs: anOutputPin [
	(sharedGeneralizations at: #Action) outputs: anOutputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAddStructuralFeatureValueAction >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAddStructuralFeatureValueAction >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> redefinedNodes [
	^ (sharedGeneralizations at: #ActivityNode) redefinedNodes
]

{ #category : #'accessing - ActivityNode' }
OPUMLAddStructuralFeatureValueAction >> redefinedNodes: anActivityNode [
	(sharedGeneralizations at: #ActivityNode) redefinedNodes: anActivityNode
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAddStructuralFeatureValueAction >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAddStructuralFeatureValueAction >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - WriteStructuralFeatureAction' }
OPUMLAddStructuralFeatureValueAction >> result [
	^ (sharedGeneralizations at: #WriteStructuralFeatureAction) result
]

{ #category : #'accessing - WriteStructuralFeatureAction' }
OPUMLAddStructuralFeatureValueAction >> result: anOutputPin [
	(sharedGeneralizations at: #WriteStructuralFeatureAction) result: anOutputPin
]

{ #category : #'accessing - StructuralFeatureAction' }
OPUMLAddStructuralFeatureValueAction >> structuralFeature [
	^ (sharedGeneralizations at: #StructuralFeatureAction) structuralFeature
]

{ #category : #'accessing - StructuralFeatureAction' }
OPUMLAddStructuralFeatureValueAction >> structuralFeature: aStructuralFeature [
	(sharedGeneralizations at: #StructuralFeatureAction) structuralFeature: aStructuralFeature
]

{ #category : #'accessing - WriteStructuralFeatureAction' }
OPUMLAddStructuralFeatureValueAction >> value [
	^ (sharedGeneralizations at: #WriteStructuralFeatureAction) value
]

{ #category : #'accessing - WriteStructuralFeatureAction' }
OPUMLAddStructuralFeatureValueAction >> value: anInputPin [
	(sharedGeneralizations at: #WriteStructuralFeatureAction) value: anInputPin
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLAddStructuralFeatureValueAction >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
