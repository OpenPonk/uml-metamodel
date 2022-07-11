"
An execution environment is a node that offers an execution environment for specific types of components that are deployed on it in the form of executable artifacts.
"
Class {
	#name : #OPUMLExecutionEnvironment,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-Deployments'
}

{ #category : #'operations - Classifier' }
OPUMLExecutionEnvironment >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : #'operations - Classifier' }
OPUMLExecutionEnvironment >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLExecutionEnvironment >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLExecutionEnvironment >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLExecutionEnvironment >> deployedElements [
	^ (sharedGeneralizations at: #DeploymentTarget) deployedElements
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLExecutionEnvironment >> deployedElements: aPackageableElement [
	(sharedGeneralizations at: #DeploymentTarget) deployedElements: aPackageableElement
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLExecutionEnvironment >> deployments [
	^ (sharedGeneralizations at: #DeploymentTarget) deployments
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLExecutionEnvironment >> deployments: aDeployment [
	(sharedGeneralizations at: #DeploymentTarget) deployments: aDeployment
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> extensions [
	^ (sharedGeneralizations at: #Class) extensions
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> extensions: anExtension [
	(sharedGeneralizations at: #Class) extensions: anExtension
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : #'operations - Classifier' }
OPUMLExecutionEnvironment >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : #initialization }
OPUMLExecutionEnvironment >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Node.
	}
]

{ #category : #initialization }
OPUMLExecutionEnvironment >> initializeSharedGeneralizations [
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
	sharedGeneralizations at: #DeploymentTarget put: (OPUMLDeploymentTarget newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Node put: (OPUMLNode newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ExecutionEnvironment put: self.
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLExecutionEnvironment >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLExecutionEnvironment >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> isAbstract [
	^ (sharedGeneralizations at: #Class) isAbstract
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Class) isAbstract: aBoolean
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> isActive [
	^ (sharedGeneralizations at: #Class) isActive
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> isActive: aBoolean [
	(sharedGeneralizations at: #Class) isActive: aBoolean
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExecutionEnvironment >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExecutionEnvironment >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> nestedClassifiers [
	^ (sharedGeneralizations at: #Class) nestedClassifiers
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> nestedClassifiers: aClassifier [
	(sharedGeneralizations at: #Class) nestedClassifiers: aClassifier
]

{ #category : #'accessing - Node' }
OPUMLExecutionEnvironment >> nestedNodes [
	^ (sharedGeneralizations at: #Node) nestedNodes
]

{ #category : #'accessing - Node' }
OPUMLExecutionEnvironment >> nestedNodes: aNode [
	(sharedGeneralizations at: #Node) nestedNodes: aNode
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> ownedAttributes [
	^ (sharedGeneralizations at: #Class) ownedAttributes
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Class) ownedAttributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLExecutionEnvironment >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLExecutionEnvironment >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLExecutionEnvironment >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLExecutionEnvironment >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> ownedOperations [
	^ (sharedGeneralizations at: #Class) ownedOperations
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Class) ownedOperations: anOperation
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLExecutionEnvironment >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLExecutionEnvironment >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> ownedReceptions [
	^ (sharedGeneralizations at: #Class) ownedReceptions
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> ownedReceptions: aReception [
	(sharedGeneralizations at: #Class) ownedReceptions: aReception
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLExecutionEnvironment >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLExecutionEnvironment >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLExecutionEnvironment >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLExecutionEnvironment >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLExecutionEnvironment >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'operations - Classifier' }
OPUMLExecutionEnvironment >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLExecutionEnvironment >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLExecutionEnvironment >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLExecutionEnvironment >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExecutionEnvironment >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExecutionEnvironment >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExecutionEnvironment >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLExecutionEnvironment >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLExecutionEnvironment >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLExecutionEnvironment >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> superClasses [
	^ (sharedGeneralizations at: #Class) superClasses
]

{ #category : #'accessing - Class' }
OPUMLExecutionEnvironment >> superClasses: aClass [
	(sharedGeneralizations at: #Class) superClasses: aClass
]

{ #category : #'accessing - TemplateableElement' }
OPUMLExecutionEnvironment >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLExecutionEnvironment >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : #'accessing - Classifier' }
OPUMLExecutionEnvironment >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLExecutionEnvironment >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLExecutionEnvironment >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
