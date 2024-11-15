"
A Template Signature bundles the set of formal TemplateParameters for a template.
"
Class {
	#name : 'OPUMLTemplateSignature',
	#superclass : 'OPUMLElement',
	#instVars : [
		'parameters',
		'template',
		'ownedParameters'
	],
	#category : 'OpenPonk-UML-Metamodel-CommonStructure',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'CommonStructure'
}

{ #category : 'initialization' }
OPUMLTemplateSignature >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : 'initialization' }
OPUMLTemplateSignature >> initializeSharedGeneralizations [
	sharedGeneralizations at: #TemplateSignature put: self.
]

{ #category : 'accessing' }
OPUMLTemplateSignature >> ownedParameters [
	"The formal parameters that are owned by this TemplateSignature."
	^ ownedParameters ifNil: [ ownedParameters := OPUMLToManyLinks on: self identity opposite: #signature: ]
]

{ #category : 'accessing' }
OPUMLTemplateSignature >> ownedParameters: aTemplateParameter [
	"The formal parameters that are owned by this TemplateSignature."
	self ownedParameters
		removeAll;
		addAll: aTemplateParameter
]

{ #category : 'accessing' }
OPUMLTemplateSignature >> parameters [
	"The ordered set of all formal TemplateParameters for this TemplateSignature."
	^ parameters ifNil: [ parameters := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLTemplateSignature >> parameters: aTemplateParameter [
	"The ordered set of all formal TemplateParameters for this TemplateSignature."
	parameters := aTemplateParameter
]

{ #category : 'accessing' }
OPUMLTemplateSignature >> template [
	"The TemplateableElement that owns this TemplateSignature."
	^ template
]

{ #category : 'accessing' }
OPUMLTemplateSignature >> template: aTemplateableElement [
	"The TemplateableElement that owns this TemplateSignature."
	|anOldTemplate|
	anOldTemplate := template.
	template := aTemplateableElement.
	OPUMLToOneLink
		on: self identity
		thisSelector: #template
		otherSelector: #ownedTemplateSignature
		from: anOldTemplate
		to: template
]
