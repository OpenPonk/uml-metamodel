"
A SignalEvent represents the receipt of an asynchronous Signal instance.
"
Class {
	#name : #OPUMLSignalEvent,
	#superclass : #OPUMLElement,
	#instVars : [
		'signal'
	],
	#category : 'OP-UML-Metamodel-CommonBehavior'
}

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #initialization }
OPUMLSignalEvent >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MessageEvent.
	}
]

{ #category : #initialization }
OPUMLSignalEvent >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Event put: (OPUMLEvent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MessageEvent put: (OPUMLMessageEvent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SignalEvent put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLSignalEvent >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLSignalEvent >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLSignalEvent >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLSignalEvent >> signal [
	"The specific Signal that is associated with this SignalEvent."
	^ signal
]

{ #category : #accessing }
OPUMLSignalEvent >> signal: aSignal [
	"The specific Signal that is associated with this SignalEvent."
	signal := aSignal
]

{ #category : #'accessing - ParameterableElement' }
OPUMLSignalEvent >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLSignalEvent >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLSignalEvent >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLSignalEvent >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
