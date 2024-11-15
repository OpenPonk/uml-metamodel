"
An Enumeration is a DataType whose values are enumerated in the model as EnumerationLiterals.
"
Class {
	#name : 'OPUMLEnumeration',
	#superclass : 'OPUMLElement',
	#instVars : [
		'ownedLiterals'
	],
	#category : 'OpenPonk-UML-Metamodel-SimpleClassifiers',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'SimpleClassifiers'
}

{ #category : 'operations - Classifier' }
OPUMLEnumeration >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : 'operations - Classifier' }
OPUMLEnumeration >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : 'operations - Classifier' }
OPUMLEnumeration >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : 'initialization' }
OPUMLEnumeration >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DataType.
	}
]

{ #category : 'initialization' }
OPUMLEnumeration >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: (OPUMLType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Classifier put: (OPUMLClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DataType put: (OPUMLDataType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Enumeration put: self.
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> isAbstract [
	^ (sharedGeneralizations at: #Classifier) isAbstract
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Classifier) isAbstract: aBoolean
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLEnumeration >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLEnumeration >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - DataType' }
OPUMLEnumeration >> ownedAttributes [
	^ (sharedGeneralizations at: #DataType) ownedAttributes
]

{ #category : 'accessing - DataType' }
OPUMLEnumeration >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #DataType) ownedAttributes: aProperty
]

{ #category : 'accessing' }
OPUMLEnumeration >> ownedLiterals [
	"The ordered set of literals owned by this Enumeration."
	^ ownedLiterals ifNil: [ ownedLiterals := OPUMLToManyLinks on: self identity opposite: #enumeration: ]
]

{ #category : 'accessing' }
OPUMLEnumeration >> ownedLiterals: anEnumerationLiteral [
	"The ordered set of literals owned by this Enumeration."
	self ownedLiterals
		removeAll;
		addAll: anEnumerationLiteral
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - DataType' }
OPUMLEnumeration >> ownedOperations [
	^ (sharedGeneralizations at: #DataType) ownedOperations
]

{ #category : 'accessing - DataType' }
OPUMLEnumeration >> ownedOperations: anOperation [
	(sharedGeneralizations at: #DataType) ownedOperations: anOperation
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : 'accessing - ParameterableElement' }
OPUMLEnumeration >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLEnumeration >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - Type' }
OPUMLEnumeration >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : 'accessing - Type' }
OPUMLEnumeration >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLEnumeration >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'operations - Classifier' }
OPUMLEnumeration >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLEnumeration >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : 'accessing - RedefinableElement' }
OPUMLEnumeration >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLEnumeration >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLEnumeration >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLEnumeration >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : 'accessing - TemplateableElement' }
OPUMLEnumeration >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : 'accessing - TemplateableElement' }
OPUMLEnumeration >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : 'accessing - Classifier' }
OPUMLEnumeration >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : 'accessing - PackageableElement' }
OPUMLEnumeration >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLEnumeration >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
