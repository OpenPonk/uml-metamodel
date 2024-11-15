"
ConnectableElement is an abstract metaclass representing a set of instances that play roles of a StructuredClassifier. ConnectableElements may be joined by attached Connectors and specify configurations of linked instances to be created within an instance of the containing StructuredClassifier.
"
Class {
	#name : 'OPUMLConnectableElement',
	#superclass : 'OPUMLElement',
	#instVars : [
		'templateParameter',
		'ends'
	],
	#category : 'OpenPonk-UML-Metamodel-StructuredClassifiers',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StructuredClassifiers'
}

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'operations - stubs' }
OPUMLConnectableElement >> endStub [
	"Derivation for ConnectableElement::/end : ConnectorEnd"
	
	"{OCL} result = (ConnectorEnd.allInstances()->select(role = self))"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLConnectableElement >> ends [
	"A set of ConnectorEnds that attach to this ConnectableElement."
	^ ends ifNil: [ ends := OPUMLToManyLinks on: self identity opposite: #role: ]
]

{ #category : 'accessing' }
OPUMLConnectableElement >> ends: aConnectorEnd [
	"A set of ConnectorEnds that attach to this ConnectableElement."
	self ends
		removeAll;
		addAll: aConnectorEnd
]

{ #category : 'initialization' }
OPUMLConnectableElement >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TypedElement.
		sharedGeneralizations at: #ParameterableElement.
	}
]

{ #category : 'initialization' }
OPUMLConnectableElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectableElement put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLConnectableElement >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLConnectableElement >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLConnectableElement >> templateParameter [
	"The ConnectableElementTemplateParameter for this ConnectableElement parameter."
	^ templateParameter
]

{ #category : 'accessing' }
OPUMLConnectableElement >> templateParameter: aConnectableElementTemplateParameter [
	"The ConnectableElementTemplateParameter for this ConnectableElement parameter."
	|anOldTemplateParameter|
	anOldTemplateParameter := templateParameter.
	templateParameter := aConnectableElementTemplateParameter.
	OPUMLToOneLink
		on: self identity
		thisSelector: #templateParameter
		otherSelector: #parameteredElement
		from: anOldTemplateParameter
		to: templateParameter
]

{ #category : 'accessing - TypedElement' }
OPUMLConnectableElement >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : 'accessing - TypedElement' }
OPUMLConnectableElement >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLConnectableElement >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
