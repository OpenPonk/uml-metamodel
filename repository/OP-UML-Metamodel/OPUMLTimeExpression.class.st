"
A TimeExpression is a ValueSpecification that represents a time value.
"
Class {
	#name : #OPUMLTimeExpression,
	#superclass : #OPUMLElement,
	#instVars : [
		'observations',
		'expr'
	],
	#category : 'OP-UML-Metamodel-Values'
}

{ #category : #'operations - ValueSpecification' }
OPUMLTimeExpression >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLTimeExpression >> expr [
	"A ValueSpecification that evaluates to the value of the TimeExpression."
	^ expr
]

{ #category : #accessing }
OPUMLTimeExpression >> expr: aValueSpecification [
	"A ValueSpecification that evaluates to the value of the TimeExpression."
	expr := aValueSpecification
]

{ #category : #initialization }
OPUMLTimeExpression >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ValueSpecification.
	}
]

{ #category : #initialization }
OPUMLTimeExpression >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TimeExpression put: self.
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeExpression >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeExpression >> isComputable [
	^ (sharedGeneralizations at: #ValueSpecification) isComputable
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeExpression >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLTimeExpression >> observations [
	"Refers to the Observations that are involved in the computation of the TimeExpression value."
	^ observations ifNil: [ observations := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLTimeExpression >> observations: anObservation [
	"Refers to the Observations that are involved in the computation of the TimeExpression value."
	observations := anObservation
]

{ #category : #'accessing - ParameterableElement' }
OPUMLTimeExpression >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLTimeExpression >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeExpression >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeExpression >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeExpression >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : #'accessing - ParameterableElement' }
OPUMLTimeExpression >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLTimeExpression >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLTimeExpression >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLTimeExpression >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeExpression >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : #'accessing - PackageableElement' }
OPUMLTimeExpression >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLTimeExpression >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
