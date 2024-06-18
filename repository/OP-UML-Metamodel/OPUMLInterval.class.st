"
An Interval defines the range between two ValueSpecifications.
"
Class {
	#name : 'OPUMLInterval',
	#superclass : 'OPUMLElement',
	#instVars : [
		'min',
		'max'
	],
	#category : 'OP-UML-Metamodel-Values',
	#package : 'OP-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'operations - ValueSpecification' }
OPUMLInterval >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLInterval >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ValueSpecification.
	}
]

{ #category : 'initialization' }
OPUMLInterval >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Interval put: self.
]

{ #category : 'operations - ValueSpecification' }
OPUMLInterval >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : 'operations - ValueSpecification' }
OPUMLInterval >> isComputable [
	^ (sharedGeneralizations at: #ValueSpecification) isComputable
]

{ #category : 'operations - ValueSpecification' }
OPUMLInterval >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : 'accessing' }
OPUMLInterval >> max [
	"Refers to the ValueSpecification denoting the maximum value of the range."
	^ max
]

{ #category : 'accessing' }
OPUMLInterval >> max: aValueSpecification [
	"Refers to the ValueSpecification denoting the maximum value of the range."
	max := aValueSpecification
]

{ #category : 'accessing' }
OPUMLInterval >> min [
	"Refers to the ValueSpecification denoting the minimum value of the range."
	^ min
]

{ #category : 'accessing' }
OPUMLInterval >> min: aValueSpecification [
	"Refers to the ValueSpecification denoting the minimum value of the range."
	min := aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInterval >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInterval >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLInterval >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'operations - ValueSpecification' }
OPUMLInterval >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : 'operations - ValueSpecification' }
OPUMLInterval >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInterval >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInterval >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - TypedElement' }
OPUMLInterval >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : 'accessing - TypedElement' }
OPUMLInterval >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : 'operations - ValueSpecification' }
OPUMLInterval >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : 'accessing - PackageableElement' }
OPUMLInterval >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLInterval >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
