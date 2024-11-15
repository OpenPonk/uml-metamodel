"
A PackageImport is a Relationship that imports all the non-private members of a Package into the Namespace owning the PackageImport, so that those Elements may be referred to by their unqualified names in the importingNamespace.
"
Class {
	#name : 'OPUMLPackageImport',
	#superclass : 'OPUMLElement',
	#instVars : [
		'importedPackage',
		'importingNamespace',
		'visibility'
	],
	#category : 'OpenPonk-UML-Metamodel-CommonStructure',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'CommonStructure'
}

{ #category : 'accessing' }
OPUMLPackageImport >> importedPackage [
	"Specifies the Package whose members are imported into a Namespace."
	^ importedPackage
]

{ #category : 'accessing' }
OPUMLPackageImport >> importedPackage: aPackage [
	"Specifies the Package whose members are imported into a Namespace."
	importedPackage := aPackage
]

{ #category : 'accessing' }
OPUMLPackageImport >> importingNamespace [
	"Specifies the Namespace that imports the members from a Package."
	^ importingNamespace
]

{ #category : 'accessing' }
OPUMLPackageImport >> importingNamespace: aNamespace [
	"Specifies the Namespace that imports the members from a Package."
	importingNamespace := OPUMLToOneLink
		on: self identity
		update: #packageImports
		from: importingNamespace
		to: aNamespace
]

{ #category : 'initialization' }
OPUMLPackageImport >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
	}
]

{ #category : 'initialization' }
OPUMLPackageImport >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageImport put: self.
]

{ #category : 'accessing - Relationship' }
OPUMLPackageImport >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLPackageImport >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLPackageImport >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLPackageImport >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLPackageImport >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLPackageImport >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : 'accessing' }
OPUMLPackageImport >> visibility [
	"Specifies the visibility of the imported PackageableElements within the importingNamespace, i.e., whether imported Elements will in turn be visible to other Namespaces. If the PackageImport is public, the imported Elements will be visible outside the importingNamespace, while, if the PackageImport is private, they will not."
	^ visibility ifNil: [ visibility := OPUMLVisibilityKind new public ]
]

{ #category : 'accessing' }
OPUMLPackageImport >> visibility: aVisibilityKind [
	"Specifies the visibility of the imported PackageableElements within the importingNamespace, i.e., whether imported Elements will in turn be visible to other Namespaces. If the PackageImport is public, the imported Elements will be visible outside the importingNamespace, while, if the PackageImport is private, they will not."
	visibility := aVisibilityKind
]
