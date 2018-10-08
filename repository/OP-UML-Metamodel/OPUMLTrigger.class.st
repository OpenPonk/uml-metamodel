"
A Trigger specifies a specific point  at which an Event occurrence may trigger an effect in a Behavior. A Trigger may be qualified by the Port on which the Event occurred.
"
Class {
	#name : #OPUMLTrigger,
	#superclass : #OPUMLElement,
	#instVars : [
		'event',
		'ports'
	],
	#category : 'OP-UML-Metamodel-CommonBehavior'
}

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLTrigger >> event [
	"The Event that detected by the Trigger."
	^ event
]

{ #category : #accessing }
OPUMLTrigger >> event: anEvent [
	"The Event that detected by the Trigger."
	event := anEvent
]

{ #category : #initialization }
OPUMLTrigger >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLTrigger >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Trigger put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLTrigger >> ports [
	"A optional Port of through which the given effect is detected."
	^ ports ifNil: [ ports := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLTrigger >> ports: aPort [
	"A optional Port of through which the given effect is detected."
	ports := aPort
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLTrigger >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
