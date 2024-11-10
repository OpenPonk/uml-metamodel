"
A Lifeline represents an individual participant in the Interaction. While parts and structural features may have multiplicity greater than 1, Lifelines represent only one interacting entity.
"
Class {
	#name : 'OPUMLLifeline',
	#superclass : 'OPUMLElement',
	#instVars : [
		'represents',
		'decomposedAs',
		'coveredBies',
		'interaction',
		'selector'
	],
	#category : 'OpenPonk-UML-Metamodel-Interactions',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLLifeline >> coveredBies [
	"References the InteractionFragments in which this Lifeline takes part."
	^ coveredBies ifNil: [ coveredBies := OPUMLManyToManyLinks on: self identity opposite: #covereds ]
]

{ #category : 'accessing' }
OPUMLLifeline >> coveredBies: anInteractionFragment [
	"References the InteractionFragments in which this Lifeline takes part."
	self coveredBies
		removeAll;
		addAll: anInteractionFragment
]

{ #category : 'accessing' }
OPUMLLifeline >> decomposedAs [
	"References the Interaction that represents the decomposition."
	^ decomposedAs
]

{ #category : 'accessing' }
OPUMLLifeline >> decomposedAs: aPartDecomposition [
	"References the Interaction that represents the decomposition."
	decomposedAs := aPartDecomposition
]

{ #category : 'initialization' }
OPUMLLifeline >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : 'initialization' }
OPUMLLifeline >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Lifeline put: self.
]

{ #category : 'accessing' }
OPUMLLifeline >> interaction [
	"References the Interaction enclosing this Lifeline."
	^ interaction
]

{ #category : 'accessing' }
OPUMLLifeline >> interaction: anInteraction [
	"References the Interaction enclosing this Lifeline."
	interaction := OPUMLToOneLink
		on: self identity
		update: #lifelines
		from: interaction
		to: anInteraction
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLLifeline >> represents [
	"References the ConnectableElement within the classifier that contains the enclosing interaction."
	^ represents
]

{ #category : 'accessing' }
OPUMLLifeline >> represents: aConnectableElement [
	"References the ConnectableElement within the classifier that contains the enclosing interaction."
	represents := aConnectableElement
]

{ #category : 'accessing' }
OPUMLLifeline >> selector [
	"If the referenced ConnectableElement is multivalued, then this specifies the specific individual part within that set."
	^ selector
]

{ #category : 'accessing' }
OPUMLLifeline >> selector: aValueSpecification [
	"If the referenced ConnectableElement is multivalued, then this specifies the specific individual part within that set."
	selector := aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLLifeline >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
