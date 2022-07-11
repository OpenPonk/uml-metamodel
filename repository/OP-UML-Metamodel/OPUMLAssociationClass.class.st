"
A model element that has both Association and Class properties. An AssociationClass can be seen as an Association that also has Class properties, or as a Class that also has Association properties. It not only connects a set of Classifiers but also defines a set of Features that belong to the Association itself and not to any of the associated Classifiers.
"
Class {
	#name : #OPUMLAssociationClass,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-StructuredClassifiers'
}

{ #category : #'operations - Classifier' }
OPUMLAssociationClass >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : #'operations - Classifier' }
OPUMLAssociationClass >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLAssociationClass >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLAssociationClass >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> endTypes [
	^ (sharedGeneralizations at: #Association) endTypes
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> endTypes: aType [
	(sharedGeneralizations at: #Association) endTypes: aType
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> extensions [
	^ (sharedGeneralizations at: #Class) extensions
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> extensions: anExtension [
	(sharedGeneralizations at: #Class) extensions: anExtension
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : #'operations - Classifier' }
OPUMLAssociationClass >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : #initialization }
OPUMLAssociationClass >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Class.
		sharedGeneralizations at: #Association.
	}
]

{ #category : #initialization }
OPUMLAssociationClass >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: (OPUMLType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Classifier put: (OPUMLClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StructuredClassifier put: (OPUMLStructuredClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #BehavioredClassifier put: (OPUMLBehavioredClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #EncapsulatedClassifier put: (OPUMLEncapsulatedClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Class put: (OPUMLClass newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Association put: (OPUMLAssociation newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #AssociationClass put: self.
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLAssociationClass >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLAssociationClass >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> isAbstract [
	^ (sharedGeneralizations at: #Class) isAbstract
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Class) isAbstract: aBoolean
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> isActive [
	^ (sharedGeneralizations at: #Class) isActive
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> isActive: aBoolean [
	(sharedGeneralizations at: #Class) isActive: aBoolean
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> isDerived [
	^ (sharedGeneralizations at: #Association) isDerived
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> isDerived: aBoolean [
	(sharedGeneralizations at: #Association) isDerived: aBoolean
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociationClass >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociationClass >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> memberEnds [
	^ (sharedGeneralizations at: #Association) memberEnds
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> memberEnds: aProperty [
	(sharedGeneralizations at: #Association) memberEnds: aProperty
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> navigableOwnedEnds [
	^ (sharedGeneralizations at: #Association) navigableOwnedEnds
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> navigableOwnedEnds: aProperty [
	(sharedGeneralizations at: #Association) navigableOwnedEnds: aProperty
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> nestedClassifiers [
	^ (sharedGeneralizations at: #Class) nestedClassifiers
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> nestedClassifiers: aClassifier [
	(sharedGeneralizations at: #Class) nestedClassifiers: aClassifier
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> ownedAttributes [
	^ (sharedGeneralizations at: #Class) ownedAttributes
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Class) ownedAttributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLAssociationClass >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLAssociationClass >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLAssociationClass >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLAssociationClass >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> ownedEnds [
	^ (sharedGeneralizations at: #Association) ownedEnds
]

{ #category : #'accessing - Association' }
OPUMLAssociationClass >> ownedEnds: aProperty [
	(sharedGeneralizations at: #Association) ownedEnds: aProperty
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> ownedOperations [
	^ (sharedGeneralizations at: #Class) ownedOperations
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Class) ownedOperations: anOperation
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLAssociationClass >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLAssociationClass >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> ownedReceptions [
	^ (sharedGeneralizations at: #Class) ownedReceptions
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> ownedReceptions: aReception [
	(sharedGeneralizations at: #Class) ownedReceptions: aReception
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLAssociationClass >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLAssociationClass >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLAssociationClass >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLAssociationClass >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLAssociationClass >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'operations - Classifier' }
OPUMLAssociationClass >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLAssociationClass >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLAssociationClass >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLAssociationClass >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociationClass >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociationClass >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociationClass >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLAssociationClass >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - Relationship' }
OPUMLAssociationClass >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLAssociationClass >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLAssociationClass >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLAssociationClass >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> superClasses [
	^ (sharedGeneralizations at: #Class) superClasses
]

{ #category : #'accessing - Class' }
OPUMLAssociationClass >> superClasses: aClass [
	(sharedGeneralizations at: #Class) superClasses: aClass
]

{ #category : #'accessing - TemplateableElement' }
OPUMLAssociationClass >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLAssociationClass >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : #'accessing - Classifier' }
OPUMLAssociationClass >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLAssociationClass >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLAssociationClass >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
