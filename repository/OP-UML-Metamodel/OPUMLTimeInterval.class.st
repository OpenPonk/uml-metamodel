"
A TimeInterval defines the range between two TimeExpressions.
"
Class {
	#name : #OPUMLTimeInterval,
	#superclass : #OPUMLElement,
	#instVars : [
		'min',
		'max'
	],
	#category : 'OP-UML-Metamodel-Values'
}

{ #category : #'operations - ValueSpecification' }
OPUMLTimeInterval >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLTimeInterval >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Interval.
	}
]

{ #category : #initialization }
OPUMLTimeInterval >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Interval put: (OPUMLInterval newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TimeInterval put: self.
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeInterval >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeInterval >> isComputable [
	^ (sharedGeneralizations at: #ValueSpecification) isComputable
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeInterval >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : #accessing }
OPUMLTimeInterval >> max [
	"Refers to the TimeExpression denoting the maximum value of the range."
	^ max
]

{ #category : #accessing }
OPUMLTimeInterval >> max: aTimeExpression [
	"Refers to the TimeExpression denoting the maximum value of the range."
	max := aTimeExpression
]

{ #category : #accessing }
OPUMLTimeInterval >> min [
	"Refers to the TimeExpression denoting the minimum value of the range."
	^ min
]

{ #category : #accessing }
OPUMLTimeInterval >> min: aTimeExpression [
	"Refers to the TimeExpression denoting the minimum value of the range."
	min := aTimeExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLTimeInterval >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLTimeInterval >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLTimeInterval >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeInterval >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeInterval >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : #'accessing - ParameterableElement' }
OPUMLTimeInterval >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLTimeInterval >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLTimeInterval >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLTimeInterval >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - ValueSpecification' }
OPUMLTimeInterval >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : #'accessing - PackageableElement' }
OPUMLTimeInterval >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLTimeInterval >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
