Class {
	#name : 'OPUMLRTInteractiveViewContext',
	#superclass : 'RTAbstractViewContext',
	#category : 'OP-UML-GTExtensions',
	#package : 'OP-UML-GTExtensions'
}

{ #category : 'hooks' }
OPUMLRTInteractiveViewContext >> interactionsToBeRegistered [
	^ Array with: OPUMLRTSelectableElementsContextInteraction with: RTResizeableViewContextInteraction
]
