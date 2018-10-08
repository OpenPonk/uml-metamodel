"
A BehaviorExecutionSpecification is a kind of ExecutionSpecification representing the execution of a Behavior.
"
Class {
	#name : #OPUMLBehaviorExecutionSpecification,
	#superclass : #OPUMLElement,
	#instVars : [
		'behavior'
	],
	#category : 'OP-UML-Metamodel-Interactions'
}

{ #category : #accessing }
OPUMLBehaviorExecutionSpecification >> behavior [
	"Behavior whose execution is occurring."
	^ behavior
]

{ #category : #accessing }
OPUMLBehaviorExecutionSpecification >> behavior: aBehavior [
	"Behavior whose execution is occurring."
	behavior := aBehavior
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - InteractionFragment' }
OPUMLBehaviorExecutionSpecification >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : #'accessing - InteractionFragment' }
OPUMLBehaviorExecutionSpecification >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : #'accessing - InteractionFragment' }
OPUMLBehaviorExecutionSpecification >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLBehaviorExecutionSpecification >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : #'accessing - InteractionFragment' }
OPUMLBehaviorExecutionSpecification >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : #'accessing - InteractionFragment' }
OPUMLBehaviorExecutionSpecification >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : #'accessing - ExecutionSpecification' }
OPUMLBehaviorExecutionSpecification >> finish [
	^ (sharedGeneralizations at: #ExecutionSpecification) finish
]

{ #category : #'accessing - ExecutionSpecification' }
OPUMLBehaviorExecutionSpecification >> finish: anOccurrenceSpecification [
	(sharedGeneralizations at: #ExecutionSpecification) finish: anOccurrenceSpecification
]

{ #category : #'accessing - InteractionFragment' }
OPUMLBehaviorExecutionSpecification >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : #'accessing - InteractionFragment' }
OPUMLBehaviorExecutionSpecification >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : #initialization }
OPUMLBehaviorExecutionSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ExecutionSpecification.
	}
]

{ #category : #initialization }
OPUMLBehaviorExecutionSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutionSpecification put: (OPUMLExecutionSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BehaviorExecutionSpecification put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - ExecutionSpecification' }
OPUMLBehaviorExecutionSpecification >> start [
	^ (sharedGeneralizations at: #ExecutionSpecification) start
]

{ #category : #'accessing - ExecutionSpecification' }
OPUMLBehaviorExecutionSpecification >> start: anOccurrenceSpecification [
	(sharedGeneralizations at: #ExecutionSpecification) start: anOccurrenceSpecification
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLBehaviorExecutionSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
