"
A LiteralNull specifies the lack of a value.
"
Class {
	#name : 'OPUMLLiteralNull',
	#superclass : 'OPUMLElement',
	#category : 'OpenPonk-UML-Metamodel-Values',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralNull >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLLiteralNull >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #LiteralSpecification.
	}
]

{ #category : 'initialization' }
OPUMLLiteralNull >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralSpecification put: (OPUMLLiteralSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralNull put: self.
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralNull >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : 'operations' }
OPUMLLiteralNull >> isComputable [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	^ true

]

{ #category : 'operations - stubs' }
OPUMLLiteralNull >> isComputableStub [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : 'operations' }
OPUMLLiteralNull >> isNull [
	"The query isNull() returns true."
	
	"{OCL} result = (true)"
	
	^ true

]

{ #category : 'operations - stubs' }
OPUMLLiteralNull >> isNullStub [
	"The query isNull() returns true."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralNull >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralNull >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralNull >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralNull >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralNull >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralNull >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralNull >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - TypedElement' }
OPUMLLiteralNull >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : 'accessing - TypedElement' }
OPUMLLiteralNull >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralNull >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : 'accessing - PackageableElement' }
OPUMLLiteralNull >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLLiteralNull >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
