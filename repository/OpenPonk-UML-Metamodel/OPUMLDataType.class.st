"
A DataType is a type whose instances are identified only by their value.
"
Class {
	#name : 'OPUMLDataType',
	#superclass : 'OPUMLElement',
	#instVars : [
		'ownedAttributes',
		'ownedOperations'
	],
	#category : 'OpenPonk-UML-Metamodel-SimpleClassifiers',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'SimpleClassifiers'
}

{ #category : 'operations - Classifier' }
OPUMLDataType >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : 'operations - Classifier' }
OPUMLDataType >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : 'operations - Classifier' }
OPUMLDataType >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : 'initialization' }
OPUMLDataType >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Classifier.
	}
]

{ #category : 'initialization' }
OPUMLDataType >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: (OPUMLType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Classifier put: (OPUMLClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DataType put: self.
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> isAbstract [
	^ (sharedGeneralizations at: #Classifier) isAbstract
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Classifier) isAbstract: aBoolean
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDataType >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDataType >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing' }
OPUMLDataType >> ownedAttributes [
	"The attributes owned by the DataType."
	^ ownedAttributes ifNil: [ ownedAttributes := OPUMLToManyLinks on: self identity opposite: #datatype: ]
]

{ #category : 'accessing' }
OPUMLDataType >> ownedAttributes: aProperty [
	"The attributes owned by the DataType."
	self ownedAttributes
		removeAll;
		addAll: aProperty
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing' }
OPUMLDataType >> ownedOperations [
	"The Operations owned by the DataType."
	^ ownedOperations ifNil: [ ownedOperations := OPUMLToManyLinks on: self identity opposite: #datatype: ]
]

{ #category : 'accessing' }
OPUMLDataType >> ownedOperations: anOperation [
	"The Operations owned by the DataType."
	self ownedOperations
		removeAll;
		addAll: anOperation
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDataType >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDataType >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - Type' }
OPUMLDataType >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : 'accessing - Type' }
OPUMLDataType >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLDataType >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'operations - Classifier' }
OPUMLDataType >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLDataType >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDataType >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDataType >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDataType >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDataType >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : 'accessing - TemplateableElement' }
OPUMLDataType >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : 'accessing - TemplateableElement' }
OPUMLDataType >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : 'accessing - Classifier' }
OPUMLDataType >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : 'accessing - PackageableElement' }
OPUMLDataType >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLDataType >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
