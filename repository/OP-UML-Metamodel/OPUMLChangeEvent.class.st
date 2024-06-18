"
A ChangeEvent models a change in the system configuration that makes a condition true.
"
Class {
	#name : 'OPUMLChangeEvent',
	#superclass : 'OPUMLElement',
	#instVars : [
		'changeExpression'
	],
	#category : 'OP-UML-Metamodel-CommonBehavior',
	#package : 'OP-UML-Metamodel',
	#tag : 'CommonBehavior'
}

{ #category : 'accessing' }
OPUMLChangeEvent >> changeExpression [
	"A Boolean-valued ValueSpecification that will result in a ChangeEvent whenever its value changes from false to true."
	^ changeExpression
]

{ #category : 'accessing' }
OPUMLChangeEvent >> changeExpression: aValueSpecification [
	"A Boolean-valued ValueSpecification that will result in a ChangeEvent whenever its value changes from false to true."
	changeExpression := aValueSpecification
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'initialization' }
OPUMLChangeEvent >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Event.
	}
]

{ #category : 'initialization' }
OPUMLChangeEvent >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Event put: (OPUMLEvent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ChangeEvent put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLChangeEvent >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLChangeEvent >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLChangeEvent >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ParameterableElement' }
OPUMLChangeEvent >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLChangeEvent >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLChangeEvent >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLChangeEvent >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
