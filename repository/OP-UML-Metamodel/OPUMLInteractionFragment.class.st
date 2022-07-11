"
InteractionFragment is an abstract notion of the most general interaction unit. An InteractionFragment is a piece of an Interaction. Each InteractionFragment is conceptually like an Interaction by itself.
"
Class {
	#name : #OPUMLInteractionFragment,
	#superclass : #OPUMLElement,
	#instVars : [
		'enclosingOperand',
		'enclosingInteraction',
		'covereds',
		'generalOrderings'
	],
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLInteractionFragment >> covereds [
	"References the Lifelines that the InteractionFragment involves."
	^ covereds ifNil: [ covereds := OPUMLManyToManyLinks on: self identity opposite: #coveredBies ]
]

{ #category : #accessing }
OPUMLInteractionFragment >> covereds: aLifeline [
	"References the Lifelines that the InteractionFragment involves."
	self covereds
		removeAll;
		addAll: aLifeline
]

{ #category : #accessing }
OPUMLInteractionFragment >> enclosingInteraction [
	"The Interaction enclosing this InteractionFragment."
	^ enclosingInteraction
]

{ #category : #accessing }
OPUMLInteractionFragment >> enclosingInteraction: anInteraction [
	"The Interaction enclosing this InteractionFragment."
	enclosingInteraction := OPUMLToOneLink
		on: self identity
		update: #fragments
		from: enclosingInteraction
		to: anInteraction
]

{ #category : #accessing }
OPUMLInteractionFragment >> enclosingOperand [
	"The operand enclosing this InteractionFragment (they may nest recursively)."
	^ enclosingOperand
]

{ #category : #accessing }
OPUMLInteractionFragment >> enclosingOperand: anInteractionOperand [
	"The operand enclosing this InteractionFragment (they may nest recursively)."
	enclosingOperand := OPUMLToOneLink
		on: self identity
		update: #fragments
		from: enclosingOperand
		to: anInteractionOperand
]

{ #category : #accessing }
OPUMLInteractionFragment >> generalOrderings [
	"The general ordering relationships contained in this fragment."
	^ generalOrderings ifNil: [ generalOrderings := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInteractionFragment >> generalOrderings: aGeneralOrdering [
	"The general ordering relationships contained in this fragment."
	generalOrderings := aGeneralOrdering
]

{ #category : #initialization }
OPUMLInteractionFragment >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLInteractionFragment >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLInteractionFragment >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
