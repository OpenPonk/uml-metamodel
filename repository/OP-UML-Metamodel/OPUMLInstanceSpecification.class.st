"
An InstanceSpecification is a model element that represents an instance in a modeled system. An InstanceSpecification can act as a DeploymentTarget in a Deployment relationship, in the case that it represents an instance of a Node. It can also act as a DeployedArtifact, if it represents an instance of an Artifact.
"
Class {
	#name : #OPUMLInstanceSpecification,
	#superclass : #OPUMLElement,
	#instVars : [
		'slots',
		'classifiers',
		'specification'
	],
	#category : 'OP-UML-Metamodel-Classification'
}

{ #category : #accessing }
OPUMLInstanceSpecification >> classifiers [
	"The Classifier or Classifiers of the represented instance. If multiple Classifiers are specified, the instance is classified by all of them."
	^ classifiers ifNil: [ classifiers := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInstanceSpecification >> classifiers: aClassifier [
	"The Classifier or Classifiers of the represented instance. If multiple Classifiers are specified, the instance is classified by all of them."
	classifiers := aClassifier
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLInstanceSpecification >> deployedElements [
	^ (sharedGeneralizations at: #DeploymentTarget) deployedElements
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLInstanceSpecification >> deployedElements: aPackageableElement [
	(sharedGeneralizations at: #DeploymentTarget) deployedElements: aPackageableElement
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLInstanceSpecification >> deployments [
	^ (sharedGeneralizations at: #DeploymentTarget) deployments
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLInstanceSpecification >> deployments: aDeployment [
	(sharedGeneralizations at: #DeploymentTarget) deployments: aDeployment
]

{ #category : #initialization }
OPUMLInstanceSpecification >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DeploymentTarget.
		sharedGeneralizations at: #PackageableElement.
		sharedGeneralizations at: #DeployedArtifact.
	}
]

{ #category : #initialization }
OPUMLInstanceSpecification >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeploymentTarget put: (OPUMLDeploymentTarget newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeployedArtifact put: (OPUMLDeployedArtifact newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InstanceSpecification put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInstanceSpecification >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInstanceSpecification >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLInstanceSpecification >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLInstanceSpecification >> slots [
	"A Slot giving the value or values of a StructuralFeature of the instance. An InstanceSpecification can have one Slot per StructuralFeature of its Classifiers, including inherited features. It is not necessary to model a Slot for every StructuralFeature, in which case the InstanceSpecification is a partial description."
	^ slots ifNil: [ slots := OPUMLToManyLinks on: self identity opposite: #owningInstance: ]
]

{ #category : #accessing }
OPUMLInstanceSpecification >> slots: aSlot [
	"A Slot giving the value or values of a StructuralFeature of the instance. An InstanceSpecification can have one Slot per StructuralFeature of its Classifiers, including inherited features. It is not necessary to model a Slot for every StructuralFeature, in which case the InstanceSpecification is a partial description."
	self slots
		removeAll;
		addAll: aSlot
]

{ #category : #accessing }
OPUMLInstanceSpecification >> specification [
	"A specification of how to compute, derive, or construct the instance."
	^ specification
]

{ #category : #accessing }
OPUMLInstanceSpecification >> specification: aValueSpecification [
	"A specification of how to compute, derive, or construct the instance."
	specification := aValueSpecification
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInstanceSpecification >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInstanceSpecification >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLInstanceSpecification >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLInstanceSpecification >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
