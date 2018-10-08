"
A Feature declares a behavioral or structural characteristic of Classifiers.
"
Class {
	#name : #OPUMLFeature,
	#superclass : #OPUMLElement,
	#instVars : [
		'featuringClassifier',
		'isStatic'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLFeature >> featuringClassifier [
	"The Classifiers that have this Feature as a feature."
	^ featuringClassifier
]

{ #category : #accessing }
OPUMLFeature >> featuringClassifier: aClassifier [
	"The Classifiers that have this Feature as a feature."
	featuringClassifier := OPUMLToOneLink
		on: self identity
		update: #features
		from: featuringClassifier
		to: aClassifier
]

{ #category : #initialization }
OPUMLFeature >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableElement.
	}
]

{ #category : #initialization }
OPUMLFeature >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: self.
]

{ #category : #'accessing - RedefinableElement' }
OPUMLFeature >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLFeature >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #accessing }
OPUMLFeature >> isStatic [
	"Specifies whether this Feature characterizes individual instances classified by the Classifier (false) or the Classifier itself (true)."
	^ isStatic ifNil: [ isStatic := false ]
]

{ #category : #accessing }
OPUMLFeature >> isStatic: aBoolean [
	"Specifies whether this Feature characterizes individual instances classified by the Classifier (false) or the Classifier itself (true)."
	isStatic := aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - RedefinableElement' }
OPUMLFeature >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLFeature >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLFeature >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLFeature >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLFeature >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
