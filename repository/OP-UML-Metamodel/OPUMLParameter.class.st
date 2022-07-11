"
A Parameter is a specification of an argument used to pass information into or out of an invocation of a BehavioralFeature.  Parameters can be treated as ConnectableElements within Collaborations.
"
Class {
	#name : #OPUMLParameter,
	#superclass : #OPUMLElement,
	#instVars : [
		'isStream',
		'defaultValue',
		'effect',
		'direction',
		'isException',
		'default',
		'operation',
		'parameterSets'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLParameter >> default [
	"A String that represents a value to be used when no argument is supplied for the Parameter."
	^ default
]

{ #category : #accessing }
OPUMLParameter >> default: aString [
	"A String that represents a value to be used when no argument is supplied for the Parameter."
	default := aString
]

{ #category : #'operations - stubs' }
OPUMLParameter >> defaultStub [
	"Derivation for Parameter::/default"
	
	"{OCL} result = (if self.type = String then defaultValue.stringValue() else null endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLParameter >> defaultValue [
	"Specifies a ValueSpecification that represents a value to be used when no argument is supplied for the Parameter."
	^ defaultValue
]

{ #category : #accessing }
OPUMLParameter >> defaultValue: aValueSpecification [
	"Specifies a ValueSpecification that represents a value to be used when no argument is supplied for the Parameter."
	defaultValue := aValueSpecification
]

{ #category : #accessing }
OPUMLParameter >> direction [
	"Indicates whether a parameter is being sent into or out of a behavioral element."
	^ direction ifNil: [ direction := OPUMLParameterDirectionKind new in ]
]

{ #category : #accessing }
OPUMLParameter >> direction: aParameterDirectionKind [
	"Indicates whether a parameter is being sent into or out of a behavioral element."
	direction := aParameterDirectionKind
]

{ #category : #accessing }
OPUMLParameter >> effect [
	"Specifies the effect that executions of the owner of the Parameter have on objects passed in or out of the parameter."
	^ effect
]

{ #category : #accessing }
OPUMLParameter >> effect: aParameterEffectKind [
	"Specifies the effect that executions of the owner of the Parameter have on objects passed in or out of the parameter."
	effect := aParameterEffectKind
]

{ #category : #'accessing - ConnectableElement' }
OPUMLParameter >> ends [
	^ (sharedGeneralizations at: #ConnectableElement) ends
]

{ #category : #'accessing - ConnectableElement' }
OPUMLParameter >> ends: aConnectorEnd [
	(sharedGeneralizations at: #ConnectableElement) ends: aConnectorEnd
]

{ #category : #initialization }
OPUMLParameter >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MultiplicityElement.
		sharedGeneralizations at: #ConnectableElement.
	}
]

{ #category : #initialization }
OPUMLParameter >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectableElement put: (OPUMLConnectableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Parameter put: self.
]

{ #category : #accessing }
OPUMLParameter >> isException [
	"Tells whether an output parameter may emit a value to the exclusion of the other outputs."
	^ isException ifNil: [ isException := false ]
]

{ #category : #accessing }
OPUMLParameter >> isException: aBoolean [
	"Tells whether an output parameter may emit a value to the exclusion of the other outputs."
	isException := aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLParameter >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : #accessing }
OPUMLParameter >> isStream [
	"Tells whether an input parameter may accept values while its behavior is executing, or whether an output parameter may post values while the behavior is executing."
	^ isStream ifNil: [ isStream := false ]
]

{ #category : #accessing }
OPUMLParameter >> isStream: aBoolean [
	"Tells whether an input parameter may accept values while its behavior is executing, or whether an output parameter may post values while the behavior is executing."
	isStream := aBoolean
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLParameter >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : #'operations - MultiplicityElement' }
OPUMLParameter >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLParameter >> operation [
	"The Operation owning this parameter."
	^ operation
]

{ #category : #accessing }
OPUMLParameter >> operation: anOperation [
	"The Operation owning this parameter."
	operation := OPUMLToOneLink
		on: self identity
		update: #ownedParameters
		from: operation
		to: anOperation
]

{ #category : #'accessing - ParameterableElement' }
OPUMLParameter >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLParameter >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #accessing }
OPUMLParameter >> parameterSets [
	"The ParameterSets containing the parameter. See ParameterSet."
	^ parameterSets ifNil: [ parameterSets := OPUMLManyToManyLinks on: self identity opposite: #parameters ]
]

{ #category : #accessing }
OPUMLParameter >> parameterSets: aParameterSet [
	"The ParameterSets containing the parameter. See ParameterSet."
	self parameterSets
		removeAll;
		addAll: aParameterSet
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - ConnectableElement' }
OPUMLParameter >> templateParameter [
	^ (sharedGeneralizations at: #ConnectableElement) templateParameter
]

{ #category : #'accessing - ConnectableElement' }
OPUMLParameter >> templateParameter: aConnectableElementTemplateParameter [
	(sharedGeneralizations at: #ConnectableElement) templateParameter: aConnectableElementTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLParameter >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLParameter >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - MultiplicityElement' }
OPUMLParameter >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : #'operations - MultiplicityElement' }
OPUMLParameter >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLParameter >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLParameter >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
