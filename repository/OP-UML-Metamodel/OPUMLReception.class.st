"
A Reception is a declaration stating that a Classifier is prepared to react to the receipt of a Signal.
"
Class {
	#name : 'OPUMLReception',
	#superclass : 'OPUMLElement',
	#instVars : [
		'signal'
	],
	#category : 'OP-UML-Metamodel-SimpleClassifiers',
	#package : 'OP-UML-Metamodel',
	#tag : 'SimpleClassifiers'
}

{ #category : 'accessing - NamedElement' }
OPUMLReception >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> concurrency [
	^ (sharedGeneralizations at: #BehavioralFeature) concurrency
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> concurrency: aCallConcurrencyKind [
	(sharedGeneralizations at: #BehavioralFeature) concurrency: aCallConcurrencyKind
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - Feature' }
OPUMLReception >> featuringClassifier [
	^ (sharedGeneralizations at: #Feature) featuringClassifier
]

{ #category : 'accessing - Feature' }
OPUMLReception >> featuringClassifier: aClassifier [
	(sharedGeneralizations at: #Feature) featuringClassifier: aClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'initialization' }
OPUMLReception >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #BehavioralFeature.
	}
]

{ #category : 'initialization' }
OPUMLReception >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (OPUMLFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BehavioralFeature put: (OPUMLBehavioralFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Reception put: self.
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> isAbstract [
	^ (sharedGeneralizations at: #BehavioralFeature) isAbstract
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> isAbstract: aBoolean [
	(sharedGeneralizations at: #BehavioralFeature) isAbstract: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReception >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReception >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Feature' }
OPUMLReception >> isStatic [
	^ (sharedGeneralizations at: #Feature) isStatic
]

{ #category : 'accessing - Feature' }
OPUMLReception >> isStatic: aBoolean [
	(sharedGeneralizations at: #Feature) isStatic: aBoolean
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> methods [
	^ (sharedGeneralizations at: #BehavioralFeature) methods
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> methods: aBehavior [
	(sharedGeneralizations at: #BehavioralFeature) methods: aBehavior
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> ownedParameterSets [
	^ (sharedGeneralizations at: #BehavioralFeature) ownedParameterSets
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> ownedParameterSets: aParameterSet [
	(sharedGeneralizations at: #BehavioralFeature) ownedParameterSets: aParameterSet
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> ownedParameters [
	^ (sharedGeneralizations at: #BehavioralFeature) ownedParameters
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> ownedParameters: aParameter [
	(sharedGeneralizations at: #BehavioralFeature) ownedParameters: aParameter
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLReception >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> raisedExceptions [
	^ (sharedGeneralizations at: #BehavioralFeature) raisedExceptions
]

{ #category : 'accessing - BehavioralFeature' }
OPUMLReception >> raisedExceptions: aType [
	(sharedGeneralizations at: #BehavioralFeature) raisedExceptions: aType
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReception >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReception >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReception >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLReception >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing' }
OPUMLReception >> signal [
	"The Signal that this Reception handles."
	^ signal
]

{ #category : 'accessing' }
OPUMLReception >> signal: aSignal [
	"The Signal that this Reception handles."
	signal := aSignal
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLReception >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
