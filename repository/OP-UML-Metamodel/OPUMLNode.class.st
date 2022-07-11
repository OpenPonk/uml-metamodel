"
A Node is computational resource upon which artifacts may be deployed for execution. Nodes can be interconnected through communication paths to define network structures.
"
Class {
	#name : #OPUMLNode,
	#superclass : #OPUMLElement,
	#instVars : [
		'nestedNodes'
	],
	#category : 'OP-UML-Metamodel-Deployments'
}

{ #category : #'operations - Classifier' }
OPUMLNode >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : #'operations - Classifier' }
OPUMLNode >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLNode >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLNode >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLNode >> deployedElements [
	^ (sharedGeneralizations at: #DeploymentTarget) deployedElements
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLNode >> deployedElements: aPackageableElement [
	(sharedGeneralizations at: #DeploymentTarget) deployedElements: aPackageableElement
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLNode >> deployments [
	^ (sharedGeneralizations at: #DeploymentTarget) deployments
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLNode >> deployments: aDeployment [
	(sharedGeneralizations at: #DeploymentTarget) deployments: aDeployment
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Class' }
OPUMLNode >> extensions [
	^ (sharedGeneralizations at: #Class) extensions
]

{ #category : #'accessing - Class' }
OPUMLNode >> extensions: anExtension [
	(sharedGeneralizations at: #Class) extensions: anExtension
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : #'operations - Classifier' }
OPUMLNode >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : #initialization }
OPUMLNode >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Class.
		sharedGeneralizations at: #DeploymentTarget.
	}
]

{ #category : #initialization }
OPUMLNode >> initializeSharedGeneralizations [
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
	sharedGeneralizations at: #Node put: self.
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLNode >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLNode >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : #'accessing - Class' }
OPUMLNode >> isAbstract [
	^ (sharedGeneralizations at: #Class) isAbstract
]

{ #category : #'accessing - Class' }
OPUMLNode >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Class) isAbstract: aBoolean
]

{ #category : #'accessing - Class' }
OPUMLNode >> isActive [
	^ (sharedGeneralizations at: #Class) isActive
]

{ #category : #'accessing - Class' }
OPUMLNode >> isActive: aBoolean [
	(sharedGeneralizations at: #Class) isActive: aBoolean
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLNode >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLNode >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - Class' }
OPUMLNode >> nestedClassifiers [
	^ (sharedGeneralizations at: #Class) nestedClassifiers
]

{ #category : #'accessing - Class' }
OPUMLNode >> nestedClassifiers: aClassifier [
	(sharedGeneralizations at: #Class) nestedClassifiers: aClassifier
]

{ #category : #accessing }
OPUMLNode >> nestedNodes [
	"The Nodes that are defined (nested) within the Node."
	^ nestedNodes ifNil: [ nestedNodes := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLNode >> nestedNodes: aNode [
	"The Nodes that are defined (nested) within the Node."
	nestedNodes := aNode
]

{ #category : #'accessing - Class' }
OPUMLNode >> ownedAttributes [
	^ (sharedGeneralizations at: #Class) ownedAttributes
]

{ #category : #'accessing - Class' }
OPUMLNode >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Class) ownedAttributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLNode >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLNode >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLNode >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLNode >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Class' }
OPUMLNode >> ownedOperations [
	^ (sharedGeneralizations at: #Class) ownedOperations
]

{ #category : #'accessing - Class' }
OPUMLNode >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Class) ownedOperations: anOperation
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLNode >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLNode >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : #'accessing - Class' }
OPUMLNode >> ownedReceptions [
	^ (sharedGeneralizations at: #Class) ownedReceptions
]

{ #category : #'accessing - Class' }
OPUMLNode >> ownedReceptions: aReception [
	(sharedGeneralizations at: #Class) ownedReceptions: aReception
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLNode >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLNode >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLNode >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLNode >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLNode >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'operations - Classifier' }
OPUMLNode >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLNode >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLNode >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLNode >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLNode >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLNode >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLNode >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLNode >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLNode >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLNode >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : #'accessing - Class' }
OPUMLNode >> superClasses [
	^ (sharedGeneralizations at: #Class) superClasses
]

{ #category : #'accessing - Class' }
OPUMLNode >> superClasses: aClass [
	(sharedGeneralizations at: #Class) superClasses: aClass
]

{ #category : #'accessing - TemplateableElement' }
OPUMLNode >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLNode >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : #'accessing - Classifier' }
OPUMLNode >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLNode >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLNode >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
