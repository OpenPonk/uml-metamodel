"
A ValueSpecification is the specification of a (possibly empty) set of values. A ValueSpecification is a ParameterableElement that may be exposed as a formal TemplateParameter and provided as the actual parameter in the binding of a template.
"
Class {
	#name : #OPUMLValueSpecification,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-Values'
}

{ #category : #operations }
OPUMLValueSpecification >> booleanValue [
	"The query booleanValue() gives a single Boolean value when one can be computed."
	
	"{OCL} result = (null)"
	
	^ nil

]

{ #category : #'operations - stubs' }
OPUMLValueSpecification >> booleanValueStub [
	"The query booleanValue() gives a single Boolean value when one can be computed."
	
	"{OCL} result = (null)"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLValueSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TypedElement.
		sharedGeneralizations at: #PackageableElement.
	}
]

{ #category : #initialization }
OPUMLValueSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ValueSpecification put: self.
]

{ #category : #operations }
OPUMLValueSpecification >> integerValue [
	"The query integerValue() gives a single Integer value when one can be computed."
	
	"{OCL} result = (null)"
	
	^ nil

]

{ #category : #'operations - stubs' }
OPUMLValueSpecification >> integerValueStub [
	"The query integerValue() gives a single Integer value when one can be computed."
	
	"{OCL} result = (null)"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLValueSpecification >> isCompatibleWithStub [
	"The query isCompatibleWith() determines if this ValueSpecification is compatible with the specified ParameterableElement. This ValueSpecification is compatible with ParameterableElement p if the kind of this ValueSpecification is the same as or a subtype of the kind of p. Further, if p is a TypedElement, then the type of this ValueSpecification must be conformant with the type of p."
	
	"{OCL} result = (self.oclIsKindOf(p.oclType()) and (p.oclIsKindOf(TypedElement) implies 
self.type.conformsTo(p.oclAsType(TypedElement).type)))"
	
	self notYetImplemented

]

{ #category : #operations }
OPUMLValueSpecification >> isComputable [
	"The query isComputable() determines whether a value specification can be computed in a model. This operation cannot be fully defined in OCL. A conforming implementation is expected to deliver true for this operation for all ValueSpecifications that it can compute, and to compute all of those for which the operation is true. A conforming implementation is expected to be able to compute at least the value of all LiteralSpecifications."
	
	"{OCL} result = (false)"
	
	^ false

]

{ #category : #'operations - stubs' }
OPUMLValueSpecification >> isComputableStub [
	"The query isComputable() determines whether a value specification can be computed in a model. This operation cannot be fully defined in OCL. A conforming implementation is expected to deliver true for this operation for all ValueSpecifications that it can compute, and to compute all of those for which the operation is true. A conforming implementation is expected to be able to compute at least the value of all LiteralSpecifications."
	
	"{OCL} result = (false)"
	
	self notYetImplemented

]

{ #category : #operations }
OPUMLValueSpecification >> isNull [
	"The query isNull() returns true when it can be computed that the value is null."
	
	"{OCL} result = (false)"
	
	^ false

]

{ #category : #'operations - stubs' }
OPUMLValueSpecification >> isNullStub [
	"The query isNull() returns true when it can be computed that the value is null."
	
	"{OCL} result = (false)"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLValueSpecification >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLValueSpecification >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLValueSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #operations }
OPUMLValueSpecification >> realValue [
	"The query realValue() gives a single Real value when one can be computed."
	
	"{OCL} result = (null)"
	
	^ nil

]

{ #category : #'operations - stubs' }
OPUMLValueSpecification >> realValueStub [
	"The query realValue() gives a single Real value when one can be computed."
	
	"{OCL} result = (null)"
	
	self notYetImplemented

]

{ #category : #operations }
OPUMLValueSpecification >> stringValue [
	"The query stringValue() gives a single String value when one can be computed."
	
	"{OCL} result = (null)"
	
	^ nil

]

{ #category : #'operations - stubs' }
OPUMLValueSpecification >> stringValueStub [
	"The query stringValue() gives a single String value when one can be computed."
	
	"{OCL} result = (null)"
	
	self notYetImplemented

]

{ #category : #'accessing - ParameterableElement' }
OPUMLValueSpecification >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLValueSpecification >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLValueSpecification >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLValueSpecification >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #operations }
OPUMLValueSpecification >> unlimitedValue [
	"The query unlimitedValue() gives a single UnlimitedNatural value when one can be computed."
	
	"{OCL} result = (null)"
	
	^ nil

]

{ #category : #'operations - stubs' }
OPUMLValueSpecification >> unlimitedValueStub [
	"The query unlimitedValue() gives a single UnlimitedNatural value when one can be computed."
	
	"{OCL} result = (null)"
	
	self notYetImplemented

]

{ #category : #'accessing - PackageableElement' }
OPUMLValueSpecification >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLValueSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
