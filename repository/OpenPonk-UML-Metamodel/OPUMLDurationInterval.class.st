"
A DurationInterval defines the range between two Durations.
"
Class {
	#name : 'OPUMLDurationInterval',
	#superclass : 'OPUMLElement',
	#instVars : [
		'min',
		'max'
	],
	#category : 'OpenPonk-UML-Metamodel-Values',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'operations - ValueSpecification' }
OPUMLDurationInterval >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLDurationInterval >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Interval.
	}
]

{ #category : 'initialization' }
OPUMLDurationInterval >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Interval put: (OPUMLInterval newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DurationInterval put: self.
]

{ #category : 'operations - ValueSpecification' }
OPUMLDurationInterval >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : 'operations - ValueSpecification' }
OPUMLDurationInterval >> isComputable [
	^ (sharedGeneralizations at: #ValueSpecification) isComputable
]

{ #category : 'operations - ValueSpecification' }
OPUMLDurationInterval >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : 'accessing' }
OPUMLDurationInterval >> max [
	"Refers to the Duration denoting the maximum value of the range."
	^ max
]

{ #category : 'accessing' }
OPUMLDurationInterval >> max: aDuration [
	"Refers to the Duration denoting the maximum value of the range."
	max := aDuration
]

{ #category : 'accessing' }
OPUMLDurationInterval >> min [
	"Refers to the Duration denoting the minimum value of the range."
	^ min
]

{ #category : 'accessing' }
OPUMLDurationInterval >> min: aDuration [
	"Refers to the Duration denoting the minimum value of the range."
	min := aDuration
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationInterval >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationInterval >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationInterval >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'operations - ValueSpecification' }
OPUMLDurationInterval >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : 'operations - ValueSpecification' }
OPUMLDurationInterval >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationInterval >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationInterval >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - TypedElement' }
OPUMLDurationInterval >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : 'accessing - TypedElement' }
OPUMLDurationInterval >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : 'operations - ValueSpecification' }
OPUMLDurationInterval >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : 'accessing - PackageableElement' }
OPUMLDurationInterval >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLDurationInterval >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
