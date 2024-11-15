"
A RedefinableElement is an element that, when defined in the context of a Classifier, can be redefined more specifically or differently in the context of another Classifier that specializes (directly or indirectly) the context Classifier.
"
Class {
	#name : 'OPUMLRedefinableElement',
	#superclass : 'OPUMLElement',
	#instVars : [
		'redefinedElements',
		'redefinitionContexts',
		'isLeaf'
	],
	#category : 'OpenPonk-UML-Metamodel-Classification',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLRedefinableElement >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : 'initialization' }
OPUMLRedefinableElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: self.
]

{ #category : 'operations - stubs' }
OPUMLRedefinableElement >> isConsistentWithStub [
	"The query isConsistentWith() specifies, for any two RedefinableElements in a context in which redefinition is possible, whether redefinition would be logically consistent. By default, this is false; this operation must be overridden for subclasses of RedefinableElement to define the consistency conditions."
	
	"pre: {OCL} redefiningElement.isRedefinitionContextValid(self)"
	"{OCL} result = (false)"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLRedefinableElement >> isLeaf [
	"Indicates whether it is possible to further redefine a RedefinableElement. If the value is true, then it is not possible to further redefine the RedefinableElement."
	^ isLeaf ifNil: [ isLeaf := false ]
]

{ #category : 'accessing' }
OPUMLRedefinableElement >> isLeaf: aBoolean [
	"Indicates whether it is possible to further redefine a RedefinableElement. If the value is true, then it is not possible to further redefine the RedefinableElement."
	isLeaf := aBoolean
]

{ #category : 'operations - stubs' }
OPUMLRedefinableElement >> isRedefinitionContextValidStub [
	"The query isRedefinitionContextValid() specifies whether the redefinition contexts of this RedefinableElement are properly related to the redefinition contexts of the specified RedefinableElement to allow this element to redefine the other. By default at least one of the redefinition contexts of this element must be a specialization of at least one of the redefinition contexts of the specified element."
	
	"{OCL} result = (redefinitionContext->exists(c | c.allParents()->includesAll(redefinedElement.redefinitionContext)))"
	
	self notYetImplemented

]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing' }
OPUMLRedefinableElement >> redefinedElements [
	"The RedefinableElement that is being redefined by this element."
	^ redefinedElements ifNil: [ redefinedElements := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLRedefinableElement >> redefinedElements: aRedefinableElement [
	"The RedefinableElement that is being redefined by this element."
	redefinedElements := aRedefinableElement
]

{ #category : 'accessing' }
OPUMLRedefinableElement >> redefinitionContexts [
	"The contexts that this element may be redefined from."
	^ redefinitionContexts ifNil: [ redefinitionContexts := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLRedefinableElement >> redefinitionContexts: aClassifier [
	"The contexts that this element may be redefined from."
	redefinitionContexts := aClassifier
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLRedefinableElement >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
