"
A substitution is a relationship between two classifiers signifying that the substituting classifier complies with the contract specified by the contract classifier. This implies that instances of the substituting classifier are runtime substitutable where instances of the contract classifier are expected.
"
Class {
	#name : #OPUMLSubstitution,
	#superclass : #OPUMLElement,
	#instVars : [
		'contract',
		'substitutingClassifier'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Dependency' }
OPUMLSubstitution >> clients [
	^ (sharedGeneralizations at: #Dependency) clients
]

{ #category : #'accessing - Dependency' }
OPUMLSubstitution >> clients: aNamedElement [
	(sharedGeneralizations at: #Dependency) clients: aNamedElement
]

{ #category : #accessing }
OPUMLSubstitution >> contract [
	"The contract with which the substituting classifier complies."
	^ contract
]

{ #category : #accessing }
OPUMLSubstitution >> contract: aClassifier [
	"The contract with which the substituting classifier complies."
	contract := aClassifier
]

{ #category : #initialization }
OPUMLSubstitution >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Realization.
	}
]

{ #category : #initialization }
OPUMLSubstitution >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Dependency put: (OPUMLDependency newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Abstraction put: (OPUMLAbstraction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Realization put: (OPUMLRealization newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Substitution put: self.
]

{ #category : #'accessing - Abstraction' }
OPUMLSubstitution >> mapping [
	^ (sharedGeneralizations at: #Abstraction) mapping
]

{ #category : #'accessing - Abstraction' }
OPUMLSubstitution >> mapping: anOpaqueExpression [
	(sharedGeneralizations at: #Abstraction) mapping: anOpaqueExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLSubstitution >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLSubstitution >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLSubstitution >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Relationship' }
OPUMLSubstitution >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLSubstitution >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLSubstitution >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLSubstitution >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : #accessing }
OPUMLSubstitution >> substitutingClassifier [
	"Instances of the substituting classifier are runtime substitutable where instances of the contract classifier are expected."
	^ substitutingClassifier
]

{ #category : #accessing }
OPUMLSubstitution >> substitutingClassifier: aClassifier [
	"Instances of the substituting classifier are runtime substitutable where instances of the contract classifier are expected."
	substitutingClassifier := OPUMLToOneLink
		on: self identity
		update: #substitutions
		from: substitutingClassifier
		to: aClassifier
]

{ #category : #'accessing - Dependency' }
OPUMLSubstitution >> suppliers [
	^ (sharedGeneralizations at: #Dependency) suppliers
]

{ #category : #'accessing - Dependency' }
OPUMLSubstitution >> suppliers: aNamedElement [
	(sharedGeneralizations at: #Dependency) suppliers: aNamedElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLSubstitution >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLSubstitution >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : #'accessing - ParameterableElement' }
OPUMLSubstitution >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLSubstitution >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLSubstitution >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLSubstitution >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
