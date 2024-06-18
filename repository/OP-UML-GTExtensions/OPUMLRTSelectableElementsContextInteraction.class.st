Class {
	#name : 'OPUMLRTSelectableElementsContextInteraction',
	#superclass : 'RTAbstractContextInteraction',
	#category : 'OP-UML-GTExtensions',
	#package : 'OP-UML-GTExtensions'
}

{ #category : 'initialization' }
OPUMLRTSelectableElementsContextInteraction >> initializeElement: aView [
	self
		assert: [ self presentation notNil ]
		description: 'The presentation has to be set'.
	self initializeSetOfElements: aView elements
]

{ #category : 'initialization' }
OPUMLRTSelectableElementsContextInteraction >> initializeSetOfElements: elements [
 	elements do:
		[ :each | self initializeSingleElement: each ]
]

{ #category : 'initialization' }
OPUMLRTSelectableElementsContextInteraction >> initializeSingleElement: each [
	^ each
		when: TRMouseLeftClick
		do: [ :event | 
			each model
				ifNotNil: [ :m | 
					self presentation
						selection:
							((m respondsTo: #modelElement)
								ifTrue: [ m modelElement ]
								ifFalse: [ m model modelElement ]) ] ]
]
