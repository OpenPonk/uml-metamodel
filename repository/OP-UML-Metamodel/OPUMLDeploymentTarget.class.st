"
A deployment target is the location for a deployed artifact.
"
Class {
	#name : #OPUMLDeploymentTarget,
	#superclass : #OPUMLElement,
	#instVars : [
		'deployedElements',
		'deployments'
	],
	#category : 'OP-UML-Metamodel-Deployments'
}

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'operations - stubs' }
OPUMLDeploymentTarget >> deployedElementStub [
	"Derivation for DeploymentTarget::/deployedElement"
	
	"{OCL} result = (deployment.deployedArtifact->select(oclIsKindOf(Artifact))->collect(oclAsType(Artifact).manifestation)->collect(utilizedElement)->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLDeploymentTarget >> deployedElements [
	"The set of elements that are manifested in an Artifact that is involved in Deployment to a DeploymentTarget."
	^ deployedElements ifNil: [ deployedElements := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLDeploymentTarget >> deployedElements: aPackageableElement [
	"The set of elements that are manifested in an Artifact that is involved in Deployment to a DeploymentTarget."
	deployedElements := aPackageableElement
]

{ #category : #accessing }
OPUMLDeploymentTarget >> deployments [
	"The set of Deployments for a DeploymentTarget."
	^ deployments ifNil: [ deployments := OPUMLToManyLinks on: self identity opposite: #location: ]
]

{ #category : #accessing }
OPUMLDeploymentTarget >> deployments: aDeployment [
	"The set of Deployments for a DeploymentTarget."
	self deployments
		removeAll;
		addAll: aDeployment
]

{ #category : #initialization }
OPUMLDeploymentTarget >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : #initialization }
OPUMLDeploymentTarget >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeploymentTarget put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : #'accessing - NamedElement' }
OPUMLDeploymentTarget >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
