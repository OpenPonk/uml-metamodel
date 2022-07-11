"
An EnumerationLiteral is a user-defined data value for an Enumeration.
"
Class {
	#name : #OPUMLEnumerationLiteral,
	#superclass : #OPUMLElement,
	#instVars : [
		'classifier',
		'enumeration'
	],
	#category : 'OP-UML-Metamodel-SimpleClassifiers'
}

{ #category : #accessing }
OPUMLEnumerationLiteral >> classifier [
	"The classifier of this EnumerationLiteral derived to be equal to its Enumeration."
	^ classifier
]

{ #category : #accessing }
OPUMLEnumerationLiteral >> classifier: anEnumeration [
	"The classifier of this EnumerationLiteral derived to be equal to its Enumeration."
	classifier := anEnumeration
]

{ #category : #'operations - stubs' }
OPUMLEnumerationLiteral >> classifierStub [
	"Derivation of Enumeration::/classifier"
	
	"{OCL} result = (enumeration)"
	
	self notYetImplemented

]

{ #category : #'accessing - InstanceSpecification' }
OPUMLEnumerationLiteral >> classifiers [
	^ (sharedGeneralizations at: #InstanceSpecification) classifiers
]

{ #category : #'accessing - InstanceSpecification' }
OPUMLEnumerationLiteral >> classifiers: aClassifier [
	(sharedGeneralizations at: #InstanceSpecification) classifiers: aClassifier
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLEnumerationLiteral >> deployedElements [
	^ (sharedGeneralizations at: #DeploymentTarget) deployedElements
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLEnumerationLiteral >> deployedElements: aPackageableElement [
	(sharedGeneralizations at: #DeploymentTarget) deployedElements: aPackageableElement
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLEnumerationLiteral >> deployments [
	^ (sharedGeneralizations at: #DeploymentTarget) deployments
]

{ #category : #'accessing - DeploymentTarget' }
OPUMLEnumerationLiteral >> deployments: aDeployment [
	(sharedGeneralizations at: #DeploymentTarget) deployments: aDeployment
]

{ #category : #accessing }
OPUMLEnumerationLiteral >> enumeration [
	"The Enumeration that this EnumerationLiteral is a member of."
	^ enumeration
]

{ #category : #accessing }
OPUMLEnumerationLiteral >> enumeration: anEnumeration [
	"The Enumeration that this EnumerationLiteral is a member of."
	enumeration := OPUMLToOneLink
		on: self identity
		update: #ownedLiterals
		from: enumeration
		to: anEnumeration
]

{ #category : #initialization }
OPUMLEnumerationLiteral >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #InstanceSpecification.
	}
]

{ #category : #initialization }
OPUMLEnumerationLiteral >> initializeSharedGeneralizations [
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeploymentTarget put: (OPUMLDeploymentTarget newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DeployedArtifact put: (OPUMLDeployedArtifact newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InstanceSpecification put: (OPUMLInstanceSpecification newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #EnumerationLiteral put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLEnumerationLiteral >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLEnumerationLiteral >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLEnumerationLiteral >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - InstanceSpecification' }
OPUMLEnumerationLiteral >> slots [
	^ (sharedGeneralizations at: #InstanceSpecification) slots
]

{ #category : #'accessing - InstanceSpecification' }
OPUMLEnumerationLiteral >> slots: aSlot [
	(sharedGeneralizations at: #InstanceSpecification) slots: aSlot
]

{ #category : #'accessing - InstanceSpecification' }
OPUMLEnumerationLiteral >> specification [
	^ (sharedGeneralizations at: #InstanceSpecification) specification
]

{ #category : #'accessing - InstanceSpecification' }
OPUMLEnumerationLiteral >> specification: aValueSpecification [
	(sharedGeneralizations at: #InstanceSpecification) specification: aValueSpecification
]

{ #category : #'accessing - ParameterableElement' }
OPUMLEnumerationLiteral >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLEnumerationLiteral >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLEnumerationLiteral >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLEnumerationLiteral >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
