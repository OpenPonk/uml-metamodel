"
A RedefinableTemplateSignature supports the addition of formal template parameters in a specialization of a template classifier.
"
Class {
	#name : #OPUMLRedefinableTemplateSignature,
	#superclass : #OPUMLElement,
	#instVars : [
		'classifier',
		'extendedSignatures',
		'inheritedParameters'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #accessing }
OPUMLRedefinableTemplateSignature >> classifier [
	"The Classifier that owns this RedefinableTemplateSignature."
	^ classifier
]

{ #category : #accessing }
OPUMLRedefinableTemplateSignature >> classifier: aClassifier [
	"The Classifier that owns this RedefinableTemplateSignature."
	|anOldClassifier|
	anOldClassifier := classifier.
	classifier := aClassifier.
	OPUMLToOneLink
		on: self identity
		thisSelector: #classifier
		otherSelector: #ownedTemplateSignature
		from: anOldClassifier
		to: classifier
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLRedefinableTemplateSignature >> extendedSignatures [
	"The signatures extended by this RedefinableTemplateSignature."
	^ extendedSignatures ifNil: [ extendedSignatures := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLRedefinableTemplateSignature >> extendedSignatures: aRedefinableTemplateSignature [
	"The signatures extended by this RedefinableTemplateSignature."
	extendedSignatures := aRedefinableTemplateSignature
]

{ #category : #'operations - stubs' }
OPUMLRedefinableTemplateSignature >> inheritedParameterStub [
	"Derivation for RedefinableTemplateSignature::/inheritedParameter"
	
	"{OCL} result = (if extendedSignature->isEmpty() then Set{} else extendedSignature.parameter->asSet() endif)"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLRedefinableTemplateSignature >> inheritedParameters [
	"The formal template parameters of the extended signatures."
	^ inheritedParameters ifNil: [ inheritedParameters := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLRedefinableTemplateSignature >> inheritedParameters: aTemplateParameter [
	"The formal template parameters of the extended signatures."
	inheritedParameters := aTemplateParameter
]

{ #category : #initialization }
OPUMLRedefinableTemplateSignature >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableElement.
		sharedGeneralizations at: #TemplateSignature.
	}
]

{ #category : #initialization }
OPUMLRedefinableTemplateSignature >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateSignature put: (OPUMLTemplateSignature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableTemplateSignature put: self.
]

{ #category : #'operations - stubs' }
OPUMLRedefinableTemplateSignature >> isConsistentWithStub [
	"The query isConsistentWith() specifies, for any two RedefinableTemplateSignatures in a context in which redefinition is possible, whether redefinition would be logically consistent. A redefining template signature is always consistent with a redefined template signature, as redefinition only adds new formal parameters."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (redefiningElement.oclIsKindOf(RedefinableTemplateSignature))"
	
	self notYetImplemented

]

{ #category : #'accessing - RedefinableElement' }
OPUMLRedefinableTemplateSignature >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRedefinableTemplateSignature >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - TemplateSignature' }
OPUMLRedefinableTemplateSignature >> ownedParameters [
	^ (sharedGeneralizations at: #TemplateSignature) ownedParameters
]

{ #category : #'accessing - TemplateSignature' }
OPUMLRedefinableTemplateSignature >> ownedParameters: aTemplateParameter [
	(sharedGeneralizations at: #TemplateSignature) ownedParameters: aTemplateParameter
]

{ #category : #'accessing - TemplateSignature' }
OPUMLRedefinableTemplateSignature >> parameters [
	^ (sharedGeneralizations at: #TemplateSignature) parameters
]

{ #category : #'accessing - TemplateSignature' }
OPUMLRedefinableTemplateSignature >> parameters: aTemplateParameter [
	(sharedGeneralizations at: #TemplateSignature) parameters: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRedefinableTemplateSignature >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRedefinableTemplateSignature >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRedefinableTemplateSignature >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLRedefinableTemplateSignature >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - TemplateSignature' }
OPUMLRedefinableTemplateSignature >> template [
	^ (sharedGeneralizations at: #TemplateSignature) template
]

{ #category : #'accessing - TemplateSignature' }
OPUMLRedefinableTemplateSignature >> template: aTemplateableElement [
	(sharedGeneralizations at: #TemplateSignature) template: aTemplateableElement
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLRedefinableTemplateSignature >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
