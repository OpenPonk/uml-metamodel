"
An OpaqueExpression is a ValueSpecification that specifies the computation of a collection of values either in terms of a UML Behavior or based on a textual statement in a language other than UML
"
Class {
	#name : #OPUMLOpaqueExpression,
	#superclass : #OPUMLElement,
	#instVars : [
		'behavior',
		'bodies',
		'languages',
		'result'
	],
	#category : 'OP-UML-Metamodel-Values'
}

{ #category : #accessing }
OPUMLOpaqueExpression >> behavior [
	"Specifies the behavior of the OpaqueExpression as a UML Behavior."
	^ behavior
]

{ #category : #accessing }
OPUMLOpaqueExpression >> behavior: aBehavior [
	"Specifies the behavior of the OpaqueExpression as a UML Behavior."
	behavior := aBehavior
]

{ #category : #accessing }
OPUMLOpaqueExpression >> bodies [
	"A textual definition of the behavior of the OpaqueExpression, possibly in multiple languages."
	^ bodies ifNil: [ bodies := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLOpaqueExpression >> bodies: aString [
	"A textual definition of the behavior of the OpaqueExpression, possibly in multiple languages."
	bodies := aString
]

{ #category : #'operations - ValueSpecification' }
OPUMLOpaqueExpression >> booleanValue [
	^ (sharedGeneralizations at: #ValueSpecification) booleanValue
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLOpaqueExpression >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ValueSpecification.
	}
]

{ #category : #initialization }
OPUMLOpaqueExpression >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: (OPUMLValueSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OpaqueExpression put: self.
]

{ #category : #'operations - ValueSpecification' }
OPUMLOpaqueExpression >> integerValue [
	^ (sharedGeneralizations at: #ValueSpecification) integerValue
]

{ #category : #'operations - ValueSpecification' }
OPUMLOpaqueExpression >> isComputable [
	^ (sharedGeneralizations at: #ValueSpecification) isComputable
]

{ #category : #'operations - stubs' }
OPUMLOpaqueExpression >> isIntegralStub [
	"The query isIntegral() tells whether an expression is intended to produce an Integer."
	
	"{OCL} result = (false)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLOpaqueExpression >> isNonNegativeStub [
	"The query isNonNegative() tells whether an integer expression has a non-negative value."
	
	"pre: {OCL} self.isIntegral()"
	"{OCL} result = (false)"
	
	self notYetImplemented

]

{ #category : #'operations - ValueSpecification' }
OPUMLOpaqueExpression >> isNull [
	^ (sharedGeneralizations at: #ValueSpecification) isNull
]

{ #category : #'operations - stubs' }
OPUMLOpaqueExpression >> isPositiveStub [
	"The query isPositive() tells whether an integer expression has a positive value."
	
	"pre: {OCL} self.isIntegral()"
	"{OCL} result = (false)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLOpaqueExpression >> languages [
	"Specifies the languages used to express the textual bodies of the OpaqueExpression.  Languages are matched to body Strings by order. The interpretation of the body depends on the languages. If the languages are unspecified, they may be implicit from the expression body or the context."
	^ languages ifNil: [ languages := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLOpaqueExpression >> languages: aString [
	"Specifies the languages used to express the textual bodies of the OpaqueExpression.  Languages are matched to body Strings by order. The interpretation of the body depends on the languages. If the languages are unspecified, they may be implicit from the expression body or the context."
	languages := aString
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLOpaqueExpression >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLOpaqueExpression >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLOpaqueExpression >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'operations - ValueSpecification' }
OPUMLOpaqueExpression >> realValue [
	^ (sharedGeneralizations at: #ValueSpecification) realValue
]

{ #category : #accessing }
OPUMLOpaqueExpression >> result [
	"If an OpaqueExpression is specified using a UML Behavior, then this refers to the single required return Parameter of that Behavior. When the Behavior completes execution, the values on this Parameter give the result of evaluating the OpaqueExpression."
	^ result
]

{ #category : #accessing }
OPUMLOpaqueExpression >> result: aParameter [
	"If an OpaqueExpression is specified using a UML Behavior, then this refers to the single required return Parameter of that Behavior. When the Behavior completes execution, the values on this Parameter give the result of evaluating the OpaqueExpression."
	result := aParameter
]

{ #category : #'operations - stubs' }
OPUMLOpaqueExpression >> resultStub [
	"Derivation for OpaqueExpression::/result "
	
	"{OCL} result = (if behavior = null then
	null
else
	behavior.ownedParameter->first()
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - ValueSpecification' }
OPUMLOpaqueExpression >> stringValue [
	^ (sharedGeneralizations at: #ValueSpecification) stringValue
]

{ #category : #'accessing - ParameterableElement' }
OPUMLOpaqueExpression >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLOpaqueExpression >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLOpaqueExpression >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLOpaqueExpression >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - ValueSpecification' }
OPUMLOpaqueExpression >> unlimitedValue [
	^ (sharedGeneralizations at: #ValueSpecification) unlimitedValue
]

{ #category : #'operations - stubs' }
OPUMLOpaqueExpression >> valueStub [
	"The query value() gives an integer value for an expression intended to produce one."
	
	"pre: {OCL} self.isIntegral()"
	"{OCL} result = (0)"
	
	self notYetImplemented

]

{ #category : #'accessing - PackageableElement' }
OPUMLOpaqueExpression >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLOpaqueExpression >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
