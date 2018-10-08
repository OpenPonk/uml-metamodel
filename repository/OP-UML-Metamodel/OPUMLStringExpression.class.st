"
A StringExpression is an Expression that specifies a String value that is derived by concatenating a sequence of operands with String values or a sequence of subExpressions, some of which might be template parameters.
"
Class {
	#name : #OPUMLStringExpression,
	#superclass : #OPUMLElement,
	#instVars : [
		'subExpressions',
		'owningExpression'
	],
	#category : 'OP-UML-Metamodel-Values'
}

{ #category : #'operations - ValueSpecification' }
OPUMLStringExpression >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLStringExpression >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TemplateableElement.
		sharedGeneralizations at: #Expression.
	}
]

{ #category : #initialization }
OPUMLStringExpression >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Expression put: (OPUMLExpression newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StringExpression put: self.
]

{ #category : #'operations - ValueSpecification' }
OPUMLStringExpression >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLStringExpression >> isComputable [
	^ (sharedGeneralizations at: #ValueSpecification) isComputable
]

{ #category : #'operations - ValueSpecification' }
OPUMLStringExpression >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - Expression' }
OPUMLStringExpression >> operands [
	^ (sharedGeneralizations at: #Expression) operands
]

{ #category : #'accessing - Expression' }
OPUMLStringExpression >> operands: aValueSpecification [
	(sharedGeneralizations at: #Expression) operands: aValueSpecification
]

{ #category : #'accessing - TemplateableElement' }
OPUMLStringExpression >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature
]

{ #category : #'accessing - TemplateableElement' }
OPUMLStringExpression >> ownedTemplateSignature: aTemplateSignature [
	(sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature: aTemplateSignature
]

{ #category : #accessing }
OPUMLStringExpression >> owningExpression [
	"The StringExpression of which this StringExpression is a subExpression."
	^ owningExpression
]

{ #category : #accessing }
OPUMLStringExpression >> owningExpression: aStringExpression [
	"The StringExpression of which this StringExpression is a subExpression."
	owningExpression := OPUMLToOneLink
		on: self identity
		update: #subExpressions
		from: owningExpression
		to: aStringExpression
]

{ #category : #'accessing - ParameterableElement' }
OPUMLStringExpression >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLStringExpression >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLStringExpression >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'operations - ValueSpecification' }
OPUMLStringExpression >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLStringExpression >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : #'operations - stubs' }
OPUMLStringExpression >> stringValueStub [
	"The query stringValue() returns the String resulting from concatenating, in order, all the component String values of all the operands or subExpressions that are part of the StringExpression."
	
	"{OCL} result = (if subExpression->notEmpty()
then subExpression->iterate(se; stringValue: String = '' | stringValue.concat(se.stringValue()))
else operand->iterate(op; stringValue: String = '' | stringValue.concat(op.stringValue()))
endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLStringExpression >> subExpressions [
	"The StringExpressions that constitute this StringExpression."
	^ subExpressions ifNil: [ subExpressions := OPUMLToManyLinks on: self identity opposite: #owningExpression: ]
]

{ #category : #accessing }
OPUMLStringExpression >> subExpressions: aStringExpression [
	"The StringExpressions that constitute this StringExpression."
	self subExpressions
		removeAll;
		addAll: aStringExpression
]

{ #category : #'accessing - Expression' }
OPUMLStringExpression >> symbol [
	^ (sharedGeneralizations at: #Expression) symbol
]

{ #category : #'accessing - Expression' }
OPUMLStringExpression >> symbol: aString [
	(sharedGeneralizations at: #Expression) symbol: aString
]

{ #category : #'accessing - TemplateableElement' }
OPUMLStringExpression >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLStringExpression >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - ParameterableElement' }
OPUMLStringExpression >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLStringExpression >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLStringExpression >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLStringExpression >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - ValueSpecification' }
OPUMLStringExpression >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : #'accessing - PackageableElement' }
OPUMLStringExpression >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLStringExpression >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
