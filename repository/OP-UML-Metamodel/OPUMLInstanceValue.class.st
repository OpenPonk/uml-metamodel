"
An InstanceValue is a ValueSpecification that identifies an instance.
"
Class {
	#name : #OPUMLInstanceValue,
	#superclass : #OPUMLElement,
	#instVars : [
		'instance'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #'operations - ValueSpecification' }
OPUMLInstanceValue >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLInstanceValue >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ValueSpecification.
	}
]

{ #category : #initialization }
OPUMLInstanceValue >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InstanceValue put: self.
]

{ #category : #accessing }
OPUMLInstanceValue >> instance [
	"The InstanceSpecification that represents the specified value."
	^ instance
]

{ #category : #accessing }
OPUMLInstanceValue >> instance: anInstanceSpecification [
	"The InstanceSpecification that represents the specified value."
	instance := anInstanceSpecification
]

{ #category : #'operations - ValueSpecification' }
OPUMLInstanceValue >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLInstanceValue >> isComputable [
	^ (sharedGeneralizations at: #ValueSpecification) isComputable
]

{ #category : #'operations - ValueSpecification' }
OPUMLInstanceValue >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInstanceValue >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInstanceValue >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceValue >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'operations - ValueSpecification' }
OPUMLInstanceValue >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLInstanceValue >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInstanceValue >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInstanceValue >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLInstanceValue >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLInstanceValue >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - ValueSpecification' }
OPUMLInstanceValue >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : #'accessing - PackageableElement' }
OPUMLInstanceValue >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLInstanceValue >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
