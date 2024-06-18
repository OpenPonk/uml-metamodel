"
A manifestation is the concrete physical rendering of one or more model elements by an artifact.
"
Class {
	#name : 'OPUMLManifestation',
	#superclass : 'OPUMLElement',
	#instVars : [
		'utilizedElement'
	],
	#category : 'OP-UML-Metamodel-Deployments',
	#package : 'OP-UML-Metamodel',
	#tag : 'Deployments'
}

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Dependency' }
OPUMLManifestation >> clients [
	^ (sharedGeneralizations at: #Dependency) clients
]

{ #category : 'accessing - Dependency' }
OPUMLManifestation >> clients: aNamedElement [
	(sharedGeneralizations at: #Dependency) clients: aNamedElement
]

{ #category : 'initialization' }
OPUMLManifestation >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Abstraction.
	}
]

{ #category : 'initialization' }
OPUMLManifestation >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Dependency put: (OPUMLDependency newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Abstraction put: (OPUMLAbstraction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Manifestation put: self.
]

{ #category : 'accessing - Abstraction' }
OPUMLManifestation >> mapping [
	^ (sharedGeneralizations at: #Abstraction) mapping
]

{ #category : 'accessing - Abstraction' }
OPUMLManifestation >> mapping: anOpaqueExpression [
	(sharedGeneralizations at: #Abstraction) mapping: anOpaqueExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLManifestation >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLManifestation >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLManifestation >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Relationship' }
OPUMLManifestation >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLManifestation >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLManifestation >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLManifestation >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing - Dependency' }
OPUMLManifestation >> suppliers [
	^ (sharedGeneralizations at: #Dependency) suppliers
]

{ #category : 'accessing - Dependency' }
OPUMLManifestation >> suppliers: aNamedElement [
	(sharedGeneralizations at: #Dependency) suppliers: aNamedElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLManifestation >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLManifestation >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : 'accessing - ParameterableElement' }
OPUMLManifestation >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLManifestation >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing' }
OPUMLManifestation >> utilizedElement [
	"The model element that is utilized in the manifestation in an Artifact."
	^ utilizedElement
]

{ #category : 'accessing' }
OPUMLManifestation >> utilizedElement: aPackageableElement [
	"The model element that is utilized in the manifestation in an Artifact."
	utilizedElement := aPackageableElement
]

{ #category : 'accessing - PackageableElement' }
OPUMLManifestation >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLManifestation >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
