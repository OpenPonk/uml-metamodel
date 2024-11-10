"
A Slot designates that an entity modeled by an InstanceSpecification has a value or values for a specific StructuralFeature.
"
Class {
	#name : 'OPUMLSlot',
	#superclass : 'OPUMLElement',
	#instVars : [
		'values',
		'owningInstance',
		'definingFeature'
	],
	#category : 'OpenPonk-UML-Metamodel-Classification',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing' }
OPUMLSlot >> definingFeature [
	"The StructuralFeature that specifies the values that may be held by the Slot."
	^ definingFeature
]

{ #category : 'accessing' }
OPUMLSlot >> definingFeature: aStructuralFeature [
	"The StructuralFeature that specifies the values that may be held by the Slot."
	definingFeature := aStructuralFeature
]

{ #category : 'initialization' }
OPUMLSlot >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : 'initialization' }
OPUMLSlot >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Slot put: self.
]

{ #category : 'accessing' }
OPUMLSlot >> owningInstance [
	"The InstanceSpecification that owns this Slot."
	^ owningInstance
]

{ #category : 'accessing' }
OPUMLSlot >> owningInstance: anInstanceSpecification [
	"The InstanceSpecification that owns this Slot."
	owningInstance := OPUMLToOneLink
		on: self identity
		update: #slots
		from: owningInstance
		to: anInstanceSpecification
]

{ #category : 'accessing' }
OPUMLSlot >> values [
	"The value or values held by the Slot."
	^ values ifNil: [ values := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLSlot >> values: aValueSpecification [
	"The value or values held by the Slot."
	values := aValueSpecification
]
