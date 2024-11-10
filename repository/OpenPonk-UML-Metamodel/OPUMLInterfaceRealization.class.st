"
An InterfaceRealization is a specialized realization relationship between a BehavioredClassifier and an Interface. This relationship signifies that the realizing BehavioredClassifier conforms to the contract specified by the Interface.
"
Class {
	#name : 'OPUMLInterfaceRealization',
	#superclass : 'OPUMLElement',
	#instVars : [
		'implementingClassifier',
		'contract'
	],
	#category : 'OpenPonk-UML-Metamodel-SimpleClassifiers',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'SimpleClassifiers'
}

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : 'accessing - Dependency' }
OPUMLInterfaceRealization >> clients [
	^ (sharedGeneralizations at: #Dependency) clients
]

{ #category : 'accessing - Dependency' }
OPUMLInterfaceRealization >> clients: aNamedElement [
	(sharedGeneralizations at: #Dependency) clients: aNamedElement
]

{ #category : 'accessing' }
OPUMLInterfaceRealization >> contract [
	"References the Interface specifying the conformance contract."
	^ contract
]

{ #category : 'accessing' }
OPUMLInterfaceRealization >> contract: anInterface [
	"References the Interface specifying the conformance contract."
	contract := anInterface
]

{ #category : 'accessing' }
OPUMLInterfaceRealization >> implementingClassifier [
	"References the BehavioredClassifier that owns this InterfaceRealization, i.e., the BehavioredClassifier that realizes the Interface to which it refers."
	^ implementingClassifier
]

{ #category : 'accessing' }
OPUMLInterfaceRealization >> implementingClassifier: aBehavioredClassifier [
	"References the BehavioredClassifier that owns this InterfaceRealization, i.e., the BehavioredClassifier that realizes the Interface to which it refers."
	implementingClassifier := OPUMLToOneLink
		on: self identity
		update: #interfaceRealizations
		from: implementingClassifier
		to: aBehavioredClassifier
]

{ #category : 'initialization' }
OPUMLInterfaceRealization >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Realization.
	}
]

{ #category : 'initialization' }
OPUMLInterfaceRealization >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Dependency put: (OPUMLDependency newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Abstraction put: (OPUMLAbstraction newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Realization put: (OPUMLRealization newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InterfaceRealization put: self.
]

{ #category : 'accessing - Abstraction' }
OPUMLInterfaceRealization >> mapping [
	^ (sharedGeneralizations at: #Abstraction) mapping
]

{ #category : 'accessing - Abstraction' }
OPUMLInterfaceRealization >> mapping: anOpaqueExpression [
	(sharedGeneralizations at: #Abstraction) mapping: anOpaqueExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInterfaceRealization >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInterfaceRealization >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : 'accessing - NamedElement' }
OPUMLInterfaceRealization >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : 'accessing - Relationship' }
OPUMLInterfaceRealization >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLInterfaceRealization >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLInterfaceRealization >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLInterfaceRealization >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing - Dependency' }
OPUMLInterfaceRealization >> suppliers [
	^ (sharedGeneralizations at: #Dependency) suppliers
]

{ #category : 'accessing - Dependency' }
OPUMLInterfaceRealization >> suppliers: aNamedElement [
	(sharedGeneralizations at: #Dependency) suppliers: aNamedElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLInterfaceRealization >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLInterfaceRealization >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInterfaceRealization >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : 'accessing - ParameterableElement' }
OPUMLInterfaceRealization >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : 'accessing - PackageableElement' }
OPUMLInterfaceRealization >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : 'accessing - PackageableElement' }
OPUMLInterfaceRealization >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
