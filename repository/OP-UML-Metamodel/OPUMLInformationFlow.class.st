"
InformationFlows describe circulation of information through a system in a general manner. They do not specify the nature of the information, mechanisms by which it is conveyed, sequences of exchange or any control conditions. During more detailed modeling, representation and realization links may be added to specify which model elements implement an InformationFlow and to show how information is conveyed.  InformationFlows require some kind of “information channel” for unidirectional transmission of information items from sources to targets.  They specify the information channel’s realizations, if any, and identify the information that flows along them.  Information moving along the information channel may be represented by abstract InformationItems and by concrete Classifiers.
"
Class {
	#name : #OPUMLInformationFlow,
	#superclass : #OPUMLElement,
	#instVars : [
		'realizingActivityEdges',
		'realizations',
		'informationTargets',
		'realizingMessages',
		'conveyeds',
		'informationSources',
		'realizingConnectors'
	],
	#category : 'OP-UML-Metamodel-InformationFlows'
}

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> clientDependencies [
	^ (sharedGeneralizations at: #NamedElement) clientDependencies
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> clientDependencies: aDependency [
	(sharedGeneralizations at: #NamedElement) clientDependencies: aDependency
]

{ #category : #accessing }
OPUMLInformationFlow >> conveyeds [
	"Specifies the information items that may circulate on this information flow."
	^ conveyeds ifNil: [ conveyeds := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInformationFlow >> conveyeds: aClassifier [
	"Specifies the information items that may circulate on this information flow."
	conveyeds := aClassifier
]

{ #category : #accessing }
OPUMLInformationFlow >> informationSources [
	"Defines from which source the conveyed InformationItems are initiated."
	^ informationSources ifNil: [ informationSources := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInformationFlow >> informationSources: aNamedElement [
	"Defines from which source the conveyed InformationItems are initiated."
	informationSources := aNamedElement
]

{ #category : #accessing }
OPUMLInformationFlow >> informationTargets [
	"Defines to which target the conveyed InformationItems are directed."
	^ informationTargets ifNil: [ informationTargets := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInformationFlow >> informationTargets: aNamedElement [
	"Defines to which target the conveyed InformationItems are directed."
	informationTargets := aNamedElement
]

{ #category : #initialization }
OPUMLInformationFlow >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
		sharedGeneralizations at: #PackageableElement.
	}
]

{ #category : #initialization }
OPUMLInformationFlow >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParameterableElement put: (OPUMLParameterableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedElement put: (OPUMLNamedElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #PackageableElement put: (OPUMLPackageableElement newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #InformationFlow put: self.
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> name [
	^ (sharedGeneralizations at: #NamedElement) name
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> name: aString [
	(sharedGeneralizations at: #NamedElement) name: aString
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> nameExpression [
	^ (sharedGeneralizations at: #NamedElement) nameExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> nameExpression: aStringExpression [
	(sharedGeneralizations at: #NamedElement) nameExpression: aStringExpression
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> namespace [
	^ (sharedGeneralizations at: #NamedElement) namespace
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> namespace: aNamespace [
	(sharedGeneralizations at: #NamedElement) namespace: aNamespace
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInformationFlow >> owningTemplateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) owningTemplateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInformationFlow >> owningTemplateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) owningTemplateParameter: aTemplateParameter
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> qualifiedName [
	^ (sharedGeneralizations at: #NamedElement) qualifiedName
]

{ #category : #'accessing - NamedElement' }
OPUMLInformationFlow >> qualifiedName: aString [
	(sharedGeneralizations at: #NamedElement) qualifiedName: aString
]

{ #category : #accessing }
OPUMLInformationFlow >> realizations [
	"Determines which Relationship will realize the specified flow."
	^ realizations ifNil: [ realizations := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInformationFlow >> realizations: aRelationship [
	"Determines which Relationship will realize the specified flow."
	realizations := aRelationship
]

{ #category : #accessing }
OPUMLInformationFlow >> realizingActivityEdges [
	"Determines which ActivityEdges will realize the specified flow."
	^ realizingActivityEdges ifNil: [ realizingActivityEdges := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInformationFlow >> realizingActivityEdges: anActivityEdge [
	"Determines which ActivityEdges will realize the specified flow."
	realizingActivityEdges := anActivityEdge
]

{ #category : #accessing }
OPUMLInformationFlow >> realizingConnectors [
	"Determines which Connectors will realize the specified flow."
	^ realizingConnectors ifNil: [ realizingConnectors := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInformationFlow >> realizingConnectors: aConnector [
	"Determines which Connectors will realize the specified flow."
	realizingConnectors := aConnector
]

{ #category : #accessing }
OPUMLInformationFlow >> realizingMessages [
	"Determines which Messages will realize the specified flow."
	^ realizingMessages ifNil: [ realizingMessages := OrderedCollection new ]
]

{ #category : #accessing }
OPUMLInformationFlow >> realizingMessages: aMessage [
	"Determines which Messages will realize the specified flow."
	realizingMessages := aMessage
]

{ #category : #'accessing - Relationship' }
OPUMLInformationFlow >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : #'accessing - Relationship' }
OPUMLInformationFlow >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLInformationFlow >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLInformationFlow >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLInformationFlow >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : #'accessing - DirectedRelationship' }
OPUMLInformationFlow >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInformationFlow >> templateParameter [
	^ (sharedGeneralizations at: #ParameterableElement) templateParameter
]

{ #category : #'accessing - ParameterableElement' }
OPUMLInformationFlow >> templateParameter: aTemplateParameter [
	(sharedGeneralizations at: #ParameterableElement) templateParameter: aTemplateParameter
]

{ #category : #'accessing - PackageableElement' }
OPUMLInformationFlow >> visibility [
	^ (sharedGeneralizations at: #PackageableElement) visibility
]

{ #category : #'accessing - PackageableElement' }
OPUMLInformationFlow >> visibility: aVisibilityKind [
	(sharedGeneralizations at: #PackageableElement) visibility: aVisibilityKind
]
