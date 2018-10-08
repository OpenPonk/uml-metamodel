"
A ParameterSet designates alternative sets of inputs or outputs that a Behavior may use.
"
Class {
	#name : #OPUMLParameterSet,
	#superclass : #OPUMLElement,
	#instVars : [
		'conditions',
		'parameters'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLParameterSet >> conditions [
	"A constraint that should be satisfied for the owner of the Parameters in an input ParameterSet to start execution using the values provided for those Parameters, or the owner of the Parameters in an output ParameterSet to end execution providing the values for those Parameters, if all preconditions and conditions on input ParameterSets were satisfied."
	^ conditions ifNil: [ conditions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLParameterSet >> conditions: aConstraint [
	"A constraint that should be satisfied for the owner of the Parameters in an input ParameterSet to start execution using the values provided for those Parameters, or the owner of the Parameters in an output ParameterSet to end execution providing the values for those Parameters, if all preconditions and conditions on input ParameterSets were satisfied."
	conditions := aConstraint
]

{ #category : #initialization }
OPUMLParameterSet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLParameterSet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterSet put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLParameterSet >> parameters [
	"Parameters in the ParameterSet."
	^ parameters ifNil: [ parameters := OPUMLManyToManyLinks on: self identity opposite: #parameterSets ]
]

{ #category : #accessing }
OPUMLParameterSet >> parameters: aParameter [
	"Parameters in the ParameterSet."
	self parameters
		removeAll;
		addAll: aParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLParameterSet >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
