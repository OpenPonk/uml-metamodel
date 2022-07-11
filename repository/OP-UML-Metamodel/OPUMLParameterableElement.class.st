"
A ParameterableElement is an Element that can be exposed as a formal TemplateParameter for a template, or specified as an actual parameter in a binding of a template.
"
Class {
	#name : #OPUMLParameterableElement,
	#superclass : #OPUMLElement,
	#instVars : [
		'owningTemplateParameter',
		'templateParameter'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #initialization }
OPUMLParameterableElement >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLParameterableElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: self.
]

{ #category : #'operations - stubs' }
OPUMLParameterableElement >> isCompatibleWithStub [
	"The query isCompatibleWith() determines if this ParameterableElement is compatible with the specified ParameterableElement. By default, this ParameterableElement is compatible with another ParameterableElement p if the kind of this ParameterableElement is the same as or a subtype of the kind of p. Subclasses of ParameterableElement should override this operation to specify different compatibility constraints."
	
	"{OCL} result = (self.oclIsKindOf(p.oclType()))"
	
	self notYetImplemented

]

{ #category : #'operations - stubs' }
OPUMLParameterableElement >> isTemplateParameterStub [
	"The query isTemplateParameter() determines if this ParameterableElement is exposed as a formal TemplateParameter."
	
	"{OCL} result = (templateParameter->notEmpty())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLParameterableElement >> owningTemplateParameter [
	"The formal TemplateParameter that owns this ParameterableElement."
	^ owningTemplateParameter
]

{ #category : #accessing }
OPUMLParameterableElement >> owningTemplateParameter: aTemplateParameter [
	"The formal TemplateParameter that owns this ParameterableElement."
	|anOldOwningTemplateParameter|
	anOldOwningTemplateParameter := owningTemplateParameter.
	owningTemplateParameter := aTemplateParameter.
	OPUMLToOneLink
		on: self identity
		thisSelector: #owningTemplateParameter
		otherSelector: #ownedParameteredElement
		from: anOldOwningTemplateParameter
		to: owningTemplateParameter
]

{ #category : #accessing }
OPUMLParameterableElement >> templateParameter [
	"The TemplateParameter that exposes this ParameterableElement as a formal parameter."
	^ templateParameter
]

{ #category : #accessing }
OPUMLParameterableElement >> templateParameter: aTemplateParameter [
	"The TemplateParameter that exposes this ParameterableElement as a formal parameter."
	|anOldTemplateParameter|
	anOldTemplateParameter := templateParameter.
	templateParameter := aTemplateParameter.
	OPUMLToOneLink
		on: self identity
		thisSelector: #templateParameter
		otherSelector: #parameteredElement
		from: anOldTemplateParameter
		to: templateParameter
]
