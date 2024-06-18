"
An Activity is the specification of parameterized Behavior as the coordinated sequencing of subordinate units.
"
Class {
	#name : 'OPUMLActivity',
	#superclass : 'OPUMLElement',
	#instVars : [
		'isSingleExecution',
		'groups',
		'structuredNodes',
		'nodes',
		'edges',
		'variables',
		'partitions',
		'isReadOnly'
	],
	#category : 'OP-UML-Metamodel-Activities',
	#package : 'OP-UML-Metamodel',
	#tag : 'Activities'
}

{ #category : 'operations - Classifier' }
OPUMLActivity >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : 'operations - Classifier' }
OPUMLActivity >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLActivity >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLActivity >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> context [
	^ (sharedGeneralizations at: #Behavior) context
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> context: aBehavioredClassifier [
	(sharedGeneralizations at: #Behavior) context: aBehavioredClassifier
]

{ #category : 'accessing' }
OPUMLActivity >> edges [
	"ActivityEdges expressing flow between the nodes of the Activity."
	^ edges ifNil: [ edges := OPUMLToManyLinks on: self identity opposite: #activity: ]
]

{ #category : 'accessing' }
OPUMLActivity >> edges: anActivityEdge [
	"ActivityEdges expressing flow between the nodes of the Activity."
	self edges
		removeAll;
		addAll: anActivityEdge
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - Class' }
OPUMLActivity >> extensions [
	^ (sharedGeneralizations at: #Class) extensions
]

{ #category : 'accessing - Class' }
OPUMLActivity >> extensions: anExtension [
	(sharedGeneralizations at: #Class) extensions: anExtension
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : 'operations - Classifier' }
OPUMLActivity >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : 'accessing' }
OPUMLActivity >> groups [
	"Top-level ActivityGroups in the Activity."
	^ groups ifNil: [ groups := OPUMLToManyLinks on: self identity opposite: #inActivity: ]
]

{ #category : 'accessing' }
OPUMLActivity >> groups: anActivityGroup [
	"Top-level ActivityGroups in the Activity."
	self groups
		removeAll;
		addAll: anActivityGroup
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : 'initialization' }
OPUMLActivity >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Behavior.
	}
]

{ #category : 'initialization' }
OPUMLActivity >> initializeSharedGeneralizations [
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
	sharedGeneralizations at: #Activity put: self.
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLActivity >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLActivity >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : 'accessing - Class' }
OPUMLActivity >> isAbstract [
	^ (sharedGeneralizations at: #Class) isAbstract
]

{ #category : 'accessing - Class' }
OPUMLActivity >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Class) isAbstract: aBoolean
]

{ #category : 'accessing - Class' }
OPUMLActivity >> isActive [
	^ (sharedGeneralizations at: #Class) isActive
]

{ #category : 'accessing - Class' }
OPUMLActivity >> isActive: aBoolean [
	(sharedGeneralizations at: #Class) isActive: aBoolean
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivity >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivity >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing' }
OPUMLActivity >> isReadOnly [
	"If true, this Activity must not make any changes to objects. The default is false (an Activity may make nonlocal changes). (This is an assertion, not an executable property. It may be used by an execution engine to optimize model execution. If the assertion is violated by the Activity, then the model is ill-formed.) "
	^ isReadOnly ifNil: [ isReadOnly := false ]
]

{ #category : 'accessing' }
OPUMLActivity >> isReadOnly: aBoolean [
	"If true, this Activity must not make any changes to objects. The default is false (an Activity may make nonlocal changes). (This is an assertion, not an executable property. It may be used by an execution engine to optimize model execution. If the assertion is violated by the Activity, then the model is ill-formed.) "
	isReadOnly := aBoolean
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> isReentrant [
	^ (sharedGeneralizations at: #Behavior) isReentrant
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> isReentrant: aBoolean [
	(sharedGeneralizations at: #Behavior) isReentrant: aBoolean
]

{ #category : 'accessing' }
OPUMLActivity >> isSingleExecution [
	"If true, all invocations of the Activity are handled by the same execution."
	^ isSingleExecution ifNil: [ isSingleExecution := false ]
]

{ #category : 'accessing' }
OPUMLActivity >> isSingleExecution: aBoolean [
	"If true, all invocations of the Activity are handled by the same execution."
	isSingleExecution := aBoolean
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Class' }
OPUMLActivity >> nestedClassifiers [
	^ (sharedGeneralizations at: #Class) nestedClassifiers
]

{ #category : 'accessing - Class' }
OPUMLActivity >> nestedClassifiers: aClassifier [
	(sharedGeneralizations at: #Class) nestedClassifiers: aClassifier
]

{ #category : 'accessing' }
OPUMLActivity >> nodes [
	"ActivityNodes coordinated by the Activity."
	^ nodes ifNil: [ nodes := OPUMLToManyLinks on: self identity opposite: #activity: ]
]

{ #category : 'accessing' }
OPUMLActivity >> nodes: anActivityNode [
	"ActivityNodes coordinated by the Activity."
	self nodes
		removeAll;
		addAll: anActivityNode
]

{ #category : 'accessing - Class' }
OPUMLActivity >> ownedAttributes [
	^ (sharedGeneralizations at: #Class) ownedAttributes
]

{ #category : 'accessing - Class' }
OPUMLActivity >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Class) ownedAttributes: aProperty
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLActivity >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : 'accessing - BehavioredClassifier' }
OPUMLActivity >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLActivity >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLActivity >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Class' }
OPUMLActivity >> ownedOperations [
	^ (sharedGeneralizations at: #Class) ownedOperations
]

{ #category : 'accessing - Class' }
OPUMLActivity >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Class) ownedOperations: anOperation
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> ownedParameterSets [
	^ (sharedGeneralizations at: #Behavior) ownedParameterSets
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> ownedParameterSets: aParameterSet [
	(sharedGeneralizations at: #Behavior) ownedParameterSets: aParameterSet
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> ownedParameters [
	^ (sharedGeneralizations at: #Behavior) ownedParameters
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> ownedParameters: aParameter [
	(sharedGeneralizations at: #Behavior) ownedParameters: aParameter
]

{ #category : 'accessing - EncapsulatedClassifier' }
OPUMLActivity >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : 'accessing - EncapsulatedClassifier' }
OPUMLActivity >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : 'accessing - Class' }
OPUMLActivity >> ownedReceptions [
	^ (sharedGeneralizations at: #Class) ownedReceptions
]

{ #category : 'accessing - Class' }
OPUMLActivity >> ownedReceptions: aReception [
	(sharedGeneralizations at: #Class) ownedReceptions: aReception
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : 'accessing - ParameterableElement' }
OPUMLActivity >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLActivity >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - Type' }
OPUMLActivity >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : 'accessing - Type' }
OPUMLActivity >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLActivity >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'operations - Classifier' }
OPUMLActivity >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : 'accessing' }
OPUMLActivity >> partitions [
	"Top-level ActivityPartitions in the Activity."
	^ partitions ifNil: [ partitions := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLActivity >> partitions: anActivityPartition [
	"Top-level ActivityPartitions in the Activity."
	partitions := anActivityPartition
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLActivity >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLActivity >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> postconditions [
	^ (sharedGeneralizations at: #Behavior) postconditions
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> postconditions: aConstraint [
	(sharedGeneralizations at: #Behavior) postconditions: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> preconditions [
	^ (sharedGeneralizations at: #Behavior) preconditions
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> preconditions: aConstraint [
	(sharedGeneralizations at: #Behavior) preconditions: aConstraint
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLActivity >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> redefinedBehaviors [
	^ (sharedGeneralizations at: #Behavior) redefinedBehaviors
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> redefinedBehaviors: aBehavior [
	(sharedGeneralizations at: #Behavior) redefinedBehaviors: aBehavior
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivity >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivity >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivity >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLActivity >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLActivity >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : 'accessing - StructuredClassifier' }
OPUMLActivity >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> specification [
	^ (sharedGeneralizations at: #Behavior) specification
]

{ #category : 'accessing - Behavior' }
OPUMLActivity >> specification: aBehavioralFeature [
	(sharedGeneralizations at: #Behavior) specification: aBehavioralFeature
]

{ #category : 'accessing' }
OPUMLActivity >> structuredNodes [
	"Top-level StructuredActivityNodes in the Activity."
	^ structuredNodes ifNil: [ structuredNodes := OPUMLToManyLinks on: self identity opposite: #activity: ]
]

{ #category : 'accessing' }
OPUMLActivity >> structuredNodes: aStructuredActivityNode [
	"Top-level StructuredActivityNodes in the Activity."
	self structuredNodes
		removeAll;
		addAll: aStructuredActivityNode
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : 'accessing - Class' }
OPUMLActivity >> superClasses [
	^ (sharedGeneralizations at: #Class) superClasses
]

{ #category : 'accessing - Class' }
OPUMLActivity >> superClasses: aClass [
	(sharedGeneralizations at: #Class) superClasses: aClass
]

{ #category : 'accessing - TemplateableElement' }
OPUMLActivity >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : 'accessing - TemplateableElement' }
OPUMLActivity >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : 'accessing - Classifier' }
OPUMLActivity >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : 'accessing' }
OPUMLActivity >> variables [
	"Top-level Variables defined by the Activity."
	^ variables ifNil: [ variables := OPUMLToManyLinks on: self identity opposite: #activityScope: ]
]

{ #category : 'accessing' }
OPUMLActivity >> variables: aVariable [
	"Top-level Variables defined by the Activity."
	self variables
		removeAll;
		addAll: aVariable
]

{ #category : 'accessing - PackageableElement' }
OPUMLActivity >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLActivity >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
