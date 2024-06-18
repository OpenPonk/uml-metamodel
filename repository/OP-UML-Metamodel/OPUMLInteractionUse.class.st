"
An InteractionUse refers to an Interaction. The InteractionUse is a shorthand for copying the contents of the referenced Interaction where the InteractionUse is. To be accurate the copying must take into account substituting parameters with arguments and connect the formal Gates with the actual ones.
"
Class {
	#name : 'OPUMLInteractionUse',
	#superclass : 'OPUMLElement',
	#instVars : [
		'refersTo',
		'arguments',
		'actualGates',
		'returnValueRecipient',
		'returnValue'
	],
	#category : 'OP-UML-Metamodel-Interactions',
	#package : 'OP-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing' }
OPUMLInteractionUse >> actualGates [
	"The actual gates of the InteractionUse."
	^ actualGates ifNil: [ actualGates := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLInteractionUse >> actualGates: aGate [
	"The actual gates of the InteractionUse."
	actualGates := aGate
]

{ #category : 'accessing' }
OPUMLInteractionUse >> arguments [
	"The actual arguments of the Interaction."
	^ arguments ifNil: [ arguments := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLInteractionUse >> arguments: aValueSpecification [
	"The actual arguments of the Interaction."
	arguments := aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionUse >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionUse >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionUse >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionUse >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionUse >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionUse >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionUse >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : 'accessing - InteractionFragment' }
OPUMLInteractionUse >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : 'initialization' }
OPUMLInteractionUse >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InteractionFragment.
	}
]

{ #category : 'initialization' }
OPUMLInteractionUse >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionUse put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLInteractionUse >> refersTo [
	"Refers to the Interaction that defines its meaning."
	^ refersTo
]

{ #category : 'accessing' }
OPUMLInteractionUse >> refersTo: anInteraction [
	"Refers to the Interaction that defines its meaning."
	refersTo := anInteraction
]

{ #category : 'accessing' }
OPUMLInteractionUse >> returnValue [
	"The value of the executed Interaction."
	^ returnValue
]

{ #category : 'accessing' }
OPUMLInteractionUse >> returnValue: aValueSpecification [
	"The value of the executed Interaction."
	returnValue := aValueSpecification
]

{ #category : 'accessing' }
OPUMLInteractionUse >> returnValueRecipient [
	"The recipient of the return value."
	^ returnValueRecipient
]

{ #category : 'accessing' }
OPUMLInteractionUse >> returnValueRecipient: aProperty [
	"The recipient of the return value."
	returnValueRecipient := aProperty
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLInteractionUse >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
