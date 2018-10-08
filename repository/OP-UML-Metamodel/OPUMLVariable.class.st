"
A Variable is a ConnectableElement that may store values during the execution of an Activity. Reading and writing the values of a Variable provides an alternative means for passing data than the use of ObjectFlows. A Variable may be owned directly by an Activity, in which case it is accessible from anywhere within that activity, or it may be owned by a StructuredActivityNode, in which case it is only accessible within that node.
"
Class {
	#name : #OPUMLVariable,
	#superclass : #OPUMLElement,
	#instVars : [
		'activityScope',
		'scope'
	],
	#category : 'OP-UML-Metamodel-Activities'
}

{ #category : #accessing }
OPUMLVariable >> activityScope [
	"An Activity that owns the Variable."
	^ activityScope
]

{ #category : #accessing }
OPUMLVariable >> activityScope: anActivity [
	"An Activity that owns the Variable."
	activityScope := OPUMLToOneLink
		on: self identity
		update: #variables
		from: activityScope
		to: anActivity
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - ConnectableElement' }
OPUMLVariable >> ends [
	^ (sharedGeneralizations at: #ConnectableElement) ends
]

{ #category : #'accessing - ConnectableElement' }
OPUMLVariable >> ends: aConnectorEnd [
	(sharedGeneralizations at: #ConnectableElement) ends: aConnectorEnd
]

{ #category : #initialization }
OPUMLVariable >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ConnectableElement.
		sharedGeneralizations at: #MultiplicityElement.
	}
]

{ #category : #initialization }
OPUMLVariable >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectableElement put: (OPUMLConnectableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Variable put: self.
]

{ #category : #'operations - stubs' }
OPUMLVariable >> isAccessibleByStub [
	"A Variable is accessible by Actions within its scope (the Activity or StructuredActivityNode that owns it)."
	
	"{OCL} result = (if scope<>null then scope.allOwnedNodes()->includes(a)
else a.containingActivity()=activityScope
endif)"
	
	self notYetImplemented

]

{ #category : #'operations - MultiplicityElement' }
OPUMLVariable >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : #'operations - MultiplicityElement' }
OPUMLVariable >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : #'operations - MultiplicityElement' }
OPUMLVariable >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLVariable >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLVariable >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLVariable >> scope [
	"A StructuredActivityNode that owns the Variable."
	^ scope
]

{ #category : #accessing }
OPUMLVariable >> scope: aStructuredActivityNode [
	"A StructuredActivityNode that owns the Variable."
	scope := OPUMLToOneLink
		on: self identity
		update: #variables
		from: scope
		to: aStructuredActivityNode
]

{ #category : #'accessing - ConnectableElement' }
OPUMLVariable >> templateParameter [
	^ (sharedGeneralizations at: #ConnectableElement) templateParameter
]

{ #category : #'accessing - ConnectableElement' }
OPUMLVariable >> templateParameter: aConnectableElementTemplateParameter [
	(sharedGeneralizations at: #ConnectableElement) templateParameter: aConnectableElementTemplateParameter
]

{ #category : #'accessing - TypedElement' }
OPUMLVariable >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : #'accessing - TypedElement' }
OPUMLVariable >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : #'operations - MultiplicityElement' }
OPUMLVariable >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : #'operations - MultiplicityElement' }
OPUMLVariable >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : #'accessing - MultiplicityElement' }
OPUMLVariable >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLVariable >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
