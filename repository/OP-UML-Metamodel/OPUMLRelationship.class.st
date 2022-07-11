"
Relationship is an abstract concept that specifies some kind of relationship between Elements.
"
Class {
	#name : #OPUMLRelationship,
	#superclass : #OPUMLElement,
	#instVars : [
		'relatedElements'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #initialization }
OPUMLRelationship >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLRelationship >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: self.
]

{ #category : #accessing }
OPUMLRelationship >> relatedElements [
	"Specifies the elements related by the Relationship."
	^ relatedElements ifNil: [ relatedElements := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLRelationship >> relatedElements: anElement [
	"Specifies the elements related by the Relationship."
	relatedElements := anElement
]
