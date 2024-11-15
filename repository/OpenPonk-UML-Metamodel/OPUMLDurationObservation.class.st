"
A DurationObservation is a reference to a duration during an execution. It points out the NamedElement(s) in the model to observe and whether the observations are when this NamedElement is entered or when it is exited.
"
Class {
	#name : 'OPUMLDurationObservation',
	#superclass : 'OPUMLElement',
	#instVars : [
		'firstEvents',
		'events'
	],
	#category : 'OpenPonk-UML-Metamodel-Values',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLDurationObservation >> events [
	"The DurationObservation is determined as the duration between the entering or exiting of a single event Element during execution, or the entering/exiting of one event Element and the entering/exiting of a second."
	^ events ifNil: [ events := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLDurationObservation >> events: aNamedElement [
	"The DurationObservation is determined as the duration between the entering or exiting of a single event Element during execution, or the entering/exiting of one event Element and the entering/exiting of a second."
	events := aNamedElement
]

{ #category : 'accessing' }
OPUMLDurationObservation >> firstEvents [
	"The value of firstEvent[i] is related to event[i] (where i is 1 or 2). If firstEvent[i] is true, then the corresponding observation event is the first time instant the execution enters event[i]. If firstEvent[i] is false, then the corresponding observation event is the time instant the execution exits event[i]."
	^ firstEvents ifNil: [ firstEvents := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLDurationObservation >> firstEvents: aBoolean [
	"The value of firstEvent[i] is related to event[i] (where i is 1 or 2). If firstEvent[i] is true, then the corresponding observation event is the first time instant the execution enters event[i]. If firstEvent[i] is false, then the corresponding observation event is the time instant the execution exits event[i]."
	firstEvents := aBoolean
]

{ #category : 'initialization' }
OPUMLDurationObservation >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Observation.
	}
]

{ #category : 'initialization' }
OPUMLDurationObservation >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Observation put: (OPUMLObservation newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DurationObservation put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationObservation >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationObservation >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLDurationObservation >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationObservation >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDurationObservation >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLDurationObservation >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLDurationObservation >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
