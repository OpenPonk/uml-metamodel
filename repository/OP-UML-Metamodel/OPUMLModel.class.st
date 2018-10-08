"
A model captures a view of a physical system. It is an abstraction of the physical system, with a certain purpose. This purpose determines what is to be included in the model and what is irrelevant. Thus the model completely describes those aspects of the physical system that are relevant to the purpose of the model, at the appropriate level of detail.
"
Class {
	#name : #OPUMLModel,
	#superclass : #OPUMLElement,
	#instVars : [
		'viewpoint'
	],
	#category : 'OP-UML-Metamodel-Packages'
}

{ #category : #'accessing - Package' }
OPUMLModel >> URI [
	^ (sharedGeneralizations at: #Package) URI
]

{ #category : #'accessing - Package' }
OPUMLModel >> URI: aString [
	(sharedGeneralizations at: #Package) URI: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #initialization }
OPUMLModel >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Package.
	}
]

{ #category : #initialization }
OPUMLModel >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Package put: (OPUMLPackage newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Model put: self.
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #'operations - Package' }
OPUMLModel >> mustBeOwned [
	^ (sharedGeneralizations at: #Package) mustBeOwned
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'operations - Package' }
OPUMLModel >> nestedPackage [
	^ (sharedGeneralizations at: #Package) nestedPackage
]

{ #category : #'accessing - Package' }
OPUMLModel >> nestedPackages [
	^ (sharedGeneralizations at: #Package) nestedPackages
]

{ #category : #'accessing - Package' }
OPUMLModel >> nestedPackages: aPackage [
	(sharedGeneralizations at: #Package) nestedPackages: aPackage
]

{ #category : #'accessing - Package' }
OPUMLModel >> nestingPackage [
	^ (sharedGeneralizations at: #Package) nestingPackage
]

{ #category : #'accessing - Package' }
OPUMLModel >> nestingPackage: aPackage [
	(sharedGeneralizations at: #Package) nestingPackage: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #'operations - Package' }
OPUMLModel >> ownedStereotype [
	^ (sharedGeneralizations at: #Package) ownedStereotype
]

{ #category : #'accessing - Package' }
OPUMLModel >> ownedStereotypes [
	^ (sharedGeneralizations at: #Package) ownedStereotypes
]

{ #category : #'accessing - Package' }
OPUMLModel >> ownedStereotypes: aStereotype [
	(sharedGeneralizations at: #Package) ownedStereotypes: aStereotype
]

{ #category : #'accessing - TemplateableElement' }
OPUMLModel >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature
]

{ #category : #'accessing - TemplateableElement' }
OPUMLModel >> ownedTemplateSignature: aTemplateSignature [
	(sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature: aTemplateSignature
]

{ #category : #'operations - Package' }
OPUMLModel >> ownedType [
	^ (sharedGeneralizations at: #Package) ownedType
]

{ #category : #'accessing - Package' }
OPUMLModel >> ownedTypes [
	^ (sharedGeneralizations at: #Package) ownedTypes
]

{ #category : #'accessing - Package' }
OPUMLModel >> ownedTypes: aType [
	(sharedGeneralizations at: #Package) ownedTypes: aType
]

{ #category : #'accessing - ParameterableElement' }
OPUMLModel >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLModel >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLModel >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #'accessing - Package' }
OPUMLModel >> packageMerges [
	^ (sharedGeneralizations at: #Package) packageMerges
]

{ #category : #'accessing - Package' }
OPUMLModel >> packageMerges: aPackageMerge [
	(sharedGeneralizations at: #Package) packageMerges: aPackageMerge
]

{ #category : #'accessing - Package' }
OPUMLModel >> packagedElements [
	^ (sharedGeneralizations at: #Package) packagedElements
]

{ #category : #'accessing - Package' }
OPUMLModel >> packagedElements: aPackageableElement [
	(sharedGeneralizations at: #Package) packagedElements: aPackageableElement
]

{ #category : #'accessing - Package' }
OPUMLModel >> profileApplications [
	^ (sharedGeneralizations at: #Package) profileApplications
]

{ #category : #'accessing - Package' }
OPUMLModel >> profileApplications: aProfileApplication [
	(sharedGeneralizations at: #Package) profileApplications: aProfileApplication
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLModel >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - TemplateableElement' }
OPUMLModel >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLModel >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - ParameterableElement' }
OPUMLModel >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLModel >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #accessing }
OPUMLModel >> viewpoint [
	"The name of the viewpoint that is expressed by a model (this name may refer to a profile definition)."
	^ viewpoint
]

{ #category : #accessing }
OPUMLModel >> viewpoint: aString [
	"The name of the viewpoint that is expressed by a model (this name may refer to a profile definition)."
	viewpoint := aString
]

{ #category : #'accessing - PackageableElement' }
OPUMLModel >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLModel >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
