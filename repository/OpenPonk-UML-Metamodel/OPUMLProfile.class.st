"
A profile defines limited extensions to a reference metamodel with the purpose of adapting the metamodel to a specific platform or domain.
"
Class {
	#name : 'OPUMLProfile',
	#superclass : 'OPUMLElement',
	#instVars : [
		'metaclassReferences',
		'metamodelReferences'
	],
	#category : 'OpenPonk-UML-Metamodel-Packages',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Packages'
}

{ #category : 'accessing - Package' }
OPUMLProfile >> URI [
	^ (sharedGeneralizations at: #Package) URI
]

{ #category : 'accessing - Package' }
OPUMLProfile >> URI: aString [
	(sharedGeneralizations at: #Package) URI: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : 'initialization' }
OPUMLProfile >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Package.
	}
]

{ #category : 'initialization' }
OPUMLProfile >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Package put: (OPUMLPackage newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Profile put: self.
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : 'accessing' }
OPUMLProfile >> metaclassReferences [
	"References a metaclass that may be extended."
	^ metaclassReferences ifNil: [ metaclassReferences := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLProfile >> metaclassReferences: anElementImport [
	"References a metaclass that may be extended."
	metaclassReferences := anElementImport
]

{ #category : 'accessing' }
OPUMLProfile >> metamodelReferences [
	"References a package containing (directly or indirectly) metaclasses that may be extended."
	^ metamodelReferences ifNil: [ metamodelReferences := OrderedCollection new ]
]

{ #category : 'accessing' }
OPUMLProfile >> metamodelReferences: aPackageImport [
	"References a package containing (directly or indirectly) metaclasses that may be extended."
	metamodelReferences := aPackageImport
]

{ #category : 'operations - Package' }
OPUMLProfile >> mustBeOwned [
	^ (sharedGeneralizations at: #Package) mustBeOwned
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'operations - Package' }
OPUMLProfile >> nestedPackage [
	^ (sharedGeneralizations at: #Package) nestedPackage
]

{ #category : 'accessing - Package' }
OPUMLProfile >> nestedPackages [
	^ (sharedGeneralizations at: #Package) nestedPackages
]

{ #category : 'accessing - Package' }
OPUMLProfile >> nestedPackages: aPackage [
	(sharedGeneralizations at: #Package) nestedPackages: aPackage
]

{ #category : 'accessing - Package' }
OPUMLProfile >> nestingPackage [
	^ (sharedGeneralizations at: #Package) nestingPackage
]

{ #category : 'accessing - Package' }
OPUMLProfile >> nestingPackage: aPackage [
	(sharedGeneralizations at: #Package) nestingPackage: aPackage
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : 'operations - Package' }
OPUMLProfile >> ownedStereotype [
	^ (sharedGeneralizations at: #Package) ownedStereotype
]

{ #category : 'accessing - Package' }
OPUMLProfile >> ownedStereotypes [
	^ (sharedGeneralizations at: #Package) ownedStereotypes
]

{ #category : 'accessing - Package' }
OPUMLProfile >> ownedStereotypes: aStereotype [
	(sharedGeneralizations at: #Package) ownedStereotypes: aStereotype
]

{ #category : 'accessing - TemplateableElement' }
OPUMLProfile >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature
]

{ #category : 'accessing - TemplateableElement' }
OPUMLProfile >> ownedTemplateSignature: aTemplateSignature [
	(sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature: aTemplateSignature
]

{ #category : 'operations - Package' }
OPUMLProfile >> ownedType [
	^ (sharedGeneralizations at: #Package) ownedType
]

{ #category : 'accessing - Package' }
OPUMLProfile >> ownedTypes [
	^ (sharedGeneralizations at: #Package) ownedTypes
]

{ #category : 'accessing - Package' }
OPUMLProfile >> ownedTypes: aType [
	(sharedGeneralizations at: #Package) ownedTypes: aType
]

{ #category : 'accessing - ParameterableElement' }
OPUMLProfile >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLProfile >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : 'accessing - Namespace' }
OPUMLProfile >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : 'accessing - Package' }
OPUMLProfile >> packageMerges [
	^ (sharedGeneralizations at: #Package) packageMerges
]

{ #category : 'accessing - Package' }
OPUMLProfile >> packageMerges: aPackageMerge [
	(sharedGeneralizations at: #Package) packageMerges: aPackageMerge
]

{ #category : 'accessing - Package' }
OPUMLProfile >> packagedElements [
	^ (sharedGeneralizations at: #Package) packagedElements
]

{ #category : 'accessing - Package' }
OPUMLProfile >> packagedElements: aPackageableElement [
	(sharedGeneralizations at: #Package) packagedElements: aPackageableElement
]

{ #category : 'accessing - Package' }
OPUMLProfile >> profileApplications [
	^ (sharedGeneralizations at: #Package) profileApplications
]

{ #category : 'accessing - Package' }
OPUMLProfile >> profileApplications: aProfileApplication [
	(sharedGeneralizations at: #Package) profileApplications: aProfileApplication
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLProfile >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - TemplateableElement' }
OPUMLProfile >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : 'accessing - TemplateableElement' }
OPUMLProfile >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : 'accessing - ParameterableElement' }
OPUMLProfile >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLProfile >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLProfile >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLProfile >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
