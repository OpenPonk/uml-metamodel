"
Realization is specialized to (optionally) define the Classifiers that realize the contract offered by a Component in terms of its provided and required Interfaces. The Component forms an abstraction from these various Classifiers.
"
Class {
	#name : 'OPUMLComponentRealization',
	#superclass : 'OPUMLElement',
	#instVars : [
		'abstraction',
		'realizingClassifiers'
	],
	#category : 'OpenPonk-UML-Metamodel-StructuredClassifiers',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StructuredClassifiers'
}

{ #category : 'accessing' }
OPUMLComponentRealization >> abstraction [
	"The Component that owns this ComponentRealization and which is implemented by its realizing Classifiers."
	^ abstraction
]

{ #category : 'accessing' }
OPUMLComponentRealization >> abstraction: aComponent [
	"The Component that owns this ComponentRealization and which is implemented by its realizing Classifiers."
	abstraction := OPUMLToOneLink
		on: self identity
		update: #realizations
		from: abstraction
		to: aComponent
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Dependency' }
OPUMLComponentRealization >> clients [
	^ (sharedGeneralizations at: #Dependency) clients
]

{ #category : 'accessing - Dependency' }
OPUMLComponentRealization >> clients: aNamedElement [
	(sharedGeneralizations at: #Dependency) clients: aNamedElement
]

{ #category : 'initialization' }
OPUMLComponentRealization >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Realization.
	}
]

{ #category : 'initialization' }
OPUMLComponentRealization >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Dependency put: (OPUMLDependency newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Abstraction put: (OPUMLAbstraction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Realization put: (OPUMLRealization newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ComponentRealization put: self.
]

{ #category : 'accessing - Abstraction' }
OPUMLComponentRealization >> mapping [
	^ (sharedGeneralizations at: #Abstraction) mapping
]

{ #category : 'accessing - Abstraction' }
OPUMLComponentRealization >> mapping: anOpaqueExpression [
	(sharedGeneralizations at: #Abstraction) mapping: anOpaqueExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLComponentRealization >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLComponentRealization >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLComponentRealization >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLComponentRealization >> realizingClassifiers [
	"The Classifiers that are involved in the implementation of the Component that owns this Realization."
	^ realizingClassifiers ifNil: [ realizingClassifiers := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLComponentRealization >> realizingClassifiers: aClassifier [
	"The Classifiers that are involved in the implementation of the Component that owns this Realization."
	realizingClassifiers := aClassifier
]

{ #category : 'accessing - Relationship' }
OPUMLComponentRealization >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLComponentRealization >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLComponentRealization >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLComponentRealization >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing - Dependency' }
OPUMLComponentRealization >> suppliers [
	^ (sharedGeneralizations at: #Dependency) suppliers
]

{ #category : 'accessing - Dependency' }
OPUMLComponentRealization >> suppliers: aNamedElement [
	(sharedGeneralizations at: #Dependency) suppliers: aNamedElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLComponentRealization >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLComponentRealization >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : 'accessing - ParameterableElement' }
OPUMLComponentRealization >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLComponentRealization >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLComponentRealization >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLComponentRealization >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
