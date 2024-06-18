"
A deployment is the allocation of an artifact or artifact instance to a deployment target.
A component deployment is the deployment of one or more artifacts or artifact instances to a deployment target, optionally parameterized by a deployment specification. Examples are executables and configuration files.
"
Class {
	#name : 'OPUMLDeployment',
	#superclass : 'OPUMLElement',
	#instVars : [
		'deployedArtifacts',
		'configurations',
		'location'
	],
	#category : 'OP-UML-Metamodel-Deployments',
	#package : 'OP-UML-Metamodel',
	#tag : 'Deployments'
}

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Dependency' }
OPUMLDeployment >> clients [
	^ (sharedGeneralizations at: #Dependency) clients
]

{ #category : 'accessing - Dependency' }
OPUMLDeployment >> clients: aNamedElement [
	(sharedGeneralizations at: #Dependency) clients: aNamedElement
]

{ #category : 'accessing' }
OPUMLDeployment >> configurations [
	"The specification of properties that parameterize the deployment and execution of one or more Artifacts."
	^ configurations ifNil: [ configurations := OPUMLToManyLinks on: self identity opposite: #deployment: ]
]

{ #category : 'accessing' }
OPUMLDeployment >> configurations: aDeploymentSpecification [
	"The specification of properties that parameterize the deployment and execution of one or more Artifacts."
	self configurations
		removeAll;
		addAll: aDeploymentSpecification
]

{ #category : 'accessing' }
OPUMLDeployment >> deployedArtifacts [
	"The Artifacts that are deployed onto a Node. This association specializes the supplier association."
	^ deployedArtifacts ifNil: [ deployedArtifacts := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLDeployment >> deployedArtifacts: aDeployedArtifact [
	"The Artifacts that are deployed onto a Node. This association specializes the supplier association."
	deployedArtifacts := aDeployedArtifact
]

{ #category : 'initialization' }
OPUMLDeployment >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Dependency.
	}
]

{ #category : 'initialization' }
OPUMLDeployment >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Dependency put: (OPUMLDependency newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Deployment put: self.
]

{ #category : 'accessing' }
OPUMLDeployment >> location [
	"The DeployedTarget which is the target of a Deployment."
	^ location
]

{ #category : 'accessing' }
OPUMLDeployment >> location: aDeploymentTarget [
	"The DeployedTarget which is the target of a Deployment."
	location := OPUMLToOneLink
		on: self identity
		update: #deployments
		from: location
		to: aDeploymentTarget
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDeployment >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDeployment >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLDeployment >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Relationship' }
OPUMLDeployment >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLDeployment >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLDeployment >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLDeployment >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing - Dependency' }
OPUMLDeployment >> suppliers [
	^ (sharedGeneralizations at: #Dependency) suppliers
]

{ #category : 'accessing - Dependency' }
OPUMLDeployment >> suppliers: aNamedElement [
	(sharedGeneralizations at: #Dependency) suppliers: aNamedElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLDeployment >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLDeployment >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDeployment >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLDeployment >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLDeployment >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLDeployment >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
