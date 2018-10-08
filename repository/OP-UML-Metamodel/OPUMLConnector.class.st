"
A Connector specifies links that enables communication between two or more instances. In contrast to Associations, which specify links between any instance of the associated Classifiers, Connectors specify links between instances playing the connected parts only.
"
Class {
	#name : #OPUMLConnector,
	#superclass : #OPUMLElement,
	#instVars : [
		'ends',
		'redefinedConnectors',
		'kind',
		'type',
		'contracts'
	],
	#category : 'OP-UML-Metamodel-StructuredClassifiers'
}

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLConnector >> contracts [
	"The set of Behaviors that specify the valid interaction patterns across the Connector."
	^ contracts ifNil: [ contracts := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLConnector >> contracts: aBehavior [
	"The set of Behaviors that specify the valid interaction patterns across the Connector."
	contracts := aBehavior
]

{ #category : #accessing }
OPUMLConnector >> ends [
	"A Connector has at least two ConnectorEnds, each representing the participation of instances of the Classifiers typing the ConnectableElements attached to the end. The set of ConnectorEnds is ordered."
	^ ends ifNil: [ ends := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLConnector >> ends: aConnectorEnd [
	"A Connector has at least two ConnectorEnds, each representing the participation of instances of the Classifiers typing the ConnectableElements attached to the end. The set of ConnectorEnds is ordered."
	ends := aConnectorEnd
]

{ #category : #'accessing - Feature' }
OPUMLConnector >> featuringClassifier [
	^ (sharedGeneralizations at: #Feature) featuringClassifier
]

{ #category : #'accessing - Feature' }
OPUMLConnector >> featuringClassifier: aClassifier [
	(sharedGeneralizations at: #Feature) featuringClassifier: aClassifier
]

{ #category : #initialization }
OPUMLConnector >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Feature.
	}
]

{ #category : #initialization }
OPUMLConnector >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (OPUMLFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Connector put: self.
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConnector >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConnector >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Feature' }
OPUMLConnector >> isStatic [
	^ (sharedGeneralizations at: #Feature) isStatic
]

{ #category : #'accessing - Feature' }
OPUMLConnector >> isStatic: aBoolean [
	(sharedGeneralizations at: #Feature) isStatic: aBoolean
]

{ #category : #accessing }
OPUMLConnector >> kind [
	"Indicates the kind of Connector. This is derived: a Connector with one or more ends connected to a Port which is not on a Part and which is not a behavior port is a delegation; otherwise it is an assembly."
	^ kind
]

{ #category : #accessing }
OPUMLConnector >> kind: aConnectorKind [
	"Indicates the kind of Connector. This is derived: a Connector with one or more ends connected to a Port which is not on a Part and which is not a behavior port is a delegation; otherwise it is an assembly."
	kind := aConnectorKind
]

{ #category : #'operations - stubs' }
OPUMLConnector >> kindStub [
	"Derivation for Connector::/kind : ConnectorKind"
	
	"{OCL} result = (if end->exists(
		role.oclIsKindOf(Port) 
		and partWithPort->isEmpty()
		and not role.oclAsType(Port).isBehavior)
then ConnectorKind::delegation 
else ConnectorKind::assembly 
endif)"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLConnector >> redefinedConnectors [
	"A Connector may be redefined when its containing Classifier is specialized. The redefining Connector may have a type that specializes the type of the redefined Connector. The types of the ConnectorEnds of the redefining Connector may specialize the types of the ConnectorEnds of the redefined Connector. The properties of the ConnectorEnds of the redefining Connector may be replaced."
	^ redefinedConnectors ifNil: [ redefinedConnectors := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLConnector >> redefinedConnectors: aConnector [
	"A Connector may be redefined when its containing Classifier is specialized. The redefining Connector may have a type that specializes the type of the redefined Connector. The types of the ConnectorEnds of the redefining Connector may specialize the types of the ConnectorEnds of the redefined Connector. The properties of the ConnectorEnds of the redefining Connector may be replaced."
	redefinedConnectors := aConnector
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConnector >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConnector >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConnector >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLConnector >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #accessing }
OPUMLConnector >> type [
	"An optional Association that classifies links corresponding to this Connector."
	^ type
]

{ #category : #accessing }
OPUMLConnector >> type: anAssociation [
	"An optional Association that classifies links corresponding to this Connector."
	type := anAssociation
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLConnector >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
