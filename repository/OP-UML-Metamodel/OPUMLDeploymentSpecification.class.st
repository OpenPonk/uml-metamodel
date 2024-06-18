"
A deployment specification specifies a set of properties that determine execution parameters of a component artifact that is deployed on a node. A deployment specification can be aimed at a specific type of container. An artifact that reifies or implements deployment specification properties is a deployment descriptor.
"
Class {
	#name : 'OPUMLDeploymentSpecification',
	#superclass : 'OPUMLElement',
	#instVars : [
		'executionLocation',
		'deploymentLocation',
		'deployment'
	],
	#category : 'OP-UML-Metamodel-Deployments',
	#package : 'OP-UML-Metamodel',
	#tag : 'Deployments'
}

{ #category : 'operations - Classifier' }
OPUMLDeploymentSpecification >> allAttributes [
	^ (sharedGeneralizations at: #Classifier) allAttributes
]

{ #category : 'operations - Classifier' }
OPUMLDeploymentSpecification >> allParents [
	^ (sharedGeneralizations at: #Classifier) allParents
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> attributes [
	^ (sharedGeneralizations at: #Classifier) attributes
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> attributes: aProperty [
	(sharedGeneralizations at: #Classifier) attributes: aProperty
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> collaborationUses [
	^ (sharedGeneralizations at: #Classifier) collaborationUses
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> collaborationUses: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) collaborationUses: aCollaborationUse
]

{ #category : 'accessing' }
OPUMLDeploymentSpecification >> deployment [
	"The deployment with which the DeploymentSpecification is associated."
	^ deployment
]

{ #category : 'accessing' }
OPUMLDeploymentSpecification >> deployment: aDeployment [
	"The deployment with which the DeploymentSpecification is associated."
	deployment := OPUMLToOneLink
		on: self identity
		update: #configurations
		from: deployment
		to: aDeployment
]

{ #category : 'accessing' }
OPUMLDeploymentSpecification >> deploymentLocation [
	"The location where an Artifact is deployed onto a Node. This is typically a 'directory' or 'memory address.'"
	^ deploymentLocation
]

{ #category : 'accessing' }
OPUMLDeploymentSpecification >> deploymentLocation: aString [
	"The location where an Artifact is deployed onto a Node. This is typically a 'directory' or 'memory address.'"
	deploymentLocation := aString
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing' }
OPUMLDeploymentSpecification >> executionLocation [
	"The location where a component Artifact executes. This may be a local or remote location."
	^ executionLocation
]

{ #category : 'accessing' }
OPUMLDeploymentSpecification >> executionLocation: aString [
	"The location where a component Artifact executes. This may be a local or remote location."
	executionLocation := aString
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> features [
	^ (sharedGeneralizations at: #Classifier) features
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> features: aFeature [
	(sharedGeneralizations at: #Classifier) features: aFeature
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> fileName [
	^ (sharedGeneralizations at: #Artifact) fileName
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> fileName: aString [
	(sharedGeneralizations at: #Artifact) fileName: aString
]

{ #category : 'operations - Classifier' }
OPUMLDeploymentSpecification >> general [
	^ (sharedGeneralizations at: #Classifier) general
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> generalizations [
	^ (sharedGeneralizations at: #Classifier) generalizations
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> generalizations: aGeneralization [
	(sharedGeneralizations at: #Classifier) generalizations: aGeneralization
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> generals [
	^ (sharedGeneralizations at: #Classifier) generals
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> generals: aClassifier [
	(sharedGeneralizations at: #Classifier) generals: aClassifier
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> inheritedMembers [
	^ (sharedGeneralizations at: #Classifier) inheritedMembers
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> inheritedMembers: aNamedElement [
	(sharedGeneralizations at: #Classifier) inheritedMembers: aNamedElement
]

{ #category : 'initialization' }
OPUMLDeploymentSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Artifact.
	}
]

{ #category : 'initialization' }
OPUMLDeploymentSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: (OPUMLType newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableElement put: (OPUMLRedefinableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Classifier put: (OPUMLClassifier newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeployedArtifact put: (OPUMLDeployedArtifact newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Artifact put: (OPUMLArtifact newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeploymentSpecification put: self.
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> isAbstract [
	^ (sharedGeneralizations at: #Classifier) isAbstract
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> isAbstract: aBoolean [
	(sharedGeneralizations at: #Classifier) isAbstract: aBoolean
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> isFinalSpecialization [
	^ (sharedGeneralizations at: #Classifier) isFinalSpecialization
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> isFinalSpecialization: aBoolean [
	(sharedGeneralizations at: #Classifier) isFinalSpecialization: aBoolean
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDeploymentSpecification >> isLeaf [
	^ (sharedGeneralizations at: #RedefinableElement) isLeaf
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDeploymentSpecification >> isLeaf: aBoolean [
	(sharedGeneralizations at: #RedefinableElement) isLeaf: aBoolean
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> manifestations [
	^ (sharedGeneralizations at: #Artifact) manifestations
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> manifestations: aManifestation [
	(sharedGeneralizations at: #Artifact) manifestations: aManifestation
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> nestedArtifacts [
	^ (sharedGeneralizations at: #Artifact) nestedArtifacts
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> nestedArtifacts: anArtifact [
	(sharedGeneralizations at: #Artifact) nestedArtifacts: anArtifact
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> ownedAttributes [
	^ (sharedGeneralizations at: #Artifact) ownedAttributes
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> ownedAttributes: aProperty [
	(sharedGeneralizations at: #Artifact) ownedAttributes: aProperty
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> ownedOperations [
	^ (sharedGeneralizations at: #Artifact) ownedOperations
]

{ #category : 'accessing - Artifact' }
OPUMLDeploymentSpecification >> ownedOperations: anOperation [
	(sharedGeneralizations at: #Artifact) ownedOperations: anOperation
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #Classifier) ownedTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> ownedTemplateSignature: aRedefinableTemplateSignature [
	(sharedGeneralizations at: #Classifier) ownedTemplateSignature: aRedefinableTemplateSignature
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> ownedUseCases [
	^ (sharedGeneralizations at: #Classifier) ownedUseCases
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> ownedUseCases: anUseCase [
	(sharedGeneralizations at: #Classifier) ownedUseCases: anUseCase
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDeploymentSpecification >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDeploymentSpecification >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - Type' }
OPUMLDeploymentSpecification >> package [
	^ (sharedGeneralizations at: #Type) package
]

{ #category : 'accessing - Type' }
OPUMLDeploymentSpecification >> package: aPackage [
	(sharedGeneralizations at: #Type) package: aPackage
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLDeploymentSpecification >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'operations - Classifier' }
OPUMLDeploymentSpecification >> parents [
	^ (sharedGeneralizations at: #Classifier) parents
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> powertypeExtents [
	^ (sharedGeneralizations at: #Classifier) powertypeExtents
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> powertypeExtents: aGeneralizationSet [
	(sharedGeneralizations at: #Classifier) powertypeExtents: aGeneralizationSet
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLDeploymentSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> redefinedClassifiers [
	^ (sharedGeneralizations at: #Classifier) redefinedClassifiers
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> redefinedClassifiers: aClassifier [
	(sharedGeneralizations at: #Classifier) redefinedClassifiers: aClassifier
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDeploymentSpecification >> redefinedElements [
	^ (sharedGeneralizations at: #RedefinableElement) redefinedElements
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDeploymentSpecification >> redefinedElements: aRedefinableElement [
	(sharedGeneralizations at: #RedefinableElement) redefinedElements: aRedefinableElement
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDeploymentSpecification >> redefinitionContexts [
	^ (sharedGeneralizations at: #RedefinableElement) redefinitionContexts
]

{ #category : 'accessing - RedefinableElement' }
OPUMLDeploymentSpecification >> redefinitionContexts: aClassifier [
	(sharedGeneralizations at: #RedefinableElement) redefinitionContexts: aClassifier
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> representation [
	^ (sharedGeneralizations at: #Classifier) representation
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> representation: aCollaborationUse [
	(sharedGeneralizations at: #Classifier) representation: aCollaborationUse
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> substitutions [
	^ (sharedGeneralizations at: #Classifier) substitutions
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> substitutions: aSubstitution [
	(sharedGeneralizations at: #Classifier) substitutions: aSubstitution
]

{ #category : 'accessing - TemplateableElement' }
OPUMLDeploymentSpecification >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : 'accessing - TemplateableElement' }
OPUMLDeploymentSpecification >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> templateParameter [
	^ (sharedGeneralizations at: #Classifier) templateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> templateParameter: aClassifierTemplateParameter [
	(sharedGeneralizations at: #Classifier) templateParameter: aClassifierTemplateParameter
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> useCases [
	^ (sharedGeneralizations at: #Classifier) useCases
]

{ #category : 'accessing - Classifier' }
OPUMLDeploymentSpecification >> useCases: anUseCase [
	(sharedGeneralizations at: #Classifier) useCases: anUseCase
]

{ #category : 'accessing - PackageableElement' }
OPUMLDeploymentSpecification >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLDeploymentSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
