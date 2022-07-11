"
A link is a tuple of values that refer to typed objects.  An Association classifies a set of links, each of which is an instance of the Association.  Each value in the link refers to an instance of the type of the corresponding end of the Association.

"
Class {
	#name : #OPUMLAssociation,
	#superclass : #OPUMLElement,
	#instVars : [
		'ownedEnds',
		'endTypes',
		'isDerived',
		'memberEnds',
		'navigableOwnedEnds'
	],
	#category : 'OP-UML-Metamodel-StructuredClassifiers'
}

{ #category : #'operations - Classifier' }
OPUMLAssociation >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : #'operations - Classifier' }
OPUMLAssociation >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'operations - stubs' }
OPUMLAssociation >> endTypeStub [
	"endType is derived from the types of the member ends."
	
	"{OCL} result = (memberEnd->collect(type)->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLAssociation >> endTypes [
	"The Classifiers that are used as types of the ends of the Association."
	^ endTypes ifNil: [ endTypes := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLAssociation >> endTypes: aType [
	"The Classifiers that are used as types of the ends of the Association."
	endTypes := aType
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : #'operations - Classifier' }
OPUMLAssociation >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : #initialization }
OPUMLAssociation >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Relationship.
		sharedGeneralizations at: #Classifier.
	}
]

{ #category : #initialization }
OPUMLAssociation >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: (OPUMLType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Classifier put: (OPUMLClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Association put: self.
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> isAbstract [
	^ (sharedGeneralizations at: #Classifier) isAbstract
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Classifier) isAbstract: aBoolean
]

{ #category : #accessing }
OPUMLAssociation >> isDerived [
	"Specifies whether the Association is derived from other model elements such as other Associations."
	^ isDerived ifNil: [ isDerived := false ]
]

{ #category : #accessing }
OPUMLAssociation >> isDerived: aBoolean [
	"Specifies whether the Association is derived from other model elements such as other Associations."
	isDerived := aBoolean
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociation >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociation >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #accessing }
OPUMLAssociation >> memberEnds [
	"Each end represents participation of instances of the Classifier connected to the end in links of the Association."
	^ memberEnds ifNil: [ memberEnds := OPUMLToManyLinks on: self identity opposite: #association: ]
]

{ #category : #accessing }
OPUMLAssociation >> memberEnds: aProperty [
	"Each end represents participation of instances of the Classifier connected to the end in links of the Association."
	self memberEnds
		removeAll;
		addAll: aProperty
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLAssociation >> navigableOwnedEnds [
	"The navigable ends that are owned by the Association itself."
	^ navigableOwnedEnds ifNil: [ navigableOwnedEnds := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLAssociation >> navigableOwnedEnds: aProperty [
	"The navigable ends that are owned by the Association itself."
	navigableOwnedEnds := aProperty
]

{ #category : #accessing }
OPUMLAssociation >> ownedEnds [
	"The ends that are owned by the Association itself."
	^ ownedEnds ifNil: [ ownedEnds := OPUMLToManyLinks on: self identity opposite: #owningAssociation: ]
]

{ #category : #accessing }
OPUMLAssociation >> ownedEnds: aProperty [
	"The ends that are owned by the Association itself."
	self ownedEnds
		removeAll;
		addAll: aProperty
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLAssociation >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLAssociation >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLAssociation >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLAssociation >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLAssociation >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'operations - Classifier' }
OPUMLAssociation >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociation >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociation >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociation >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociation >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociation >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - Relationship' }
OPUMLAssociation >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLAssociation >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : #'accessing - TemplateableElement' }
OPUMLAssociation >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLAssociation >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : #'accessing - Classifier' }
OPUMLAssociation >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLAssociation >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLAssociation >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
