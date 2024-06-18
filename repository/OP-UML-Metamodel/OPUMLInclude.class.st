"
An Include relationship specifies that a UseCase contains the behavior defined in another UseCase.
"
Class {
	#name : 'OPUMLInclude',
	#superclass : 'OPUMLElement',
	#instVars : [
		'addition',
		'includingCase'
	],
	#category : 'OP-UML-Metamodel-UseCases',
	#package : 'OP-UML-Metamodel',
	#tag : 'UseCases'
}

{ #category : 'accessing' }
OPUMLInclude >> addition [
	"The UseCase that is to be included."
	^ addition
]

{ #category : 'accessing' }
OPUMLInclude >> addition: anUseCase [
	"The UseCase that is to be included."
	addition := anUseCase
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing' }
OPUMLInclude >> includingCase [
	"The UseCase which includes the addition and owns the Include relationship."
	^ includingCase
]

{ #category : 'accessing' }
OPUMLInclude >> includingCase: anUseCase [
	"The UseCase which includes the addition and owns the Include relationship."
	includingCase := OPUMLToOneLink
		on: self identity
		update: #includes
		from: includingCase
		to: anUseCase
]

{ #category : 'initialization' }
OPUMLInclude >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
		sharedGeneralizations at: #NamedElement.
	}
]

{ #category : 'initialization' }
OPUMLInclude >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Include put: self.
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Relationship' }
OPUMLInclude >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLInclude >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLInclude >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLInclude >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLInclude >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLInclude >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> visibility [
	^ (sharedGeneralizations at: #NamedElement) visibility
]

{ #category : 'accessing - NamedElement' }
OPUMLInclude >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #NamedElement) visibility: aVisibilityKind
]
