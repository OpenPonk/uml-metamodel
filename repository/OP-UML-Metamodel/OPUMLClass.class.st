"
A Class classifies a set of objects and specifies the features that characterize the structure and behavior of those objects.  A Class may have an internal structure and Ports.

"
Class {
	#name : #OPUMLClass,
	#superclass : #OPUMLElement,
	#instVars : [
		'isActive',
		'extensions',
		'isAbstract',
		'nestedClassifiers',
		'superClasses',
		'ownedAttributes',
		'ownedOperations',
		'ownedReceptions'
	],
	#category : 'OP-UML-Metamodel-StructuredClassifiers'
}

{ #category : #'operations - Classifier' }
OPUMLClass >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : #'operations - Classifier' }
OPUMLClass >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLClass >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLClass >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'operations - stubs' }
OPUMLClass >> extensionStub [
	"Derivation for Class::/extension : Extension"
	
	"{OCL} result = (Extension.allInstances()->select(ext | 
  let endTypes : Sequence(Classifier) = ext.memberEnd->collect(type.oclAsType(Classifier)) in
  endTypes->includes(self) or endTypes.allParents()->includes(self) ))"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLClass >> extensions [
	"This property is used when the Class is acting as a metaclass. It references the Extensions that specify additional properties of the metaclass. The property is derived from the Extensions whose memberEnds are typed by the Class."
	^ extensions ifNil: [ extensions := OPUMLToManyLinks on: self identity opposite: #metaclass: ]
]

{ #category : #accessing }
OPUMLClass >> extensions: anExtension [
	"This property is used when the Class is acting as a metaclass. It references the Extensions that specify additional properties of the metaclass. The property is derived from the Extensions whose memberEnds are typed by the Class."
	self extensions
		removeAll;
		addAll: anExtension
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : #'operations - Classifier' }
OPUMLClass >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : #initialization }
OPUMLClass >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #BehavioredClassifier.
		sharedGeneralizations at: #EncapsulatedClassifier.
	}
]

{ #category : #initialization }
OPUMLClass >> initializeSharedGeneralizations [
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
	sharedGeneralizations at: #Class put: self.
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLClass >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLClass >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : #accessing }
OPUMLClass >> isAbstract [
	"If true, the Class does not provide a complete declaration and cannot be instantiated. An abstract Class is typically used as a target of Associations or Generalizations."
	^ isAbstract ifNil: [ isAbstract := false ]
]

{ #category : #accessing }
OPUMLClass >> isAbstract: aBoolean [
	"If true, the Class does not provide a complete declaration and cannot be instantiated. An abstract Class is typically used as a target of Associations or Generalizations."
	isAbstract := aBoolean
]

{ #category : #accessing }
OPUMLClass >> isActive [
	"Determines whether an object specified by this Class is active or not. If true, then the owning Class is referred to as an active Class. If false, then such a Class is referred to as a passive Class."
	^ isActive ifNil: [ isActive := false ]
]

{ #category : #accessing }
OPUMLClass >> isActive: aBoolean [
	"Determines whether an object specified by this Class is active or not. If true, then the owning Class is referred to as an active Class. If false, then such a Class is referred to as a passive Class."
	isActive := aBoolean
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClass >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClass >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #accessing }
OPUMLClass >> nestedClassifiers [
	"The Classifiers owned by the Class that are not ownedBehaviors."
	^ nestedClassifiers ifNil: [ nestedClassifiers := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClass >> nestedClassifiers: aClassifier [
	"The Classifiers owned by the Class that are not ownedBehaviors."
	nestedClassifiers := aClassifier
]

{ #category : #accessing }
OPUMLClass >> ownedAttributes [
	"The attributes (i.e., the Properties) owned by the Class."
	^ ownedAttributes ifNil: [ ownedAttributes := OPUMLToManyLinks on: self identity opposite: #owningClass: ]
]

{ #category : #accessing }
OPUMLClass >> ownedAttributes: aProperty [
	"The attributes (i.e., the Properties) owned by the Class."
	self ownedAttributes
		removeAll;
		addAll: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLClass >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLClass >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLClass >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLClass >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #accessing }
OPUMLClass >> ownedOperations [
	"The Operations owned by the Class."
	^ ownedOperations ifNil: [ ownedOperations := OPUMLToManyLinks on: self identity opposite: #owningClass: ]
]

{ #category : #accessing }
OPUMLClass >> ownedOperations: anOperation [
	"The Operations owned by the Class."
	self ownedOperations
		removeAll;
		addAll: anOperation
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLClass >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLClass >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : #accessing }
OPUMLClass >> ownedReceptions [
	"The Receptions owned by the Class."
	^ ownedReceptions ifNil: [ ownedReceptions := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClass >> ownedReceptions: aReception [
	"The Receptions owned by the Class."
	ownedReceptions := aReception
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLClass >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLClass >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLClass >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLClass >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLClass >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'operations - Classifier' }
OPUMLClass >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLClass >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLClass >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLClass >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClass >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClass >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClass >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLClass >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLClass >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLClass >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : #'operations - stubs' }
OPUMLClass >> superClassStub [
	"Derivation for Class::/superClass : Class"
	
	"{OCL} result = (self.general()->select(oclIsKindOf(Class))->collect(oclAsType(Class))->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLClass >> superClasses [
	"The superclasses of a Class, derived from its Generalizations."
	^ superClasses ifNil: [ superClasses := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLClass >> superClasses: aClass [
	"The superclasses of a Class, derived from its Generalizations."
	superClasses := aClass
]

{ #category : #'accessing - TemplateableElement' }
OPUMLClass >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLClass >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : #'accessing - Classifier' }
OPUMLClass >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLClass >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLClass >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
