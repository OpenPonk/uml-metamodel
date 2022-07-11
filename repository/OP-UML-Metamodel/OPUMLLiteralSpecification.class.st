"
A LiteralSpecification identifies a literal constant being modeled.
"
Class {
	#name : #OPUMLLiteralSpecification,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-Values'
}

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralSpecification >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLLiteralSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ValueSpecification.
	}
]

{ #category : #initialization }
OPUMLLiteralSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralSpecification put: self.
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralSpecification >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralSpecification >> isComputable [
	^ (sharedGeneralizations at: #ValueSpecification) isComputable
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralSpecification >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralSpecification >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralSpecification >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralSpecification >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralSpecification >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralSpecification >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralSpecification >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLLiteralSpecification >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLLiteralSpecification >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralSpecification >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : #'accessing - PackageableElement' }
OPUMLLiteralSpecification >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLLiteralSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
