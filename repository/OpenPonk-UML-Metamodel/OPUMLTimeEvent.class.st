"
A TimeEvent is an Event that occurs at a specific point in time.
"
Class {
	#name : 'OPUMLTimeEvent',
	#superclass : 'OPUMLElement',
	#instVars : [
		'when',
		'isRelative'
	],
	#category : 'OpenPonk-UML-Metamodel-CommonBehavior',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'CommonBehavior'
}

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLTimeEvent >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Event.
	}
]

{ #category : 'initialization' }
OPUMLTimeEvent >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Event put: (OPUMLEvent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TimeEvent put: self.
]

{ #category : 'accessing' }
OPUMLTimeEvent >> isRelative [
	"Specifies whether the TimeEvent is specified as an absolute or relative time."
	^ isRelative ifNil: [ isRelative := false ]
]

{ #category : 'accessing' }
OPUMLTimeEvent >> isRelative: aBoolean [
	"Specifies whether the TimeEvent is specified as an absolute or relative time."
	isRelative := aBoolean
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeEvent >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeEvent >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLTimeEvent >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeEvent >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLTimeEvent >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLTimeEvent >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLTimeEvent >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]

{ #category : 'accessing' }
OPUMLTimeEvent >> when [
	"Specifies the time of the TimeEvent."
	^ when
]

{ #category : 'accessing' }
OPUMLTimeEvent >> when: aTimeExpression [
	"Specifies the time of the TimeEvent."
	when := aTimeExpression
]
