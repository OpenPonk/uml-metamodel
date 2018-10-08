"
A LiteralReal is a specification of a Real value.
"
Class {
	#name : #OPUMLLiteralReal,
	#superclass : #OPUMLElement,
	#instVars : [
		'value'
	],
	#category : 'OP-UML-Metamodel-Values'
}

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralReal >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLLiteralReal >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #LiteralSpecification.
	}
]

{ #category : #initialization }
OPUMLLiteralReal >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralSpecification put: (OPUMLLiteralSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralReal put: self.
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralReal >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : #operations }
OPUMLLiteralReal >> isComputable [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	^ true

]

{ #category : #'operations - stubs' }
OPUMLLiteralReal >> isComputableStub [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralReal >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralReal >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralReal >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLLiteralReal >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #operations }
OPUMLLiteralReal >> realValue [
	"The query realValue() gives the value."
	
	"{OCL} result = (value)"
	
	^ value

]

{ #category : #'operations - stubs' }
OPUMLLiteralReal >> realValueStub [
	"The query realValue() gives the value."
	
	"{OCL} result = (value)"
	
	self notYetImplemented

]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralReal >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralReal >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLLiteralReal >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLLiteralReal >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLLiteralReal >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - ValueSpecification' }
OPUMLLiteralReal >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : #accessing }
OPUMLLiteralReal >> value [
	"The specified Real value."
	^ value
]

{ #category : #accessing }
OPUMLLiteralReal >> value: aReal [
	"The specified Real value."
	value := aReal
]

{ #category : #'accessing - PackageableElement' }
OPUMLLiteralReal >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLLiteralReal >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
