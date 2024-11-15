"
A Type constrains the values represented by a TypedElement.
"
Class {
	#name : 'OPUMLType',
	#superclass : 'OPUMLElement',
	#instVars : [
		'package'
	],
	#category : 'OpenPonk-UML-Metamodel-CommonStructure',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'CommonStructure'
}

{ #category : 'accessing - NamedElement' }
OPUMLType >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'operations - stubs' }
OPUMLType >> conformsToStub [
	"The query conformsTo() gives true for a Type that conforms to another. By default, two Types do not conform to each other. This query is intended to be redefined for specific conformance situations."
	
	"{OCL} result = (false)"
	
	self notYetImplemented

]

{ #category : 'initialization' }
OPUMLType >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #PackageableElement.
	}
]

{ #category : 'initialization' }
OPUMLType >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Type put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLType >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLType >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing' }
OPUMLType >> package [
	"Specifies the owning Package of this Type, if any."
	^ package
]

{ #category : 'accessing' }
OPUMLType >> package: aPackage [
	"Specifies the owning Package of this Type, if any."
	package := OPUMLToOneLink
		on: self identity
		update: #ownedTypes
		from: package
		to: aPackage
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLType >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - ParameterableElement' }
OPUMLType >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLType >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLType >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLType >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
