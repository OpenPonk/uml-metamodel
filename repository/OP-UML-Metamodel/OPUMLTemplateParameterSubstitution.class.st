"
A TemplateParameterSubstitution relates the actual parameter to a formal TemplateParameter as part of a template binding.
"
Class {
	#name : 'OPUMLTemplateParameterSubstitution',
	#superclass : 'OPUMLElement',
	#instVars : [
		'formal',
		'ownedActual',
		'templateBinding',
		'actual'
	],
	#category : 'OP-UML-Metamodel-CommonStructure',
	#package : 'OP-UML-Metamodel',
	#tag : 'CommonStructure'
}

{ #category : 'accessing' }
OPUMLTemplateParameterSubstitution >> actual [
	"The ParameterableElement that is the actual parameter for this TemplateParameterSubstitution."
	^ actual
]

{ #category : 'accessing' }
OPUMLTemplateParameterSubstitution >> actual: aParameterableElement [
	"The ParameterableElement that is the actual parameter for this TemplateParameterSubstitution."
	actual := aParameterableElement
]

{ #category : 'accessing' }
OPUMLTemplateParameterSubstitution >> formal [
	"The formal TemplateParameter that is associated with this TemplateParameterSubstitution."
	^ formal
]

{ #category : 'accessing' }
OPUMLTemplateParameterSubstitution >> formal: aTemplateParameter [
	"The formal TemplateParameter that is associated with this TemplateParameterSubstitution."
	formal := aTemplateParameter
]

{ #category : 'initialization' }
OPUMLTemplateParameterSubstitution >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : 'initialization' }
OPUMLTemplateParameterSubstitution >> initializeSharedGeneralizations [
	sharedGeneralizations at: #TemplateParameterSubstitution put: self.
]

{ #category : 'accessing' }
OPUMLTemplateParameterSubstitution >> ownedActual [
	"The ParameterableElement that is owned by this TemplateParameterSubstitution as its actual parameter."
	^ ownedActual
]

{ #category : 'accessing' }
OPUMLTemplateParameterSubstitution >> ownedActual: aParameterableElement [
	"The ParameterableElement that is owned by this TemplateParameterSubstitution as its actual parameter."
	ownedActual := aParameterableElement
]

{ #category : 'accessing' }
OPUMLTemplateParameterSubstitution >> templateBinding [
	"The TemplateBinding that owns this TemplateParameterSubstitution."
	^ templateBinding
]

{ #category : 'accessing' }
OPUMLTemplateParameterSubstitution >> templateBinding: aTemplateBinding [
	"The TemplateBinding that owns this TemplateParameterSubstitution."
	templateBinding := OPUMLToOneLink
		on: self identity
		update: #parameterSubstitutions
		from: templateBinding
		to: aTemplateBinding
]
