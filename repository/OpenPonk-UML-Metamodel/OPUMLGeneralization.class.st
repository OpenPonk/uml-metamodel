"
A Generalization is a taxonomic relationship between a more general Classifier and a more specific Classifier. Each instance of the specific Classifier is also an instance of the general Classifier. The specific Classifier inherits the features of the more general Classifier. A Generalization is owned by the specific Classifier.
"
Class {
	#name : 'OPUMLGeneralization',
	#superclass : 'OPUMLElement',
	#instVars : [
		'generalizationSets',
		'general',
		'isSubstitutable',
		'specific'
	],
	#category : 'OpenPonk-UML-Metamodel-Classification',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Classification'
}

{ #category : 'accessing' }
OPUMLGeneralization >> general [
	"The general classifier in the Generalization relationship."
	^ general
]

{ #category : 'accessing' }
OPUMLGeneralization >> general: aClassifier [
	"The general classifier in the Generalization relationship."
	general := aClassifier
]

{ #category : 'accessing' }
OPUMLGeneralization >> generalizationSets [
	"Represents a set of instances of Generalization.  A Generalization may appear in many GeneralizationSets."
	^ generalizationSets ifNil: [ generalizationSets := OPUMLManyToManyLinks on: self identity opposite: #generalizations ]
]

{ #category : 'accessing' }
OPUMLGeneralization >> generalizationSets: aGeneralizationSet [
	"Represents a set of instances of Generalization.  A Generalization may appear in many GeneralizationSets."
	self generalizationSets
		removeAll;
		addAll: aGeneralizationSet
]

{ #category : 'initialization' }
OPUMLGeneralization >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #DirectedRelationship.
	}
]

{ #category : 'initialization' }
OPUMLGeneralization >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Relationship put: (OPUMLRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #DirectedRelationship put: (OPUMLDirectedRelationship newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Generalization put: self.
]

{ #category : 'accessing' }
OPUMLGeneralization >> isSubstitutable [
	"Indicates whether the specific Classifier can be used wherever the general Classifier can be used. If true, the execution traces of the specific Classifier shall be a superset of the execution traces of the general Classifier. If false, there is no such constraint on execution traces. If unset, the modeler has not stated whether there is such a constraint or not."
	^ isSubstitutable ifNil: [ isSubstitutable := true ]
]

{ #category : 'accessing' }
OPUMLGeneralization >> isSubstitutable: aBoolean [
	"Indicates whether the specific Classifier can be used wherever the general Classifier can be used. If true, the execution traces of the specific Classifier shall be a superset of the execution traces of the general Classifier. If false, there is no such constraint on execution traces. If unset, the modeler has not stated whether there is such a constraint or not."
	isSubstitutable := aBoolean
]

{ #category : 'printing' }
OPUMLGeneralization >> printOn: aStream [

	super printOn: aStream.
	aStream << '('.
	self specific
		ifNil: [ aStream << 'nil' ]
		ifNotNil: [ :element | element printAsClassifierNameOn: aStream ].
	aStream << ' -> '.
	self general
		ifNil: [ aStream << 'nil' ]
		ifNotNil: [ :element | element printAsClassifierNameOn: aStream ].
	aStream << ')'
]

{ #category : 'accessing - Relationship' }
OPUMLGeneralization >> relatedElements [
	^ (sharedGeneralizations at: #Relationship) relatedElements
]

{ #category : 'accessing - Relationship' }
OPUMLGeneralization >> relatedElements: anElement [
	(sharedGeneralizations at: #Relationship) relatedElements: anElement
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLGeneralization >> sources [
	^ (sharedGeneralizations at: #DirectedRelationship) sources
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLGeneralization >> sources: anElement [
	(sharedGeneralizations at: #DirectedRelationship) sources: anElement
]

{ #category : 'accessing' }
OPUMLGeneralization >> specific [
	"The specializing Classifier in the Generalization relationship."
	^ specific
]

{ #category : 'accessing' }
OPUMLGeneralization >> specific: aClassifier [
	"The specializing Classifier in the Generalization relationship."
	specific := OPUMLToOneLink
		on: self identity
		update: #generalizations
		from: specific
		to: aClassifier
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLGeneralization >> targets [
	^ (sharedGeneralizations at: #DirectedRelationship) targets
]

{ #category : 'accessing - DirectedRelationship' }
OPUMLGeneralization >> targets: anElement [
	(sharedGeneralizations at: #DirectedRelationship) targets: anElement
]
