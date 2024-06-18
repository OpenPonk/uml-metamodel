"
A QualifierValue is an Element that is used as part of LinkEndData to provide the value for a single qualifier of the end given by the LinkEndData.
"
Class {
	#name : 'OPUMLQualifierValue',
	#superclass : 'OPUMLElement',
	#instVars : [
		'qualifier',
		'value'
	],
	#category : 'OP-UML-Metamodel-Actions',
	#package : 'OP-UML-Metamodel',
	#tag : 'Actions'
}

{ #category : 'initialization' }
OPUMLQualifierValue >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : 'initialization' }
OPUMLQualifierValue >> initializeSharedGeneralizations [
	sharedGeneralizations at: #QualifierValue put: self.
]

{ #category : 'accessing' }
OPUMLQualifierValue >> qualifier [
	"The qualifier Property for which the value is to be specified."
	^ qualifier
]

{ #category : 'accessing' }
OPUMLQualifierValue >> qualifier: aProperty [
	"The qualifier Property for which the value is to be specified."
	qualifier := aProperty
]

{ #category : 'accessing' }
OPUMLQualifierValue >> value [
	"The InputPin from which the specified value for the qualifier is taken."
	^ value
]

{ #category : 'accessing' }
OPUMLQualifierValue >> value: anInputPin [
	"The InputPin from which the specified value for the qualifier is taken."
	value := anInputPin
]
