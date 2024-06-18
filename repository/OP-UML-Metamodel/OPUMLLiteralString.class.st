"
A LiteralString is a specification of a String value.
"
Class {
	#name : 'OPUMLLiteralString',
	#superclass : 'OPUMLElement',
	#instVars : [
		'value'
	],
	#category : 'OP-UML-Metamodel-Values',
	#package : 'OP-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralString >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLLiteralString >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #LiteralSpecification.
	}
]

{ #category : 'initialization' }
OPUMLLiteralString >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralSpecification put: (OPUMLLiteralSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralString put: self.
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralString >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : 'operations' }
OPUMLLiteralString >> isComputable [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	^ true

]

{ #category : 'operations - stubs' }
OPUMLLiteralString >> isComputableStub [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralString >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralString >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralString >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralString >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralString >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : 'operations' }
OPUMLLiteralString >> stringValue [
	"The query stringValue() gives the value."
	
	"{OCL} result = (value)"
	
	^ value

]

{ #category : 'operations - stubs' }
OPUMLLiteralString >> stringValueStub [
	"The query stringValue() gives the value."
	
	"{OCL} result = (value)"
	
	self notYetImplemented

]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralString >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralString >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - TypedElement' }
OPUMLLiteralString >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : 'accessing - TypedElement' }
OPUMLLiteralString >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralString >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : 'accessing' }
OPUMLLiteralString >> value [
	"The specified String value."
	^ value
]

{ #category : 'accessing' }
OPUMLLiteralString >> value: aString [
	"The specified String value."
	value := aString
]

{ #category : 'accessing - PackageableElement' }
OPUMLLiteralString >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLLiteralString >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
