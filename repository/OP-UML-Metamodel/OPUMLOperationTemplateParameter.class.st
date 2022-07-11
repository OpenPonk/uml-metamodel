"
An OperationTemplateParameter exposes an Operation as a formal parameter for a template.
"
Class {
	#name : #OPUMLOperationTemplateParameter,
	#superclass : #OPUMLElement,
	#instVars : [
		'parameteredElement'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #'accessing - TemplateParameter' }
OPUMLOperationTemplateParameter >> default [
	^ (sharedGeneralizations at: #TemplateParameter) default
]

{ #category : #'accessing - TemplateParameter' }
OPUMLOperationTemplateParameter >> default: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) default: aParameterableElement
]

{ #category : #initialization }
OPUMLOperationTemplateParameter >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TemplateParameter.
	}
]

{ #category : #initialization }
OPUMLOperationTemplateParameter >> initializeSharedGeneralizations [
	sharedGeneralizations at: #TemplateParameter put: (OPUMLTemplateParameter newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OperationTemplateParameter put: self.
]

{ #category : #'accessing - TemplateParameter' }
OPUMLOperationTemplateParameter >> ownedDefault [
	^ (sharedGeneralizations at: #TemplateParameter) ownedDefault
]

{ #category : #'accessing - TemplateParameter' }
OPUMLOperationTemplateParameter >> ownedDefault: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) ownedDefault: aParameterableElement
]

{ #category : #'accessing - TemplateParameter' }
OPUMLOperationTemplateParameter >> ownedParameteredElement [
	^ (sharedGeneralizations at: #TemplateParameter) ownedParameteredElement
]

{ #category : #'accessing - TemplateParameter' }
OPUMLOperationTemplateParameter >> ownedParameteredElement: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) ownedParameteredElement: aParameterableElement
]

{ #category : #accessing }
OPUMLOperationTemplateParameter >> parameteredElement [
	"The Operation exposed by this OperationTemplateParameter."
	^ parameteredElement
]

{ #category : #accessing }
OPUMLOperationTemplateParameter >> parameteredElement: anOperation [
	"The Operation exposed by this OperationTemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := anOperation.
	OPUMLToOneLink
		on: self identity
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement
]

{ #category : #'accessing - TemplateParameter' }
OPUMLOperationTemplateParameter >> signature [
	^ (sharedGeneralizations at: #TemplateParameter) signature
]

{ #category : #'accessing - TemplateParameter' }
OPUMLOperationTemplateParameter >> signature: aTemplateSignature [
	(sharedGeneralizations at: #TemplateParameter) signature: aTemplateSignature
]
