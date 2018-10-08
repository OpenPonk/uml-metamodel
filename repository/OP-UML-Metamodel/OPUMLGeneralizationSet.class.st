"
A GeneralizationSet is a PackageableElement whose instances represent sets of Generalization relationships.
"
Class {
	#name : #OPUMLGeneralizationSet,
	#superclass : #OPUMLElement,
	#instVars : [
		'powertype',
		'isCovering',
		'generalizations',
		'isDisjoint'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLGeneralizationSet >> generalizations [
	"Designates the instances of Generalization that are members of this GeneralizationSet."
	^ generalizations ifNil: [ generalizations := OPUMLManyToManyLinks on: self identity opposite: #generalizationSets ]
]

{ #category : #accessing }
OPUMLGeneralizationSet >> generalizations: aGeneralization [
	"Designates the instances of Generalization that are members of this GeneralizationSet."
	self generalizations
		removeAll;
		addAll: aGeneralization
]

{ #category : #initialization }
OPUMLGeneralizationSet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #PackageableElement.
	}
]

{ #category : #initialization }
OPUMLGeneralizationSet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #GeneralizationSet put: self.
]

{ #category : #accessing }
OPUMLGeneralizationSet >> isCovering [
	"Indicates (via the associated Generalizations) whether or not the set of specific Classifiers are covering for a particular general classifier. When isCovering is true, every instance of a particular general Classifier is also an instance of at least one of its specific Classifiers for the GeneralizationSet. When isCovering is false, there are one or more instances of the particular general Classifier that are not instances of at least one of its specific Classifiers defined for the GeneralizationSet."
	^ isCovering ifNil: [ isCovering := false ]
]

{ #category : #accessing }
OPUMLGeneralizationSet >> isCovering: aBoolean [
	"Indicates (via the associated Generalizations) whether or not the set of specific Classifiers are covering for a particular general classifier. When isCovering is true, every instance of a particular general Classifier is also an instance of at least one of its specific Classifiers for the GeneralizationSet. When isCovering is false, there are one or more instances of the particular general Classifier that are not instances of at least one of its specific Classifiers defined for the GeneralizationSet."
	isCovering := aBoolean
]

{ #category : #accessing }
OPUMLGeneralizationSet >> isDisjoint [
	"Indicates whether or not the set of specific Classifiers in a Generalization relationship have instance in common. If isDisjoint is true, the specific Classifiers for a particular GeneralizationSet have no members in common; that is, their intersection is empty. If isDisjoint is false, the specific Classifiers in a particular GeneralizationSet have one or more members in common; that is, their intersection is not empty."
	^ isDisjoint ifNil: [ isDisjoint := false ]
]

{ #category : #accessing }
OPUMLGeneralizationSet >> isDisjoint: aBoolean [
	"Indicates whether or not the set of specific Classifiers in a Generalization relationship have instance in common. If isDisjoint is true, the specific Classifiers for a particular GeneralizationSet have no members in common; that is, their intersection is empty. If isDisjoint is false, the specific Classifiers in a particular GeneralizationSet have one or more members in common; that is, their intersection is not empty."
	isDisjoint := aBoolean
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLGeneralizationSet >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLGeneralizationSet >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #accessing }
OPUMLGeneralizationSet >> powertype [
	"Designates the Classifier that is defined as the power type for the associated GeneralizationSet, if there is one."
	^ powertype
]

{ #category : #accessing }
OPUMLGeneralizationSet >> powertype: aClassifier [
	"Designates the Classifier that is defined as the power type for the associated GeneralizationSet, if there is one."
	powertype := OPUMLToOneLink
		on: self identity
		update: #powertypeExtents
		from: powertype
		to: aClassifier
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLGeneralizationSet >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - ParameterableElement' }
OPUMLGeneralizationSet >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLGeneralizationSet >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLGeneralizationSet >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLGeneralizationSet >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
