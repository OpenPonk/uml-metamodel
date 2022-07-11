"
A device is a physical computational resource with processing capability upon which artifacts may be deployed for execution. Devices may be complex (i.e., they may consist of other devices).
"
Class {
	#name : #OPUMLDevice,
	#superclass : #OPUMLElement,
	#category : 'OP-UML-Metamodel-Deployments'
}

{ #category : #'operations - Classifier' }
OPUMLDevice >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : #'operations - Classifier' }
OPUMLDevice >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLDevice >> classifierBehavior [
	^ (sharedGeneralizations at: #BehavioredClassifier) classifierBehavior
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLDevice >> classifierBehavior: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) classifierBehavior: aBehavior
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLDevice >> deployedElements [
	^ (sharedGeneralizations at: #DeploymentTarget) deployedElements
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLDevice >> deployedElements: aPackageableElement [
	(sharedGeneralizations at: #DeploymentTarget) deployedElements: aPackageableElement
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLDevice >> deployments [
	^ (sharedGeneralizations at: #DeploymentTarget) deployments
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLDevice >> deployments: aDeployment [
	(sharedGeneralizations at: #DeploymentTarget) deployments: aDeployment
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Class' }
OPUMLDevice >> extensions [
	^ (sharedGeneralizations at: #Class) extensions
]

{ #category : #'accessing - Class' }
OPUMLDevice >> extensions: anExtension [
	(sharedGeneralizations at: #Class) extensions: anExtension
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : #'operations - Classifier' }
OPUMLDevice >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : #initialization }
OPUMLDevice >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Node.
	}
]

{ #category : #initialization }
OPUMLDevice >> initializeSharedGeneralizations [
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
	sharedGeneralizations at: #Device put: self.
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLDevice >> interfaceRealizations [
	^ (sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLDevice >> interfaceRealizations: anInterfaceRealization [
	(sharedGeneralizations at: #BehavioredClassifier) interfaceRealizations: anInterfaceRealization
]

{ #category : #'accessing - Class' }
OPUMLDevice >> isAbstract [
	^ (sharedGeneralizations at: #Class) isAbstract
]

{ #category : #'accessing - Class' }
OPUMLDevice >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Class) isAbstract: aBoolean
]

{ #category : #'accessing - Class' }
OPUMLDevice >> isActive [
	^ (sharedGeneralizations at: #Class) isActive
]

{ #category : #'accessing - Class' }
OPUMLDevice >> isActive: aBoolean [
	(sharedGeneralizations at: #Class) isActive: aBoolean
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : #'accessing - RedefinableElement' }
OPUMLDevice >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : #'accessing - RedefinableElement' }
OPUMLDevice >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - Class' }
OPUMLDevice >> nestedClassifiers [
	^ (sharedGeneralizations at: #Class) nestedClassifiers
]

{ #category : #'accessing - Class' }
OPUMLDevice >> nestedClassifiers: aClassifier [
	(sharedGeneralizations at: #Class) nestedClassifiers: aClassifier
]

{ #category : #'accessing - Node' }
OPUMLDevice >> nestedNodes [
	^ (sharedGeneralizations at: #Node) nestedNodes
]

{ #category : #'accessing - Node' }
OPUMLDevice >> nestedNodes: aNode [
	(sharedGeneralizations at: #Node) nestedNodes: aNode
]

{ #category : #'accessing - Class' }
OPUMLDevice >> ownedAttributes [
	^ (sharedGeneralizations at: #Class) ownedAttributes
]

{ #category : #'accessing - Class' }
OPUMLDevice >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Class) ownedAttributes: aProperty
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLDevice >> ownedBehaviors [
	^ (sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors
]

{ #category : #'accessing - BehavioredClassifier' }
OPUMLDevice >> ownedBehaviors: aBehavior [
	(sharedGeneralizations at: #BehavioredClassifier) ownedBehaviors: aBehavior
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLDevice >> ownedConnectors [
	^ (sharedGeneralizations at: #StructuredClassifier) ownedConnectors
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLDevice >> ownedConnectors: aConnector [
	(sharedGeneralizations at: #StructuredClassifier) ownedConnectors: aConnector
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Class' }
OPUMLDevice >> ownedOperations [
	^ (sharedGeneralizations at: #Class) ownedOperations
]

{ #category : #'accessing - Class' }
OPUMLDevice >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Class) ownedOperations: anOperation
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLDevice >> ownedPorts [
	^ (sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts
]

{ #category : #'accessing - EncapsulatedClassifier' }
OPUMLDevice >> ownedPorts: aPort [
	(sharedGeneralizations at: #EncapsulatedClassifier) ownedPorts: aPort
]

{ #category : #'accessing - Class' }
OPUMLDevice >> ownedReceptions [
	^ (sharedGeneralizations at: #Class) ownedReceptions
]

{ #category : #'accessing - Class' }
OPUMLDevice >> ownedReceptions: aReception [
	(sharedGeneralizations at: #Class) ownedReceptions: aReception
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : #'accessing - ParameterableElement' }
OPUMLDevice >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLDevice >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Type' }
OPUMLDevice >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : #'accessing - Type' }
OPUMLDevice >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLDevice >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'operations - Classifier' }
OPUMLDevice >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLDevice >> parts [
	^ (sharedGeneralizations at: #StructuredClassifier) parts
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLDevice >> parts: aProperty [
	(sharedGeneralizations at: #StructuredClassifier) parts: aProperty
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLDevice >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : #'accessing - RedefinableElement' }
OPUMLDevice >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : #'accessing - RedefinableElement' }
OPUMLDevice >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : #'accessing - RedefinableElement' }
OPUMLDevice >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : #'accessing - RedefinableElement' }
OPUMLDevice >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLDevice >> roles [
	^ (sharedGeneralizations at: #StructuredClassifier) roles
]

{ #category : #'accessing - StructuredClassifier' }
OPUMLDevice >> roles: aConnectableElement [
	(sharedGeneralizations at: #StructuredClassifier) roles: aConnectableElement
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : #'accessing - Class' }
OPUMLDevice >> superClasses [
	^ (sharedGeneralizations at: #Class) superClasses
]

{ #category : #'accessing - Class' }
OPUMLDevice >> superClasses: aClass [
	(sharedGeneralizations at: #Class) superClasses: aClass
]

{ #category : #'accessing - TemplateableElement' }
OPUMLDevice >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLDevice >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : #'accessing - Classifier' }
OPUMLDevice >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : #'accessing - PackageableElement' }
OPUMLDevice >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLDevice >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
