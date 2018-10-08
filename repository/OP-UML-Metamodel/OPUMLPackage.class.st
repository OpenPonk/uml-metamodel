"
A package can have one or more profile applications to indicate which profiles have been applied. Because a profile is a package, it is possible to apply a profile not only to packages, but also to profiles.
Package specializes TemplateableElement and PackageableElement specializes ParameterableElement to specify that a package can be used as a template and a PackageableElement as a template parameter.
A package is used to group elements, and provides a namespace for the grouped elements.
"
Class {
	#name : #OPUMLPackage,
	#superclass : #OPUMLElement,
	#instVars : [
		'packagedElements',
		'ownedStereotypes',
		'packageMerges',
		'ownedTypes',
		'profileApplications',
		'nestedPackages',
		'nestingPackage',
		'URI'
	],
	#category : 'OP-UML-Metamodel-Packages'
}

{ #category : #accessing }
OPUMLPackage >> URI [
	"Provides an identifier for the package that can be used for many purposes. A URI is the universally unique identification of the package following the IETF URI specification, RFC 2396 http://www.ietf.org/rfc/rfc2396.txt and it must comply with those syntax rules."
	^ URI
]

{ #category : #accessing }
OPUMLPackage >> URI: aString [
	"Provides an identifier for the package that can be used for many purposes. A URI is the universally unique identification of the package following the IETF URI specification, RFC 2396 http://www.ietf.org/rfc/rfc2396.txt and it must comply with those syntax rules."
	URI := aString
]

{ #category : #'operations - stubs' }
OPUMLPackage >> allApplicableStereotypesStub [
	"The query allApplicableStereotypes() returns all the directly or indirectly owned stereotypes, including stereotypes contained in sub-profiles."
	
	"{OCL} result = (let ownedPackages : Bag(Package) = ownedMember->select(oclIsKindOf(Package))->collect(oclAsType(Package)) in
 ownedStereotype->union(ownedPackages.allApplicableStereotypes())->flatten()->asSet()
)"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #'operations - stubs' }
OPUMLPackage >> containingProfileStub [
	"The query containingProfile() returns the closest profile directly or indirectly containing this package (or this package itself, if it is a profile)."
	
	"{OCL} result = (if self.oclIsKindOf(Profile) then 
	self.oclAsType(Profile)
else
	self.namespace.oclAsType(Package).containingProfile()
endif)"
	
	self notYetImplemented

]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> elementImports [
	^ (sharedGeneralizations at: #Namespace) elementImports
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> elementImports: anElementImport [
	(sharedGeneralizations at: #Namespace) elementImports: anElementImport
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> importedMembers [
	^ (sharedGeneralizations at: #Namespace) importedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> importedMembers: aPackageableElement [
	(sharedGeneralizations at: #Namespace) importedMembers: aPackageableElement
]

{ #category : #initialization }
OPUMLPackage >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #PackageableElement.
		sharedGeneralizations at: #TemplateableElement.
		sharedGeneralizations at: #Namespace.
	}
]

{ #category : #initialization }
OPUMLPackage >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TemplateableElement put: (OPUMLTemplateableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Namespace put: (OPUMLNamespace newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Package put: self.
]

{ #category : #'operations - stubs' }
OPUMLPackage >> makesVisibleStub [
	"The query makesVisible() defines whether a Package makes an element visible outside itself. Elements with no visibility and elements with public visibility are made visible."
	
	"pre: {OCL} member->includes(el)"
	"{OCL} result = (ownedMember->includes(el) or
(elementImport->select(ei|ei.importedElement = VisibilityKind::public)->collect(importedElement.oclAsType(NamedElement))->includes(el)) or
(packageImport->select(visibility = VisibilityKind::public)->collect(importedPackage.member->includes(el))->notEmpty()))"
	
	self notYetImplemented

]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> members [
	^ (sharedGeneralizations at: #Namespace) members
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> members: aNamedElement [
	(sharedGeneralizations at: #Namespace) members: aNamedElement
]

{ #category : #operations }
OPUMLPackage >> mustBeOwned [
	"The query mustBeOwned() indicates whether elements of this type must have an owner."
	
	"{OCL} result = (false)"
	
	^ false

]

{ #category : #'operations - stubs' }
OPUMLPackage >> mustBeOwnedStub [
	"The query mustBeOwned() indicates whether elements of this type must have an owner."
	
	"{OCL} result = (false)"
	
	self notYetImplemented

]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #operations }
OPUMLPackage >> nestedPackage [
	"Derivation for Package::/nestedPackage "
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Package))->collect(oclAsType(Package))->asSet())"
	
	^ (self packagedElements
		select: [ :each | each oclIsKindOf: #Package ]
		thenCollect: [ :each | each oclAsType: #Package ]) asSet

]

{ #category : #'operations - stubs' }
OPUMLPackage >> nestedPackageStub [
	"Derivation for Package::/nestedPackage "
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Package))->collect(oclAsType(Package))->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLPackage >> nestedPackages [
	"References the packaged elements that are Packages."
	^ nestedPackages ifNil: [ nestedPackages := OPUMLToManyLinks on: self identity opposite: #nestingPackage: ]
]

{ #category : #accessing }
OPUMLPackage >> nestedPackages: aPackage [
	"References the packaged elements that are Packages."
	self nestedPackages
		removeAll;
		addAll: aPackage
]

{ #category : #accessing }
OPUMLPackage >> nestingPackage [
	"References the Package that owns this Package."
	^ nestingPackage
]

{ #category : #accessing }
OPUMLPackage >> nestingPackage: aPackage [
	"References the Package that owns this Package."
	nestingPackage := OPUMLToOneLink
		on: self identity
		update: #nestedPackages
		from: nestingPackage
		to: aPackage
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> ownedMembers [
	^ (sharedGeneralizations at: #Namespace) ownedMembers
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> ownedMembers: aNamedElement [
	(sharedGeneralizations at: #Namespace) ownedMembers: aNamedElement
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> ownedRules [
	^ (sharedGeneralizations at: #Namespace) ownedRules
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> ownedRules: aConstraint [
	(sharedGeneralizations at: #Namespace) ownedRules: aConstraint
]

{ #category : #operations }
OPUMLPackage >> ownedStereotype [
	"Derivation for Package::/ownedStereotype "
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Stereotype))->collect(oclAsType(Stereotype))->asSet())"
	
	^ (self packagedElements
		select: [ :each | each oclIsKindOf: #Stereotype ]
		thenCollect: [ :each | each oclAsType: #Stereotype ]) asSet

]

{ #category : #'operations - stubs' }
OPUMLPackage >> ownedStereotypeStub [
	"Derivation for Package::/ownedStereotype "
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Stereotype))->collect(oclAsType(Stereotype))->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLPackage >> ownedStereotypes [
	"References the Stereotypes that are owned by the Package."
	^ ownedStereotypes ifNil: [ ownedStereotypes := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLPackage >> ownedStereotypes: aStereotype [
	"References the Stereotypes that are owned by the Package."
	ownedStereotypes := aStereotype
]

{ #category : #'accessing - TemplateableElement' }
OPUMLPackage >> ownedTemplateSignature [
	^ (sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature
]

{ #category : #'accessing - TemplateableElement' }
OPUMLPackage >> ownedTemplateSignature: aTemplateSignature [
	(sharedGeneralizations at: #TemplateableElement) ownedTemplateSignature: aTemplateSignature
]

{ #category : #operations }
OPUMLPackage >> ownedType [
	"Derivation for Package::/ownedType"
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Type))->collect(oclAsType(Type))->asSet())"
	
	^ (self packagedElements
		select: [ :each | each oclIsKindOf: #Type ]
		thenCollect: [ :each | each oclAsType: #Type ]) asSet

]

{ #category : #'operations - stubs' }
OPUMLPackage >> ownedTypeStub [
	"Derivation for Package::/ownedType"
	
	"{OCL} result = (packagedElement->select(oclIsKindOf(Type))->collect(oclAsType(Type))->asSet())"
	
	self notYetImplemented

]

{ #category : #accessing }
OPUMLPackage >> ownedTypes [
	"References the packaged elements that are Types."
	^ ownedTypes ifNil: [ ownedTypes := OPUMLToManyLinks on: self identity opposite: #package: ]
]

{ #category : #accessing }
OPUMLPackage >> ownedTypes: aType [
	"References the packaged elements that are Types."
	self ownedTypes
		removeAll;
		addAll: aType
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPackage >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPackage >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> packageImports [
	^ (sharedGeneralizations at: #Namespace) packageImports
]

{ #category : #'accessing - Namespace' }
OPUMLPackage >> packageImports: aPackageImport [
	(sharedGeneralizations at: #Namespace) packageImports: aPackageImport
]

{ #category : #accessing }
OPUMLPackage >> packageMerges [
	"References the PackageMerges that are owned by this Package."
	^ packageMerges ifNil: [ packageMerges := OPUMLToManyLinks on: self identity opposite: #receivingPackage: ]
]

{ #category : #accessing }
OPUMLPackage >> packageMerges: aPackageMerge [
	"References the PackageMerges that are owned by this Package."
	self packageMerges
		removeAll;
		addAll: aPackageMerge
]

{ #category : #accessing }
OPUMLPackage >> packagedElements [
	"Specifies the packageable elements that are owned by this Package."
	^ packagedElements ifNil: [ packagedElements := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLPackage >> packagedElements: aPackageableElement [
	"Specifies the packageable elements that are owned by this Package."
	packagedElements := aPackageableElement
]

{ #category : #accessing }
OPUMLPackage >> profileApplications [
	"References the ProfileApplications that indicate which profiles have been applied to the Package."
	^ profileApplications ifNil: [ profileApplications := OPUMLToManyLinks on: self identity opposite: #applyingPackage: ]
]

{ #category : #accessing }
OPUMLPackage >> profileApplications: aProfileApplication [
	"References the ProfileApplications that indicate which profiles have been applied to the Package."
	self profileApplications
		removeAll;
		addAll: aProfileApplication
]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLPackage >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #'accessing - TemplateableElement' }
OPUMLPackage >> templateBindings [
	^ (sharedGeneralizations at: #TemplateableElement) templateBindings
]

{ #category : #'accessing - TemplateableElement' }
OPUMLPackage >> templateBindings: aTemplateBinding [
	(sharedGeneralizations at: #TemplateableElement) templateBindings: aTemplateBinding
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPackage >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLPackage >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLPackage >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLPackage >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]

{ #category : #'operations - stubs' }
OPUMLPackage >> visibleMembersStub [
	"The query visibleMembers() defines which members of a Package can be accessed outside it."
	
	"{OCL} result = (member->select( m | m.oclIsKindOf(PackageableElement) and self.makesVisible(m))->collect(oclAsType(PackageableElement))->asSet())"
	
	self notYetImplemented

]
