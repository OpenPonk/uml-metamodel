"
I am a metaclass for UML classes implementing some behavior for managing the classes and other stuff (like an announcer).
"
Class {
	#name : #OPUMLMetaElement,
	#superclass : #Object,
	#instVars : [
		'announcer',
		'directGeneralizations',
		'sharedGeneralizations',
		'tags',
		'uuid'
	],
	#classInstVars : [
		'metaModels'
	],
	#category : 'OP-UML-Metamodel-Meta'
}

{ #category : #'instance creation' }
OPUMLMetaElement class >> newOnShared: aDictionary [
	^ self basicNew
		initializeWithShared: aDictionary;
		yourself
]

{ #category : #accessing }
OPUMLMetaElement >> addTag: anAssociation [
	tags add: anAssociation
]

{ #category : #accessing }
OPUMLMetaElement >> addTagNamed: aKey value: aValue [
	tags at: aKey put: aValue
]

{ #category : #accessing }
OPUMLMetaElement >> announcer [
	^ announcer ifNil: [ announcer := Announcer new ]
]

{ #category : #accessing }
OPUMLMetaElement >> announcer: anAnnouncer [
	announcer := anAnnouncer
]

{ #category : #'accessing - stereotypes' }
OPUMLMetaElement >> appliedStereotypes [
	^ self tags at: #appliedStereotypes ifAbsentPut: [ OrderedCollection new ]
]

{ #category : #'accessing - stereotypes' }
OPUMLMetaElement >> applyStereotype: aStereotype [
	| meta attribute |
	self appliedStereotypes addIfNotPresent: aStereotype.
	meta := aStereotype umlMetaClass.
	attribute := (meta allAttributes select: [ :each | each name beginsWith: 'base_' ])
		detect: [ :each | self oclIsKindOf: each type name ].
	self perform: (attribute opposite name , ':') asSymbol with: aStereotype
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> gtInspectorAllPropertiesIn: aComposite [
	<gtInspectorPresentationOrder: 6>
	aComposite fastTable
		title: 'Properties (All)';
		display: [ self inspectorProperties ];
		column: 'name' evaluated: [ :each | each key ];
		column: 'value' evaluated: [ :each | each value ];
		send: [ :selection | 
			selection isNil
				ifTrue: [ nil ]
				ifFalse: [ selection value ] ]
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> gtInspectorGeneralizationsIn: aComposite [
	<gtInspectorPresentationOrder: 8>
	aComposite fastTable
		title: 'Generalizations';
		display: [ sharedGeneralizations associations ];
		column: 'name' evaluated: [ :each | each key ];
		column: 'value' evaluated: [ :each | each value ];
		send: [ :selection | 
			selection isNil
				ifTrue: [ nil ]
				ifFalse: [ selection value ] ]
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> gtInspectorPropertiesIn: aComposite [
	<gtInspectorPresentationOrder: 5>
	aComposite fastTable
		title: 'Properties';
		display: [ self nonEmptyinspectorProperties ];
		column: 'name' evaluated: [ :each | each key ];
		column: 'value' evaluated: [ :each | each value ];
		send: [ :selection | 
			selection isNil
				ifTrue: [ nil ]
				ifFalse: [ selection value ] ]
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> gtInspectorStereotypePropertiesIn: aComposite [
	<gtInspectorPresentationOrder: 7>
	aComposite fastTable
		title: 'Tagged Values';
		display: [ self stereotypeProperties ];
		column: 'name' evaluated: [ :each | each first ] width: 120;
		column: 'stereotype' evaluated: [ :each | each second ] width: 120;
		column: 'value' evaluated: [ :each | each third ];
		send: [ :selection | 
			selection isNil
				ifTrue: [ nil ]
				ifFalse: [ selection value ] ]
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> gtInspectorStereotypesIn: aComposite [
	<gtInspectorPresentationOrder: 6>
	^ aComposite fastList
		title: 'Stereotypes';
		display: [ self appliedStereotypes ]
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> gtInspectorTagsIn: aComposite [
	<gtInspectorPresentationOrder: 7>
	aComposite fastTable
		title: 'Tags';
		display: [ self tags ]
]

{ #category : #'accessing - tags' }
OPUMLMetaElement >> hasTagAt: aKey [
	^ tags includesKey: aKey
]

{ #category : #accessing }
OPUMLMetaElement >> identity [
	^ sharedGeneralizations values last
]

{ #category : #initialization }
OPUMLMetaElement >> initialize [
	super initialize.
	sharedGeneralizations := OrderedDictionary new.
	tags := OrderedDictionary new.
	self initializeSharedGeneralizations.
	self initializeDirectGeneralizations
]

{ #category : #initialization }
OPUMLMetaElement >> initializeDirectGeneralizations [
	^ self subclassResponsibility
]

{ #category : #initialization }
OPUMLMetaElement >> initializeSharedGeneralizations [
	^ self subclassResponsibility
]

{ #category : #initialization }
OPUMLMetaElement >> initializeWithShared: aDictionary [
	super initialize.
	sharedGeneralizations := aDictionary.
	self initializeDirectGeneralizations
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> inspectorProperties [
	^ self inspectorPropertiesSelectors collect: [ :each | each -> (self perform: each) ]
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> inspectorPropertiesSelectors [
	| classes class |
	classes := Set new.
	class := self class.
	[ class superclass name = 'Object' ]
		whileFalse: [ classes add: class.
			class := class superclass ].
	^ ((((classes flatCollect: #methods) select: [ :each | each numArgs = 0 ])
		select: [ :each | each protocol beginsWith: 'accessing' ]) collect: #selector) sorted
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> nonEmptyinspectorProperties [
	^ self inspectorProperties
		reject: [ :pair | pair value isNil or: [ pair value isCollection and: [ pair value isEmpty ] ] ]
]

{ #category : #'ocl-experimental' }
OPUMLMetaElement >> oclAsType: aClassifier [
	^ sharedGeneralizations at: (self oclClassifierNameFrom: aClassifier)
]

{ #category : #'ocl-experimental' }
OPUMLMetaElement >> oclClassifierNameFrom: anObject [
	(anObject isKindOf: OPUMLMetaElement class)
		ifTrue: [ ^ anObject name withoutPrefix: 'OPUML' ].
	(anObject isKindOf: OPUMLMetaElement)
		ifTrue: [ ^ anObject name ].
	anObject isString
		ifTrue: [ ^ anObject ].
	self error: 'Unknown classifier ' , anObject asString
]

{ #category : #'ocl-experimental' }
OPUMLMetaElement >> oclIsKindOf: aClassifier [
	"Element is not part of the shared generalization, so extra check is needed."
	aClassifier = #Element
		ifTrue: [ ^ true ].
	^ sharedGeneralizations includesKey: (self oclClassifierNameFrom: aClassifier)
]

{ #category : #'ocl-experimental' }
OPUMLMetaElement >> oclIsTypeOf: aClassifier [
	"Element is not part of the shared generalization, so extra check is needed."
	aClassifier = #Element
		ifTrue: [ ^ true ].
	^ sharedGeneralizations keys last = (self oclClassifierNameFrom: aClassifier)
]

{ #category : #printing }
OPUMLMetaElement >> printOn: aStream [
	super printOn: aStream.
	(self class selectors includes: #name)
		ifTrue: [ aStream
				<< '(';
				<< self name printString;
				<< ')' ]
]

{ #category : #'accessing - tags' }
OPUMLMetaElement >> removeTagAt: aKey [
	tags removeKey: aKey
]

{ #category : #accessing }
OPUMLMetaElement >> removeTagNamed: aKey [
	tags removeKey: aKey
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> stereotypeProperties [
	| props |
	props := OrderedCollection new.
	^ self appliedStereotypes
		flatCollect: [ :stereo | 
			| meta |
			meta := stereo umlMetaClass.
			(meta ownedAttributes reject: [ :each | each name beginsWith: 'base_' ])
				collect: [ :each | 
					{each name.
					meta name.
					stereo perform: each name asSymbol} ] ]
]

{ #category : #'accessing - tags' }
OPUMLMetaElement >> tagAt: aKey [
	^ tags at: aKey
]

{ #category : #'accessing - tags' }
OPUMLMetaElement >> tagAt: aKey ifAbsent: anAbsentBlock [
	^ tags at: aKey ifAbsent: anAbsentBlock
]

{ #category : #'accessing - tags' }
OPUMLMetaElement >> tagAt: aKey put: aValue [
	tags at: aKey put: aValue
]

{ #category : #'accessing - tags' }
OPUMLMetaElement >> tags [
	^ tags
]

{ #category : #accessing }
OPUMLMetaElement >> umlClassName [
	^ self className withoutPrefix: 'OPUML'
]

{ #category : #accessing }
OPUMLMetaElement >> umlMetaClass [
	^ OPUMLXMISpecsStorage metaClassFor: self
]

{ #category : #'accessing - stereotypes' }
OPUMLMetaElement >> unapplyStereotype: aStereotype [
	| meta attribute |
	self appliedStereotypes remove: aStereotype ifAbsent: [  ].
	meta := aStereotype umlMetaClass.
	attribute := (meta allAttributes select: [ :each | each name beginsWith: 'base_' ])
		detect: [ :each | self oclIsKindOf: each type name ].
	self perform: (attribute opposite name , ':') asSymbol with: nil
]

{ #category : #accessing }
OPUMLMetaElement >> uuid [
	^ uuid ifNil: [ uuid := UUID new ]
]

{ #category : #accessing }
OPUMLMetaElement >> uuid: aUUID [
	uuid := aUUID
]
