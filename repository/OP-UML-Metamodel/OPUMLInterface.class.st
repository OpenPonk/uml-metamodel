"
Interfaces declare coherent services that are implemented by BehavioredClassifiers that implement the Interfaces via InterfaceRealizations.
"
Class {
	#name : #OPUMLInterface,
	#superclass : #OPUMLElement,
	#instVars : [
		'redefinedInterfaces',
		'nestedClassifiers',
		'ownedAttributes',
		'protocol',
		'ownedOperations',
		'ownedReceptions'
	],
	#category : 'OP-UML-Metamodel-SimpleClassifiers'
}

{ #category : #'operations - Classifier' }
OPUMLInterface >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : #'operations - Classifier' }
OPUMLInterface >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : #'operations - Classifier' }
OPUMLInterface >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : #initialization }
OPUMLInterface >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Classifier.
	}
]

{ #category : #initialization }
OPUMLInterface >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: (OPUMLType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Classifier put: (OPUMLClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Interface put: self.
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> isAbstract [
	^ (sharedGeneralizations at: #Classifier) isAbstract
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Classifier) isAbstract: aBoolean
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInterface >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInterface >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLInterface >> nestedClassifiers [
	"References all the Classifiers that are defined (nested) within the Interface."
	^ nestedClassifiers ifNil: [ nestedClassifiers := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInterface >> nestedClassifiers: aClassifier [
	"References all the Classifiers that are defined (nested) within the Interface."
	nestedClassifiers := aClassifier
]

{ #category : #accessing }
OPUMLInterface >> ownedAttributes [
	"The attributes (i.e., the Properties) owned by the Interface."
	^ ownedAttributes ifNil: [ ownedAttributes := OPUMLToManyLinks on: self identity opposite: #interface: ]
]

{ #category : #accessing }
OPUMLInterface >> ownedAttributes: aProperty [
	"The attributes (i.e., the Properties) owned by the Interface."
	self ownedAttributes
		removeAll;
		addAll: aProperty
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #accessing }
OPUMLInterface >> ownedOperations [
	"The Operations owned by the Interface."
	^ ownedOperations ifNil: [ ownedOperations := OPUMLToManyLinks on: self identity opposite: #interface: ]
]

{ #category : #accessing }
OPUMLInterface >> ownedOperations: anOperation [
	"The Operations owned by the Interface."
	self ownedOperations
		removeAll;
		addAll: anOperation
]

{ #category : #accessing }
OPUMLInterface >> ownedReceptions [
	"Receptions that objects providing this Interface are willing to accept."
	^ ownedReceptions ifNil: [ ownedReceptions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInterface >> ownedReceptions: aReception [
	"Receptions that objects providing this Interface are willing to accept."
	ownedReceptions := aReception
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInterface >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInterface >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLInterface >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLInterface >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLInterface >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'operations - Classifier' }
OPUMLInterface >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : #accessing }
OPUMLInterface >> protocol [
	"References a ProtocolStateMachine specifying the legal sequences of the invocation of the BehavioralFeatures described in the Interface."
	^ protocol
]

{ #category : #accessing }
OPUMLInterface >> protocol: aProtocolStateMachine [
	"References a ProtocolStateMachine specifying the legal sequences of the invocation of the BehavioralFeatures described in the Interface."
	protocol := aProtocolStateMachine
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLInterface >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInterface >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInterface >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #accessing }
OPUMLInterface >> redefinedInterfaces [
	"References all the Interfaces redefined by this Interface."
	^ redefinedInterfaces ifNil: [ redefinedInterfaces := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInterface >> redefinedInterfaces: anInterface [
	"References all the Interfaces redefined by this Interface."
	redefinedInterfaces := anInterface
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInterface >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLInterface >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : #'accessing - TemplateableElement' }
OPUMLInterface >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLInterface >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : #'accessing - Classifier' }
OPUMLInterface >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLInterface >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLInterface >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
