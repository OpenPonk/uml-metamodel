"
A ProtocolStateMachine is always defined in the context of a Classifier. It specifies which BehavioralFeatures of the Classifier can be called in which State and under which conditions, thus specifying the allowed invocation sequences on the Classifier's BehavioralFeatures. A ProtocolStateMachine specifies the possible and permitted Transitions on the instances of its context Classifier, together with the BehavioralFeatures that carry the Transitions. In this manner, an instance lifecycle can be specified for a Classifier, by defining the order in which the BehavioralFeatures can be activated and the States through which an instance progresses during its existence.
"
Class {
	#name : 'OPUMLProtocolStateMachine',
	#superclass : 'OPUMLElement',
	#instVars : [
		'conformances'
	],
	#category : 'OpenPonk-UML-Metamodel-StateMachines',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'StateMachines'
}

{ #category : 'operations - Classifier' }
OPUMLProtocolStateMachine >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : 'operations - Classifier' }
OPUMLProtocolStateMachine >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLProtocolStateMachine >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLProtocolStateMachine >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : 'accessing' }
OPUMLProtocolStateMachine >> conformances [
	"Conformance between ProtocolStateMachine "
	^ conformances ifNil: [ conformances := OPUMLToManyLinks on: self identity opposite: #specificMachine: ]
]

{ #category : 'accessing' }
OPUMLProtocolStateMachine >> conformances: aProtocolConformance [
	"Conformance between ProtocolStateMachine "
	self conformances
		removeAll;
		addAll: aProtocolConformance
]

{ #category : 'accessing - StateMachine' }
OPUMLProtocolStateMachine >> connectionPoints [
	^ (sharedGeneralizations at: #StateMachine) connectionPoints
]

{ #category : 'accessing - StateMachine' }
OPUMLProtocolStateMachine >> connectionPoints: aPseudostate [
	(sharedGeneralizations at: #StateMachine) connectionPoints: aPseudostate
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> context [
	^ (sharedGeneralizations at: #Behavior) context
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> context: aBehavioredClassifier [
	(sharedGeneralizations at: #Behavior) context: aBehavioredClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - StateMachine' }
OPUMLProtocolStateMachine >> extendedStateMachines [
	^ (sharedGeneralizations at: #StateMachine) extendedStateMachines
]

{ #category : 'accessing - StateMachine' }
OPUMLProtocolStateMachine >> extendedStateMachines: aStateMachine [
	(sharedGeneralizations at: #StateMachine) extendedStateMachines: aStateMachine
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> extensions [
	^ (sharedGeneralizations at: #Class) extensions
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> extensions: anExtension [
	(sharedGeneralizations at: #Class) extensions: anExtension
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : 'operations - Classifier' }
OPUMLProtocolStateMachine >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : 'initialization' }
OPUMLProtocolStateMachine >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #StateMachine.
	}
]

{ #category : 'initialization' }
OPUMLProtocolStateMachine >> initializeSharedGeneralizations [
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
	sharedGeneralizations at: #Class put: (OPUMLClass newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Behavior put: (OPUMLBehavior newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #StateMachine put: (OPUMLStateMachine newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ProtocolStateMachine put: self.
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLProtocolStateMachine >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLProtocolStateMachine >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> isAbstract [
	^ (sharedGeneralizations at: #Class) isAbstract
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Class) isAbstract: aBoolean
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> isActive [
	^ (sharedGeneralizations at: #Class) isActive
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> isActive: aBoolean [
	(sharedGeneralizations at: #Class) isActive: aBoolean
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolStateMachine >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolStateMachine >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> isReentrant [
	^ (sharedGeneralizations at: #Behavior) isReentrant
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> isReentrant: aBoolean [
	(sharedGeneralizations at: #Behavior) isReentrant: aBoolean
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> nestedClassifiers [
	^ (sharedGeneralizations at: #Class) nestedClassifiers
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> nestedClassifiers: aClassifier [
	(sharedGeneralizations at: #Class) nestedClassifiers: aClassifier
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> ownedAttributes [
	^ (sharedGeneralizations at: #Class) ownedAttributes
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Class) ownedAttributes: aProperty
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLProtocolStateMachine >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLProtocolStateMachine >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLProtocolStateMachine >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLProtocolStateMachine >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> ownedOperations [
	^ (sharedGeneralizations at: #Class) ownedOperations
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Class) ownedOperations: anOperation
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> ownedParameterSets [
	^ (sharedGeneralizations at: #Behavior) ownedParameterSets
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> ownedParameterSets: aParameterSet [
	(sharedGeneralizations at: #Behavior) ownedParameterSets: aParameterSet
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> ownedParameters [
	^ (sharedGeneralizations at: #Behavior) ownedParameters
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> ownedParameters: aParameter [
	(sharedGeneralizations at: #Behavior) ownedParameters: aParameter
]

{ #category : 'accessing - EncapsulatedClassifier' }
OPUMLProtocolStateMachine >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : 'accessing - EncapsulatedClassifier' }
OPUMLProtocolStateMachine >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> ownedReceptions [
	^ (sharedGeneralizations at: #Class) ownedReceptions
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> ownedReceptions: aReception [
	(sharedGeneralizations at: #Class) ownedReceptions: aReception
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : 'accessing - ParameterableElement' }
OPUMLProtocolStateMachine >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLProtocolStateMachine >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - Type' }
OPUMLProtocolStateMachine >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : 'accessing - Type' }
OPUMLProtocolStateMachine >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLProtocolStateMachine >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'operations - Classifier' }
OPUMLProtocolStateMachine >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLProtocolStateMachine >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLProtocolStateMachine >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> postconditions [
	^ (sharedGeneralizations at: #Behavior) postconditions
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> postconditions: aConstraint [
	(sharedGeneralizations at: #Behavior) postconditions: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> preconditions [
	^ (sharedGeneralizations at: #Behavior) preconditions
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> preconditions: aConstraint [
	(sharedGeneralizations at: #Behavior) preconditions: aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLProtocolStateMachine >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> redefinedBehaviors [
	^ (sharedGeneralizations at: #Behavior) redefinedBehaviors
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> redefinedBehaviors: aBehavior [
	(sharedGeneralizations at: #Behavior) redefinedBehaviors: aBehavior
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolStateMachine >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolStateMachine >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolStateMachine >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLProtocolStateMachine >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - StateMachine' }
OPUMLProtocolStateMachine >> regions [
	^ (sharedGeneralizations at: #StateMachine) regions
]

{ #category : 'accessing - StateMachine' }
OPUMLProtocolStateMachine >> regions: aRegion [
	(sharedGeneralizations at: #StateMachine) regions: aRegion
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLProtocolStateMachine >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLProtocolStateMachine >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> specification [
	^ (sharedGeneralizations at: #Behavior) specification
]

{ #category : 'accessing - Behavior' }
OPUMLProtocolStateMachine >> specification: aBehavioralFeature [
	(sharedGeneralizations at: #Behavior) specification: aBehavioralFeature
]

{ #category : 'accessing - StateMachine' }
OPUMLProtocolStateMachine >> submachineStates [
	^ (sharedGeneralizations at: #StateMachine) submachineStates
]

{ #category : 'accessing - StateMachine' }
OPUMLProtocolStateMachine >> submachineStates: aState [
	(sharedGeneralizations at: #StateMachine) submachineStates: aState
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> superClasses [
	^ (sharedGeneralizations at: #Class) superClasses
]

{ #category : 'accessing - Class' }
OPUMLProtocolStateMachine >> superClasses: aClass [
	(sharedGeneralizations at: #Class) superClasses: aClass
]

{ #category : 'accessing - TemplateableElement' }
OPUMLProtocolStateMachine >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : 'accessing - TemplateableElement' }
OPUMLProtocolStateMachine >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : 'accessing - Classifier' }
OPUMLProtocolStateMachine >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : 'accessing - PackageableElement' }
OPUMLProtocolStateMachine >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLProtocolStateMachine >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
