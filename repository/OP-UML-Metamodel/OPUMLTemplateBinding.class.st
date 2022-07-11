"
A TemplateBinding is a DirectedRelationship between a TemplateableElement and a template. A TemplateBinding specifies the TemplateParameterSubstitutions of actual parameters for the formal parameters of the template.
"
Class {
	#name : #OPUMLTemplateBinding,
	#superclass : #OPUMLElement,
	#instVars : [
		'parameterSubstitutions',
		'signature',
		'boundElement'
	],
	#category : 'OP-UML-Metamodel-CommonStructure'
}

{ #category : #accessing }
OPUMLTemplateBinding >> boundElement [
	"The TemplateableElement that is bound by this TemplateBinding."
	^ boundElement
]

{ #category : #accessing }
OPUMLTemplateBinding >> boundElement: aTemplateableElement [
	"The TemplateableElement that is bound by this TemplateBinding."
	boundElement := OPUMLToOneLink
		on: self identity
		update: #templateBindings
		from: boundElement
		to: aTemplateableElement
]

{ #category : #initialization }
OPUMLTemplateBinding >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
	}
]

{ #category : #initialization }
OPUMLTemplateBinding >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateBinding put: self.
]

{ #category : #accessing }
OPUMLTemplateBinding >> parameterSubstitutions [
	"The TemplateParameterSubstitutions owned by this TemplateBinding."
	^ parameterSubstitutions ifNil: [ parameterSubstitutions := OPUMLToManyLinks on: self identity opposite: #templateBinding: ]
]

{ #category : #accessing }
OPUMLTemplateBinding >> parameterSubstitutions: aTemplateParameterSubstitution [
	"The TemplateParameterSubstitutions owned by this TemplateBinding."
	self parameterSubstitutions
		removeAll;
		addAll: aTemplateParameterSubstitution
]

{ #category : #'accessing - Relationship' }
OPUMLTemplateBinding >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLTemplateBinding >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #accessing }
OPUMLTemplateBinding >> signature [
	"The TemplateSignature for the template that is the target of this TemplateBinding."
	^ signature
]

{ #category : #accessing }
OPUMLTemplateBinding >> signature: aTemplateSignature [
	"The TemplateSignature for the template that is the target of this TemplateBinding."
	signature := aTemplateSignature
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLTemplateBinding >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLTemplateBinding >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLTemplateBinding >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLTemplateBinding >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]
