"
A CallEvent models the receipt by an object of a message invoking a call of an Operation.
"
Class {
	#name : 'OPUMLCallEvent',
	#superclass : 'OPUMLElement',
	#instVars : [
		'operation'
	],
	#category : 'OpenPonk-UML-Metamodel-CommonBehavior',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'CommonBehavior'
}

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLCallEvent >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MessageEvent.
	}
]

{ #category : 'initialization' }
OPUMLCallEvent >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Event put: (OPUMLEvent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEvent put: (OPUMLMessageEvent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #CallEvent put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing' }
OPUMLCallEvent >> operation [
	"Designates the Operation whose invocation raised the CalEvent."
	^ operation
]

{ #category : 'accessing' }
OPUMLCallEvent >> operation: anOperation [
	"Designates the Operation whose invocation raised the CalEvent."
	operation := anOperation
]

{ #category : 'accessing - ParameterableElement' }
OPUMLCallEvent >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLCallEvent >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLCallEvent >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ParameterableElement' }
OPUMLCallEvent >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLCallEvent >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLCallEvent >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLCallEvent >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
