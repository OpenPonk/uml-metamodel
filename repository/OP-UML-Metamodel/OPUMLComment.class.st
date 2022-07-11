"
A Comment is a textual annotation that can be attached to a set of Elements.
"
Class {
	#name : #OPUMLComment,
	#superclass : #OPUMLElement,
	#instVars : [
		'annotatedElements',
		'body'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #accessing }
OPUMLComment >> annotatedElements [
	"References the Element(s) being commented."
	^ annotatedElements ifNil: [ annotatedElements := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLComment >> annotatedElements: anElement [
	"References the Element(s) being commented."
	annotatedElements := anElement
]

{ #category : #accessing }
OPUMLComment >> body [
	"Specifies a string that is the comment."
	^ body
]

{ #category : #accessing }
OPUMLComment >> body: aString [
	"Specifies a string that is the comment."
	body := aString
]

{ #category : #initialization }
OPUMLComment >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLComment >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Comment put: self.
]
