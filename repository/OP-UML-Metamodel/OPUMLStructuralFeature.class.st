"
A StructuralFeature is a typed feature of a Classifier that specifies the structure of instances of the Classifier.
"
Class {
	#name : 'OPUMLStructuralFeature',
	#superclass : 'OPUMLElement',
	#instVars : [
		'isReadOnly'
	],
	#category : 'OP-UML-Metamodel-Classification',
	#package : 'OP-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Feature' }
OPUMLStructuralFeature >> featuringClassifier [
	^ (sharedGeneralizations at: #Feature) featuringClassifier
]

{ #category : 'accessing - Feature' }
OPUMLStructuralFeature >> featuringClassifier: aClassifier [
	(sharedGeneralizations at: #Feature) featuringClassifier: aClassifier
]

{ #category : 'initialization' }
OPUMLStructuralFeature >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MultiplicityElement.
		sharedGeneralizations at: #TypedElement.
		sharedGeneralizations at: #Feature.
	}
]

{ #category : 'initialization' }
OPUMLStructuralFeature >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MultiplicityElement put: (OPUMLMultiplicityElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypedElement put: (OPUMLTypedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (OPUMLFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuralFeature put: self.
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuralFeature >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuralFeature >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'operations - MultiplicityElement' }
OPUMLStructuralFeature >> isMultivalued [
	^ (sharedGeneralizations at: #MultiplicityElement) isMultivalued
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> isOrdered [
	^ (sharedGeneralizations at: #MultiplicityElement) isOrdered
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> isOrdered: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isOrdered: aBoolean
]

{ #category : 'accessing' }
OPUMLStructuralFeature >> isReadOnly [
	"If isReadOnly is true, the StructuralFeature may not be written to after initialization."
	^ isReadOnly ifNil: [ isReadOnly := false ]
]

{ #category : 'accessing' }
OPUMLStructuralFeature >> isReadOnly: aBoolean [
	"If isReadOnly is true, the StructuralFeature may not be written to after initialization."
	isReadOnly := aBoolean
]

{ #category : 'accessing - Feature' }
OPUMLStructuralFeature >> isStatic [
	^ (sharedGeneralizations at: #Feature) isStatic
]

{ #category : 'accessing - Feature' }
OPUMLStructuralFeature >> isStatic: aBoolean [
	(sharedGeneralizations at: #Feature) isStatic: aBoolean
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> isUnique [
	^ (sharedGeneralizations at: #MultiplicityElement) isUnique
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> isUnique: aBoolean [
	(sharedGeneralizations at: #MultiplicityElement) isUnique: aBoolean
]

{ #category : 'operations - MultiplicityElement' }
OPUMLStructuralFeature >> lower [
	^ (sharedGeneralizations at: #MultiplicityElement) lower
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> lower: anInteger [
	(sharedGeneralizations at: #MultiplicityElement) lower: anInteger
]

{ #category : 'operations - MultiplicityElement' }
OPUMLStructuralFeature >> lowerBound [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerBound
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> lowerValue [
	^ (sharedGeneralizations at: #MultiplicityElement) lowerValue
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> lowerValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) lowerValue: aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuralFeature >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuralFeature >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuralFeature >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLStructuralFeature >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - TypedElement' }
OPUMLStructuralFeature >> type [
	^ (sharedGeneralizations at: #TypedElement) type
]

{ #category : 'accessing - TypedElement' }
OPUMLStructuralFeature >> type: aType [
	(sharedGeneralizations at: #TypedElement) type: aType
]

{ #category : 'operations - MultiplicityElement' }
OPUMLStructuralFeature >> upper [
	^ (sharedGeneralizations at: #MultiplicityElement) upper
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> upper: anUnlimitedNatural [
	(sharedGeneralizations at: #MultiplicityElement) upper: anUnlimitedNatural
]

{ #category : 'operations - MultiplicityElement' }
OPUMLStructuralFeature >> upperBound [
	^ (sharedGeneralizations at: #MultiplicityElement) upperBound
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> upperValue [
	^ (sharedGeneralizations at: #MultiplicityElement) upperValue
]

{ #category : 'accessing - MultiplicityElement' }
OPUMLStructuralFeature >> upperValue: aValueSpecification [
	(sharedGeneralizations at: #MultiplicityElement) upperValue: aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLStructuralFeature >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
