"
A LiteralBoolean is a specification of a Boolean value.
"
Class {
	#name : #OPUMLLiteralBoolean,
	#superclass : #OPUMLElement,
	#instVars : [
		'value'
	],
	#category : 'OP-UML-Metamodel-Values'
}

{ #category : #operations }
OPUMLLiteralBoolean >> booleanValue [
	"The query booleanValue() gives the value."
	
	"{OCL} result = (value)"
	
	^ value

]

{ #category : #'operations - stubs' }
OPUMLLiteralBoolean >> booleanValueStub [
	"The query booleanValue() gives the value."
	
	"{OCL} result = (value)"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLLiteralBoolean >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #LiteralSpecification.
	}
]

{ #category : #initialization }
OPUMLLiteralBoolean >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralSpecification put: (OPUMLLiteralSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralBoolean put: self.
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralBoolean >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : #operations }
OPUMLLiteralBoolean >> isComputable [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	^ true

]

{ #category : #'operations - stubs' }
OPUMLLiteralBoolean >> isComputableStub [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralBoolean >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralBoolean >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralBoolean >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralBoolean >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralBoolean >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralBoolean >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralBoolean >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralBoolean >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLLiteralBoolean >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLLiteralBoolean >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralBoolean >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : #accessing }
OPUMLLiteralBoolean >> value [
	"The specified Boolean value."
	^ value ifNil: [ value := false ]
]

{ #category : #accessing }
OPUMLLiteralBoolean >> value: aBoolean [
	"The specified Boolean value."
	value := aBoolean
]

{ #category : #'accessing - PackageableElement' }
OPUMLLiteralBoolean >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLLiteralBoolean >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
