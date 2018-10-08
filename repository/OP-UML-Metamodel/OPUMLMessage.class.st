"
A Message defines a particular communication between Lifelines of an Interaction.
"
Class {
	#name : #OPUMLMessage,
	#superclass : #OPUMLElement,
	#instVars : [
		'receiveEvent',
		'messageSort',
		'messageKind',
		'interaction',
		'arguments',
		'sendEvent',
		'signature',
		'connector'
	],
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #accessing }
OPUMLMessage >> arguments [
	"The arguments of the Message."
	^ arguments ifNil: [ arguments := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLMessage >> arguments: aValueSpecification [
	"The arguments of the Message."
	arguments := aValueSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLMessage >> connector [
	"The Connector on which this Message is sent."
	^ connector
]

{ #category : #accessing }
OPUMLMessage >> connector: aConnector [
	"The Connector on which this Message is sent."
	connector := aConnector
]

{ #category : #initialization }
OPUMLMessage >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLMessage >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Message put: self.
]

{ #category : #accessing }
OPUMLMessage >> interaction [
	"The enclosing Interaction owning the Message."
	^ interaction
]

{ #category : #accessing }
OPUMLMessage >> interaction: anInteraction [
	"The enclosing Interaction owning the Message."
	interaction := OPUMLToOneLink
		on: self identity
		update: #messages
		from: interaction
		to: anInteraction
]

{ #category : #'operations - stubs' }
OPUMLMessage >> isDistinguishableFromStub [
	"The query isDistinguishableFrom() specifies that any two Messages may coexist in the same Namespace, regardless of their names."
	
	"{OCL} result = (true)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLMessage >> messageKind [
	"The derived kind of the Message (complete, lost, found, or unknown)."
	^ messageKind
]

{ #category : #accessing }
OPUMLMessage >> messageKind: aMessageKind [
	"The derived kind of the Message (complete, lost, found, or unknown)."
	messageKind := aMessageKind
]

{ #category : #'operations - stubs' }
OPUMLMessage >> messageKindStub [
	"This query returns the MessageKind value for this Message."
	
	"{OCL} result = (messageKind)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLMessage >> messageSort [
	"The sort of communication reflected by the Message."
	^ messageSort ifNil: [ messageSort := OPUMLMessageSort new synchCall ]
]

{ #category : #accessing }
OPUMLMessage >> messageSort: aMessageSort [
	"The sort of communication reflected by the Message."
	messageSort := aMessageSort
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLMessage >> receiveEvent [
	"References the Receiving of the Message."
	^ receiveEvent
]

{ #category : #accessing }
OPUMLMessage >> receiveEvent: aMessageEnd [
	"References the Receiving of the Message."
	receiveEvent := aMessageEnd
]

{ #category : #accessing }
OPUMLMessage >> sendEvent [
	"References the Sending of the Message."
	^ sendEvent
]

{ #category : #accessing }
OPUMLMessage >> sendEvent: aMessageEnd [
	"References the Sending of the Message."
	sendEvent := aMessageEnd
]

{ #category : #accessing }
OPUMLMessage >> signature [
	"The signature of the Message is the specification of its content. It refers either an Operation or a Signal."
	^ signature
]

{ #category : #accessing }
OPUMLMessage >> signature: aNamedElement [
	"The signature of the Message is the specification of its content. It refers either an Operation or a Signal."
	signature := aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLMessage >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
