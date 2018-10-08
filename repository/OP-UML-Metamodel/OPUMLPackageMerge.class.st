"
A package merge defines how the contents of one package are extended by the contents of another package.
"
Class {
	#name : #OPUMLPackageMerge,
	#superclass : #OPUMLElement,
	#instVars : [
		'receivingPackage',
		'mergedPackage'
	],
	#category : 'OP-UML-Metamodel-Packages'
}

{ #category : #initialization }
OPUMLPackageMerge >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
	}
]

{ #category : #initialization }
OPUMLPackageMerge >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageMerge put: self.
]

{ #category : #accessing }
OPUMLPackageMerge >> mergedPackage [
	"References the Package that is to be merged with the receiving package of the PackageMerge."
	^ mergedPackage
]

{ #category : #accessing }
OPUMLPackageMerge >> mergedPackage: aPackage [
	"References the Package that is to be merged with the receiving package of the PackageMerge."
	mergedPackage := aPackage
]

{ #category : #accessing }
OPUMLPackageMerge >> receivingPackage [
	"References the Package that is being extended with the contents of the merged package of the PackageMerge."
	^ receivingPackage
]

{ #category : #accessing }
OPUMLPackageMerge >> receivingPackage: aPackage [
	"References the Package that is being extended with the contents of the merged package of the PackageMerge."
	receivingPackage := OPUMLToOneLink
		on: self identity
		update: #packageMerges
		from: receivingPackage
		to: aPackage
]

{ #category : #'accessing - Relationship' }
OPUMLPackageMerge >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLPackageMerge >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLPackageMerge >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLPackageMerge >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLPackageMerge >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLPackageMerge >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]
