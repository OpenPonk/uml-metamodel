"
A TemplateableElement is an Element that can optionally be defined as a template and bound to other templates.
"
Class {
	#name : #OPUMLTemplateableElement,
	#superclass : #OPUMLElement,
	#instVars : [
		'ownedTemplateSignature',
		'templateBindings'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #initialization }
OPUMLTemplateableElement >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
OPUMLTemplateableElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #TemplateableElement put: self.
]

{ #category : #'operations - stubs' }
OPUMLTemplateableElement >> isTemplateStub [
	"The query isTemplate() returns whether this TemplateableElement is actually a template."
	
	"{OCL} result = (ownedTemplateSignature <> null)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLTemplateableElement >> ownedTemplateSignature [
	"The optional TemplateSignature specifying the formal TemplateParameters for this TemplateableElement. If a TemplateableElement has a TemplateSignature, then it is a template."
	^ ownedTemplateSignature
]

{ #category : #accessing }
OPUMLTemplateableElement >> ownedTemplateSignature: aTemplateSignature [
	"The optional TemplateSignature specifying the formal TemplateParameters for this TemplateableElement. If a TemplateableElement has a TemplateSignature, then it is a template."
	|anOldOwnedTemplateSignature|
	anOldOwnedTemplateSignature := ownedTemplateSignature.
	ownedTemplateSignature := aTemplateSignature.
	OPUMLToOneLink
		on: self identity
		thisSelector: #ownedTemplateSignature
		otherSelector: #template
		from: anOldOwnedTemplateSignature
		to: ownedTemplateSignature
]

{ #category : #'operations - stubs' }
OPUMLTemplateableElement >> parameterableElementsStub [
	"The query parameterableElements() returns the set of ParameterableElements that may be used as the parameteredElements for a TemplateParameter of this TemplateableElement. By default, this set includes all the ownedElements. Subclasses may override this operation if they choose to restrict the set of ParameterableElements."
	
	"{OCL} result = (self.allOwnedElements()->select(oclIsKindOf(ParameterableElement)).oclAsType(ParameterableElement)->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLTemplateableElement >> templateBindings [
	"The optional TemplateBindings from this TemplateableElement to one or more templates."
	^ templateBindings ifNil: [ templateBindings := OPUMLToManyLinks on: self identity opposite: #boundElement: ]
]

{ #category : #accessing }
OPUMLTemplateableElement >> templateBindings: aTemplateBinding [
	"The optional TemplateBindings from this TemplateableElement to one or more templates."
	self templateBindings
		removeAll;
		addAll: aTemplateBinding
]
