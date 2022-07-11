"
A profile application is used to show which profiles have been applied to a package.
"
Class {
	#name : #OPUMLProfileApplication,
	#superclass : #OPUMLElement,
	#instVars : [
		'applyingPackage',
		'isStrict',
		'appliedProfile'
	],
	#category : 'OP-UML-Metamodel-Packages'
}

{ #category : #accessing }
OPUMLProfileApplication >> appliedProfile [
	"References the Profiles that are applied to a Package through this ProfileApplication."
	^ appliedProfile
]

{ #category : #accessing }
OPUMLProfileApplication >> appliedProfile: aProfile [
	"References the Profiles that are applied to a Package through this ProfileApplication."
	appliedProfile := aProfile
]

{ #category : #accessing }
OPUMLProfileApplication >> applyingPackage [
	"The package that owns the profile application."
	^ applyingPackage
]

{ #category : #accessing }
OPUMLProfileApplication >> applyingPackage: aPackage [
	"The package that owns the profile application."
	applyingPackage := OPUMLToOneLink
		on: self identity
		update: #profileApplications
		from: applyingPackage
		to: aPackage
]

{ #category : #initialization }
OPUMLProfileApplication >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
	}
]

{ #category : #initialization }
OPUMLProfileApplication >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ProfileApplication put: self.
]

{ #category : #accessing }
OPUMLProfileApplication >> isStrict [
	"Specifies that the Profile filtering rules for the metaclasses of the referenced metamodel shall be strictly applied."
	^ isStrict ifNil: [ isStrict := false ]
]

{ #category : #accessing }
OPUMLProfileApplication >> isStrict: aBoolean [
	"Specifies that the Profile filtering rules for the metaclasses of the referenced metamodel shall be strictly applied."
	isStrict := aBoolean
]

{ #category : #'accessing - Relationship' }
OPUMLProfileApplication >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLProfileApplication >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLProfileApplication >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLProfileApplication >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLProfileApplication >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLProfileApplication >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]
