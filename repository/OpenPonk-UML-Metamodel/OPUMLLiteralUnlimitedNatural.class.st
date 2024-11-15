"
A LiteralUnlimitedNatural is a specification of an UnlimitedNatural number.
"
Class {
	#name : 'OPUMLLiteralUnlimitedNatural',
	#superclass : 'OPUMLElement',
	#instVars : [
		'value'
	],
	#category : 'OpenPonk-UML-Metamodel-Values',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralUnlimitedNatural >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLLiteralUnlimitedNatural >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #LiteralSpecification.
	}
]

{ #category : 'initialization' }
OPUMLLiteralUnlimitedNatural >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralSpecification put: (OPUMLLiteralSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #LiteralUnlimitedNatural put: self.
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralUnlimitedNatural >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : 'operations' }
OPUMLLiteralUnlimitedNatural >> isComputable [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	^ true

]

{ #category : 'operations - stubs' }
OPUMLLiteralUnlimitedNatural >> isComputableStub [
	"The query isComputable() is redefined to be true."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralUnlimitedNatural >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralUnlimitedNatural >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralUnlimitedNatural >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLLiteralUnlimitedNatural >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralUnlimitedNatural >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : 'operations - ValueSpecification' }
OPUMLLiteralUnlimitedNatural >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralUnlimitedNatural >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLLiteralUnlimitedNatural >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - TypedElement' }
OPUMLLiteralUnlimitedNatural >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : 'accessing - TypedElement' }
OPUMLLiteralUnlimitedNatural >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : 'operations' }
OPUMLLiteralUnlimitedNatural >> unlimitedValue [
	"The query unlimitedValue() gives the value."
	
	"{OCL} result = (value)"
	
	^ value

]

{ #category : 'operations - stubs' }
OPUMLLiteralUnlimitedNatural >> unlimitedValueStub [
	"The query unlimitedValue() gives the value."
	
	"{OCL} result = (value)"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLLiteralUnlimitedNatural >> value [
	"The specified UnlimitedNatural value."
	^ value ifNil: [ value := 0 ]
]

{ #category : 'accessing' }
OPUMLLiteralUnlimitedNatural >> value: anUnlimitedNatural [
	"The specified UnlimitedNatural value."
	value := anUnlimitedNatural
]

{ #category : 'accessing - PackageableElement' }
OPUMLLiteralUnlimitedNatural >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLLiteralUnlimitedNatural >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
