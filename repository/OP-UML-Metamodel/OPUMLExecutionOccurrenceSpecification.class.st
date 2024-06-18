"
An ExecutionOccurrenceSpecification represents moments in time at which Actions or Behaviors start or finish.
"
Class {
	#name : 'OPUMLExecutionOccurrenceSpecification',
	#superclass : 'OPUMLElement',
	#instVars : [
		'execution'
	],
	#category : 'OP-UML-Metamodel-Interactions',
	#package : 'OP-UML-Metamodel',
	#tag : 'Interactions'
}

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLExecutionOccurrenceSpecification >> covered [
	^ (sharedGeneralizations at: #OccurrenceSpecification) covered
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLExecutionOccurrenceSpecification >> covered: aLifeline [
	(sharedGeneralizations at: #OccurrenceSpecification) covered: aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLExecutionOccurrenceSpecification >> covereds [
	^ (sharedGeneralizations at: #InteractionFragment) covereds
]

{ #category : 'accessing - InteractionFragment' }
OPUMLExecutionOccurrenceSpecification >> covereds: aLifeline [
	(sharedGeneralizations at: #InteractionFragment) covereds: aLifeline
]

{ #category : 'accessing - InteractionFragment' }
OPUMLExecutionOccurrenceSpecification >> enclosingInteraction [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLExecutionOccurrenceSpecification >> enclosingInteraction: anInteraction [
	(sharedGeneralizations at: #InteractionFragment) enclosingInteraction: anInteraction
]

{ #category : 'accessing - InteractionFragment' }
OPUMLExecutionOccurrenceSpecification >> enclosingOperand [
	^ (sharedGeneralizations at: #InteractionFragment) enclosingOperand
]

{ #category : 'accessing - InteractionFragment' }
OPUMLExecutionOccurrenceSpecification >> enclosingOperand: anInteractionOperand [
	(sharedGeneralizations at: #InteractionFragment) enclosingOperand: anInteractionOperand
]

{ #category : 'accessing' }
OPUMLExecutionOccurrenceSpecification >> execution [
	"References the execution specification describing the execution that is started or finished at this execution event."
	^ execution
]

{ #category : 'accessing' }
OPUMLExecutionOccurrenceSpecification >> execution: anExecutionSpecification [
	"References the execution specification describing the execution that is started or finished at this execution event."
	execution := anExecutionSpecification
]

{ #category : 'accessing - InteractionFragment' }
OPUMLExecutionOccurrenceSpecification >> generalOrderings [
	^ (sharedGeneralizations at: #InteractionFragment) generalOrderings
]

{ #category : 'accessing - InteractionFragment' }
OPUMLExecutionOccurrenceSpecification >> generalOrderings: aGeneralOrdering [
	(sharedGeneralizations at: #InteractionFragment) generalOrderings: aGeneralOrdering
]

{ #category : 'initialization' }
OPUMLExecutionOccurrenceSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #OccurrenceSpecification.
	}
]

{ #category : 'initialization' }
OPUMLExecutionOccurrenceSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InteractionFragment put: (OPUMLInteractionFragment newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OccurrenceSpecification put: (OPUMLOccurrenceSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutionOccurrenceSpecification put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLExecutionOccurrenceSpecification >> toAfters [
	^ (sharedGeneralizations at: #OccurrenceSpecification) toAfters
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLExecutionOccurrenceSpecification >> toAfters: aGeneralOrdering [
	(sharedGeneralizations at: #OccurrenceSpecification) toAfters: aGeneralOrdering
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLExecutionOccurrenceSpecification >> toBefores [
	^ (sharedGeneralizations at: #OccurrenceSpecification) toBefores
]

{ #category : 'accessing - OccurrenceSpecification' }
OPUMLExecutionOccurrenceSpecification >> toBefores: aGeneralOrdering [
	(sharedGeneralizations at: #OccurrenceSpecification) toBefores: aGeneralOrdering
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLExecutionOccurrenceSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
