"
A TimeObservation is a reference to a time instant during an execution. It points out the NamedElement in the model to observe and whether the observation is when this NamedElement is entered or when it is exited.
"
Class {
	#name : 'OPUMLTimeObservation',
	#superclass : 'OPUMLElement',
	#instVars : [
		'firstEvent',
		'event'
	],
	#category : 'OpenPonk-UML-Metamodel-Values',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Values'
}

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLTimeObservation >> event [
	"The TimeObservation is determined by the entering or exiting of the event Element during execution."
	^ event
]

{ #category : 'accessing' }
OPUMLTimeObservation >> event: aNamedElement [
	"The TimeObservation is determined by the entering or exiting of the event Element during execution."
	event := aNamedElement
]

{ #category : 'accessing' }
OPUMLTimeObservation >> firstEvent [
	"The value of firstEvent is related to the event. If firstEvent is true, then the corresponding observation event is the first time instant the execution enters the event Element. If firstEvent is false, then the corresponding observation event is the time instant the execution exits the event Element."
	^ firstEvent ifNil: [ firstEvent := true ]
]

{ #category : 'accessing' }
OPUMLTimeObservation >> firstEvent: aBoolean [
	"The value of firstEvent is related to the event. If firstEvent is true, then the corresponding observation event is the first time instant the execution enters the event Element. If firstEvent is false, then the corresponding observation event is the time instant the execution exits the event Element."
	firstEvent := aBoolean
]

{ #category : 'initialization' }
OPUMLTimeObservation >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Observation.
	}
]

{ #category : 'initialization' }
OPUMLTimeObservation >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Observation put: (OPUMLObservation newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TimeObservation put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeObservation >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeObservation >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeObservation >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeObservation >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeObservation >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLTimeObservation >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLTimeObservation >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
