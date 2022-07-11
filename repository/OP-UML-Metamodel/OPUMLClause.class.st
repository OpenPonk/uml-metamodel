"
A Clause is an Element that represents a single branch of a ConditionalNode, including a test and a body section. The body section is executed only if (but not necessarily if) the test section evaluates to true.
"
Class {
	#name : #OPUMLClause,
	#superclass : #OPUMLElement,
	#instVars : [
		'decider',
		'bodies',
		'successorClauses',
		'bodyOutputs',
		'predecessorClauses',
		'tests'
	],
	#category : 'OP-UML-Metamodel-Actions'
}

{ #category : #accessing }
OPUMLClause >> bodies [
	"The set of ExecutableNodes that are executed if the test evaluates to true and the Clause is chosen over other Clauses within the ConditionalNode that also have tests that evaluate to true."
	^ bodies ifNil: [ bodies := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClause >> bodies: anExecutableNode [
	"The set of ExecutableNodes that are executed if the test evaluates to true and the Clause is chosen over other Clauses within the ConditionalNode that also have tests that evaluate to true."
	bodies := anExecutableNode
]

{ #category : #accessing }
OPUMLClause >> bodyOutputs [
	"The OutputPins on Actions within the body section whose values are moved to the result OutputPins of the containing ConditionalNode after execution of the body."
	^ bodyOutputs ifNil: [ bodyOutputs := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClause >> bodyOutputs: anOutputPin [
	"The OutputPins on Actions within the body section whose values are moved to the result OutputPins of the containing ConditionalNode after execution of the body."
	bodyOutputs := anOutputPin
]

{ #category : #accessing }
OPUMLClause >> decider [
	"An OutputPin on an Action in the test section whose Boolean value determines the result of the test."
	^ decider
]

{ #category : #accessing }
OPUMLClause >> decider: anOutputPin [
	"An OutputPin on an Action in the test section whose Boolean value determines the result of the test."
	decider := anOutputPin
]

{ #category : #initialization }
OPUMLClause >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLClause >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Clause put: self.
]

{ #category : #accessing }
OPUMLClause >> predecessorClauses [
	"A set of Clauses whose tests must all evaluate to false before this Clause can evaluate its test."
	^ predecessorClauses ifNil: [ predecessorClauses := OPUMLManyToManyLinks on: self identity opposite: #successorClauses ]
]

{ #category : #accessing }
OPUMLClause >> predecessorClauses: aClause [
	"A set of Clauses whose tests must all evaluate to false before this Clause can evaluate its test."
	self predecessorClauses
		removeAll;
		addAll: aClause
]

{ #category : #accessing }
OPUMLClause >> successorClauses [
	"A set of Clauses that may not evaluate their tests unless the test for this Clause evaluates to false."
	^ successorClauses ifNil: [ successorClauses := OPUMLManyToManyLinks on: self identity opposite: #predecessorClauses ]
]

{ #category : #accessing }
OPUMLClause >> successorClauses: aClause [
	"A set of Clauses that may not evaluate their tests unless the test for this Clause evaluates to false."
	self successorClauses
		removeAll;
		addAll: aClause
]

{ #category : #accessing }
OPUMLClause >> tests [
	"The set of ExecutableNodes that are executed in order to provide a test result for the Clause."
	^ tests ifNil: [ tests := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClause >> tests: anExecutableNode [
	"The set of ExecutableNodes that are executed in order to provide a test result for the Clause."
	tests := anExecutableNode
]
