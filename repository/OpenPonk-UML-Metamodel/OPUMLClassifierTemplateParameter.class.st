"
A ClassifierTemplateParameter exposes a Classifier as a formal template parameter.
"
Class {
	#name : 'OPUMLClassifierTemplateParameter',
	#superclass : 'OPUMLElement',
	#instVars : [
		'allowSubstitutable',
		'parameteredElement',
		'constrainingClassifiers'
	],
	#category : 'OpenPonk-UML-Metamodel-Classification',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing' }
OPUMLClassifierTemplateParameter >> allowSubstitutable [
	"Constrains the required relationship between an actual parameter and the parameteredElement for this formal parameter."
	^ allowSubstitutable ifNil: [ allowSubstitutable := true ]
]

{ #category : 'accessing' }
OPUMLClassifierTemplateParameter >> allowSubstitutable: aBoolean [
	"Constrains the required relationship between an actual parameter and the parameteredElement for this formal parameter."
	allowSubstitutable := aBoolean
]

{ #category : 'accessing' }
OPUMLClassifierTemplateParameter >> constrainingClassifiers [
	"The classifiers that constrain the argument that can be used for the parameter. If the allowSubstitutable attribute is true, then any Classifier that is compatible with this constraining Classifier can be substituted; otherwise, it must be either this Classifier or one of its specializations. If this property is empty, there are no constraints on the Classifier that can be used as an argument."
	^ constrainingClassifiers ifNil: [ constrainingClassifiers := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLClassifierTemplateParameter >> constrainingClassifiers: aClassifier [
	"The classifiers that constrain the argument that can be used for the parameter. If the allowSubstitutable attribute is true, then any Classifier that is compatible with this constraining Classifier can be substituted; otherwise, it must be either this Classifier or one of its specializations. If this property is empty, there are no constraints on the Classifier that can be used as an argument."
	constrainingClassifiers := aClassifier
]

{ #category : 'accessing - TemplateParameter' }
OPUMLClassifierTemplateParameter >> default [
	^ (sharedGeneralizations at: #TemplateParameter) default
]

{ #category : 'accessing - TemplateParameter' }
OPUMLClassifierTemplateParameter >> default: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) default: aParameterableElement
]

{ #category : 'initialization' }
OPUMLClassifierTemplateParameter >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TemplateParameter.
	}
]

{ #category : 'initialization' }
OPUMLClassifierTemplateParameter >> initializeSharedGeneralizations [
	sharedGeneralizations at: #TemplateParameter put: (OPUMLTemplateParameter newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ClassifierTemplateParameter put: self.
]

{ #category : 'accessing - TemplateParameter' }
OPUMLClassifierTemplateParameter >> ownedDefault [
	^ (sharedGeneralizations at: #TemplateParameter) ownedDefault
]

{ #category : 'accessing - TemplateParameter' }
OPUMLClassifierTemplateParameter >> ownedDefault: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) ownedDefault: aParameterableElement
]

{ #category : 'accessing - TemplateParameter' }
OPUMLClassifierTemplateParameter >> ownedParameteredElement [
	^ (sharedGeneralizations at: #TemplateParameter) ownedParameteredElement
]

{ #category : 'accessing - TemplateParameter' }
OPUMLClassifierTemplateParameter >> ownedParameteredElement: aParameterableElement [
	(sharedGeneralizations at: #TemplateParameter) ownedParameteredElement: aParameterableElement
]

{ #category : 'accessing' }
OPUMLClassifierTemplateParameter >> parameteredElement [
	"The Classifier exposed by this ClassifierTemplateParameter."
	^ parameteredElement
]

{ #category : 'accessing' }
OPUMLClassifierTemplateParameter >> parameteredElement: aClassifier [
	"The Classifier exposed by this ClassifierTemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := aClassifier.
	OPUMLToOneLink
		on: self identity
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement
]

{ #category : 'accessing - TemplateParameter' }
OPUMLClassifierTemplateParameter >> signature [
	^ (sharedGeneralizations at: #TemplateParameter) signature
]

{ #category : 'accessing - TemplateParameter' }
OPUMLClassifierTemplateParameter >> signature: aTemplateSignature [
	(sharedGeneralizations at: #TemplateParameter) signature: aTemplateSignature
]
