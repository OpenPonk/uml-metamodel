"
A relationship from an extending UseCase to an extended UseCase that specifies how and when the behavior defined in the extending UseCase can be inserted into the behavior defined in the extended UseCase.
"
Class {
	#name : 'OPUMLExtend',
	#superclass : 'OPUMLElement',
	#instVars : [
		'condition',
		'extendedCase',
		'extension',
		'extensionLocations'
	],
	#category : 'OpenPonk-UML-Metamodel-UseCases',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'UseCases'
}

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLExtend >> condition [
	"References the condition that must hold when the first ExtensionPoint is reached for the extension to take place. If no constraint is associated with the Extend relationship, the extension is unconditional."
	^ condition
]

{ #category : 'accessing' }
OPUMLExtend >> condition: aConstraint [
	"References the condition that must hold when the first ExtensionPoint is reached for the extension to take place. If no constraint is associated with the Extend relationship, the extension is unconditional."
	condition := aConstraint
]

{ #category : 'accessing' }
OPUMLExtend >> extendedCase [
	"The UseCase that is being extended."
	^ extendedCase
]

{ #category : 'accessing' }
OPUMLExtend >> extendedCase: anUseCase [
	"The UseCase that is being extended."
	extendedCase := anUseCase
]

{ #category : 'accessing' }
OPUMLExtend >> extension [
	"The UseCase that represents the extension and owns the Extend relationship."
	^ extension
]

{ #category : 'accessing' }
OPUMLExtend >> extension: anUseCase [
	"The UseCase that represents the extension and owns the Extend relationship."
	extension := OPUMLToOneLink
		on: self identity
		update: #extends
		from: extension
		to: anUseCase
]

{ #category : 'accessing' }
OPUMLExtend >> extensionLocations [
	"An ordered list of ExtensionPoints belonging to the extended UseCase, specifying where the respective behavioral fragments of the extending UseCase are to be inserted. The first fragment in the extending UseCase is associated with the first extension point in the list, the second fragment with the second point, and so on. Note that, in most practical cases, the extending UseCase has just a single behavior fragment, so that the list of ExtensionPoints is trivial."
	^ extensionLocations ifNil: [ extensionLocations := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLExtend >> extensionLocations: anExtensionPoint [
	"An ordered list of ExtensionPoints belonging to the extended UseCase, specifying where the respective behavioral fragments of the extending UseCase are to be inserted. The first fragment in the extending UseCase is associated with the first extension point in the list, the second fragment with the second point, and so on. Note that, in most practical cases, the extending UseCase has just a single behavior fragment, so that the list of ExtensionPoints is trivial."
	extensionLocations := anExtensionPoint
]

{ #category : 'initialization' }
OPUMLExtend >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
		sharedGeneralizations at: #DirectedRelationship.
	}
]

{ #category : 'initialization' }
OPUMLExtend >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Extend put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Relationship' }
OPUMLExtend >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLExtend >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLExtend >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLExtend >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLExtend >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLExtend >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLExtend >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
