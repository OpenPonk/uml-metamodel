"
A DirectedRelationship represents a relationship between a collection of source model Elements and a collection of target model Elements.
"
Class {
	#name : 'OPUMLDirectedRelationship',
	#superclass : 'OPUMLElement',
	#instVars : [
		'targets',
		'sources'
	],
	#category : 'OP-UML-Metamodel-CommonStructure',
	#package : 'OP-UML-Metamodel',
	#tag : 'CommonStructure'
}

{ #category : 'initialization' }
OPUMLDirectedRelationship >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Relationship.
	}
]

{ #category : 'initialization' }
OPUMLDirectedRelationship >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: self.
]

{ #category : 'accessing - Relationship' }
OPUMLDirectedRelationship >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLDirectedRelationship >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing' }
OPUMLDirectedRelationship >> sources [
	"Specifies the source Element(s) of the DirectedRelationship."
	^ sources ifNil: [ sources := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLDirectedRelationship >> sources: anElement [
	"Specifies the source Element(s) of the DirectedRelationship."
	sources := anElement
]

{ #category : 'accessing' }
OPUMLDirectedRelationship >> targets [
	"Specifies the target Element(s) of the DirectedRelationship."
	^ targets ifNil: [ targets := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLDirectedRelationship >> targets: anElement [
	"Specifies the target Element(s) of the DirectedRelationship."
	targets := anElement
]
