"
An ElementImport identifies a NamedElement in a Namespace other than the one that owns that NamedElement and allows the NamedElement to be referenced using an unqualified name in the Namespace owning the ElementImport.
"
Class {
	#name : 'OPUMLElementImport',
	#superclass : 'OPUMLElement',
	#instVars : [
		'alias',
		'importedElement',
		'importingNamespace',
		'visibility'
	],
	#category : 'OP-UML-Metamodel-CommonStructure',
	#package : 'OP-UML-Metamodel',
	#tag : 'CommonStructure'
}

{ #category : 'accessing' }
OPUMLElementImport >> alias [
	"Specifies the name that should be added to the importing Namespace in lieu of the name of the imported PackagableElement. The alias must not clash with any other member in the importing Namespace. By default, no alias is used."
	^ alias
]

{ #category : 'accessing' }
OPUMLElementImport >> alias: aString [
	"Specifies the name that should be added to the importing Namespace in lieu of the name of the imported PackagableElement. The alias must not clash with any other member in the importing Namespace. By default, no alias is used."
	alias := aString
]

{ #category : 'operations - stubs' }
OPUMLElementImport >> getNameStub [
	"The query getName() returns the name under which the imported PackageableElement will be known in the importing namespace."
	
	"{OCL} result = (if alias->notEmpty() then
  alias
else
  importedElement.name
endif)"
	
	self notYetImplemented

]

{ #category : 'accessing' }
OPUMLElementImport >> importedElement [
	"Specifies the PackageableElement whose name is to be added to a Namespace."
	^ importedElement
]

{ #category : 'accessing' }
OPUMLElementImport >> importedElement: aPackageableElement [
	"Specifies the PackageableElement whose name is to be added to a Namespace."
	importedElement := aPackageableElement
]

{ #category : 'accessing' }
OPUMLElementImport >> importingNamespace [
	"Specifies the Namespace that imports a PackageableElement from another Namespace."
	^ importingNamespace
]

{ #category : 'accessing' }
OPUMLElementImport >> importingNamespace: aNamespace [
	"Specifies the Namespace that imports a PackageableElement from another Namespace."
	importingNamespace := OPUMLToOneLink
		on: self identity
		update: #elementImports
		from: importingNamespace
		to: aNamespace
]

{ #category : 'initialization' }
OPUMLElementImport >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
	}
]

{ #category : 'initialization' }
OPUMLElementImport >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ElementImport put: self.
]

{ #category : 'accessing - Relationship' }
OPUMLElementImport >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLElementImport >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLElementImport >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLElementImport >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLElementImport >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLElementImport >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : 'accessing' }
OPUMLElementImport >> visibility [
	"Specifies the visibility of the imported PackageableElement within the importingNamespace, i.e., whether the  importedElement will in turn be visible to other Namespaces. If the ElementImport is public, the importedElement will be visible outside the importingNamespace while, if the ElementImport is private, it will not."
	^ visibility ifNil: [ visibility := OPUMLVisibilityKind new public ]
]

{ #category : 'accessing' }
OPUMLElementImport >> visibility: aVisibilityKind [
	"Specifies the visibility of the imported PackageableElement within the importingNamespace, i.e., whether the  importedElement will in turn be visible to other Namespaces. If the ElementImport is public, the importedElement will be visible outside the importingNamespace while, if the ElementImport is private, it will not."
	visibility := aVisibilityKind
]
