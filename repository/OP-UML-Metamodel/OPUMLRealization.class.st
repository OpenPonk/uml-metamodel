"
Realization is a specialized Abstraction relationship between two sets of model Elements, one representing a specification (the supplier) and the other represents an implementation of the latter (the client). Realization can be used to model stepwise refinement, optimizations, transformations, templates, model synthesis, framework composition, etc.
"
Class {
	#name : #OPUMLRealization,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Dependency' }
OPUMLRealization >> clients [
	^ (sharedGeneralizations at: #Dependency) clients
]

{ #category : #'accessing - Dependency' }
OPUMLRealization >> clients: aNamedElement [
	(sharedGeneralizations at: #Dependency) clients: aNamedElement
]

{ #category : #initialization }
OPUMLRealization >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Abstraction.
	}
]

{ #category : #initialization }
OPUMLRealization >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Dependency put: (OPUMLDependency newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Abstraction put: (OPUMLAbstraction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Realization put: self.
]

{ #category : #'accessing - Abstraction' }
OPUMLRealization >> mapping [
	^ (sharedGeneralizations at: #Abstraction) mapping
]

{ #category : #'accessing - Abstraction' }
OPUMLRealization >> mapping: anOpaqueExpression [
	(sharedGeneralizations at: #Abstraction) mapping: anOpaqueExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLRealization >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLRealization >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLRealization >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Relationship' }
OPUMLRealization >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLRealization >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLRealization >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLRealization >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : #'accessing - Dependency' }
OPUMLRealization >> suppliers [
	^ (sharedGeneralizations at: #Dependency) suppliers
]

{ #category : #'accessing - Dependency' }
OPUMLRealization >> suppliers: aNamedElement [
	(sharedGeneralizations at: #Dependency) suppliers: aNamedElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLRealization >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLRealization >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : #'accessing - ParameterableElement' }
OPUMLRealization >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLRealization >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLRealization >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLRealization >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
