"
An ActionExecutionSpecification is a kind of ExecutionSpecification representing the execution of an Action.
"
Class {
	#name : 'OPUMLActionExecutionSpecification',
	#superclass : 'OPUMLElement',
	#instVars : [
		'action'
	],
	#category : 'OP-UML-Metamodel-Interactions',
	#package : 'OP-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing' }
OPUMLActionExecutionSpecification >> action [
	"Action whose execution is occurring."
	^ action
]

{ #category : 'accessing' }
OPUMLActionExecutionSpecification >> action: anAction [
	"Action whose execution is occurring."
	action := anAction
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - InteractionFragment' }
OPUMLActionExecutionSpecification >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : 'accessing - InteractionFragment' }
OPUMLActionExecutionSpecification >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLActionExecutionSpecification >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLActionExecutionSpecification >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLActionExecutionSpecification >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLActionExecutionSpecification >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : 'accessing - ExecutionSpecification' }
OPUMLActionExecutionSpecification >> finish [
	^ (sharedGeneralizations at: #ExecutionSpecification) finish
]

{ #category : 'accessing - ExecutionSpecification' }
OPUMLActionExecutionSpecification >> finish: anOccurrenceSpecification [
	(sharedGeneralizations at: #ExecutionSpecification) finish: anOccurrenceSpecification
]

{ #category : 'accessing - InteractionFragment' }
OPUMLActionExecutionSpecification >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : 'accessing - InteractionFragment' }
OPUMLActionExecutionSpecification >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : 'initialization' }
OPUMLActionExecutionSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ExecutionSpecification.
	}
]

{ #category : 'initialization' }
OPUMLActionExecutionSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutionSpecification put: (OPUMLExecutionSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ActionExecutionSpecification put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ExecutionSpecification' }
OPUMLActionExecutionSpecification >> start [
	^ (sharedGeneralizations at: #ExecutionSpecification) start
]

{ #category : 'accessing - ExecutionSpecification' }
OPUMLActionExecutionSpecification >> start: anOccurrenceSpecification [
	(sharedGeneralizations at: #ExecutionSpecification) start: anOccurrenceSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLActionExecutionSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
