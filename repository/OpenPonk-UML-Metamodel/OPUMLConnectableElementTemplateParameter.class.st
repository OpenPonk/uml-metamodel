"
A ConnectableElementTemplateParameter exposes a ConnectableElement as a formal parameter for a template.
"
Class {
	#name : 'OPUMLConnectableElementTemplateParameter',
	#superclass : 'OPUMLElement',
	#instVars : [
		'parameteredElement'
	],
	#category : 'OpenPonk-UML-Metamodel-StructuredClassifiers',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StructuredClassifiers'
}

{ #category : 'accessing - TemplateParameter' }
OPUMLConnectableElementTemplateParameter >> default [
	^ (sharedGeneralizations at: #TemplateParameter) default
]

{ #category : 'accessing - TemplateParameter' }
OPUMLConnectableElementTemplateParameter >> default: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) default: aParameterableElement
]

{ #category : 'initialization' }
OPUMLConnectableElementTemplateParameter >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TemplateParameter.
	}
]

{ #category : 'initialization' }
OPUMLConnectableElementTemplateParameter >> initializeSharedGeneralizations [
	sharedGeneralizations at: #TemplateParameter put: (OPUMLTemplateParameter newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConnectableElementTemplateParameter put: self.
]

{ #category : 'accessing - TemplateParameter' }
OPUMLConnectableElementTemplateParameter >> ownedDefault [
	^ (sharedGeneralizations at: #TemplateParameter) ownedDefault
]

{ #category : 'accessing - TemplateParameter' }
OPUMLConnectableElementTemplateParameter >> ownedDefault: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) ownedDefault: aParameterableElement
]

{ #category : 'accessing - TemplateParameter' }
OPUMLConnectableElementTemplateParameter >> ownedParameteredElement [
	^ (sharedGeneralizations at: #TemplateParameter) ownedParameteredElement
]

{ #category : 'accessing - TemplateParameter' }
OPUMLConnectableElementTemplateParameter >> ownedParameteredElement: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) ownedParameteredElement: aParameterableElement
]

{ #category : 'accessing' }
OPUMLConnectableElementTemplateParameter >> parameteredElement [
	"The ConnectableElement for this ConnectableElementTemplateParameter."
	^ parameteredElement
]

{ #category : 'accessing' }
OPUMLConnectableElementTemplateParameter >> parameteredElement: aConnectableElement [
	"The ConnectableElement for this ConnectableElementTemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := aConnectableElement.
	OPUMLToOneLink
		on: self identity
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement
]

{ #category : 'accessing - TemplateParameter' }
OPUMLConnectableElementTemplateParameter >> signature [
	^ (sharedGeneralizations at: #TemplateParameter) signature
]

{ #category : 'accessing - TemplateParameter' }
OPUMLConnectableElementTemplateParameter >> signature: aTemplateSignature [
	(sharedGeneralizations at: #TemplateParameter) signature: aTemplateSignature
]
