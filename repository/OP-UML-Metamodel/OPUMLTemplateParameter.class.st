"
A TemplateParameter exposes a ParameterableElement as a formal parameter of a template.
"
Class {
	#name : #OPUMLTemplateParameter,
	#superclass : #OPUMLElement,
	#instVars : [
		'default',
		'ownedParameteredElement',
		'ownedDefault',
		'parameteredElement',
		'signature'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #accessing }
OPUMLTemplateParameter >> default [
	"The ParameterableElement that is the default for this formal TemplateParameter."
	^ default
]

{ #category : #accessing }
OPUMLTemplateParameter >> default: aParameterableElement [
	"The ParameterableElement that is the default for this formal TemplateParameter."
	default := aParameterableElement
]

{ #category : #initialization }
OPUMLTemplateParameter >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLTemplateParameter >> initializeSharedGeneralizations [
	sharedGeneralizations at: #TemplateParameter put: self.
]

{ #category : #accessing }
OPUMLTemplateParameter >> ownedDefault [
	"The ParameterableElement that is owned by this TemplateParameter for the purpose of providing a default."
	^ ownedDefault
]

{ #category : #accessing }
OPUMLTemplateParameter >> ownedDefault: aParameterableElement [
	"The ParameterableElement that is owned by this TemplateParameter for the purpose of providing a default."
	ownedDefault := aParameterableElement
]

{ #category : #accessing }
OPUMLTemplateParameter >> ownedParameteredElement [
	"The ParameterableElement that is owned by this TemplateParameter for the purpose of exposing it as the parameteredElement."
	^ ownedParameteredElement
]

{ #category : #accessing }
OPUMLTemplateParameter >> ownedParameteredElement: aParameterableElement [
	"The ParameterableElement that is owned by this TemplateParameter for the purpose of exposing it as the parameteredElement."
	|anOldOwnedParameteredElement|
	anOldOwnedParameteredElement := ownedParameteredElement.
	ownedParameteredElement := aParameterableElement.
	OPUMLToOneLink
		on: self identity
		thisSelector: #ownedParameteredElement
		otherSelector: #owningTemplateParameter
		from: anOldOwnedParameteredElement
		to: ownedParameteredElement
]

{ #category : #accessing }
OPUMLTemplateParameter >> parameteredElement [
	"The ParameterableElement exposed by this TemplateParameter."
	^ parameteredElement
]

{ #category : #accessing }
OPUMLTemplateParameter >> parameteredElement: aParameterableElement [
	"The ParameterableElement exposed by this TemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := aParameterableElement.
	OPUMLToOneLink
		on: self identity
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement
]

{ #category : #accessing }
OPUMLTemplateParameter >> signature [
	"The TemplateSignature that owns this TemplateParameter."
	^ signature
]

{ #category : #accessing }
OPUMLTemplateParameter >> signature: aTemplateSignature [
	"The TemplateSignature that owns this TemplateParameter."
	signature := OPUMLToOneLink
		on: self identity
		update: #ownedParameters
		from: signature
		to: aTemplateSignature
]
