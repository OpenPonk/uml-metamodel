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
	#category : #'OP-UML-Metamodel-Meta'
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
	(self appliedStereotypes anySatisfy: [ :any | 
		 any oclIsTypeOf: aStereotype umlClassName ]) ifTrue: [ ^ self ].
	self appliedStereotypes add: aStereotype.
	meta := aStereotype umlMetaClass.
	attribute := (meta allAttributes select: [ :each | 
		              each name beginsWith: 'base_' ]) detect: [ :each | 
		             self oclIsKindOf: each type name ].
	self
		perform: (attribute opposite name , ':') asSymbol
		with: aStereotype
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
OPUMLMetaElement >> inspectionAllProperties [

	<inspectorPresentationOrder: 6 title: 'Properties (All)'>
	^ SpTablePresenter new
		  beResizable;
		  items: (self inspectorProperties sorted collect: [ :e |
					   StInspectorAssociationNode hostObject: e ]);
		  addColumn: (SpStringTableColumn new
				   title: 'Name';
				   evaluated: #key;
				   yourself);
		  addColumn: (SpStringTableColumn new
				   title: 'Value';
				   evaluated: #value;
				   yourself);
		  yourself
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> inspectionGeneralizations [

	<inspectorPresentationOrder: 8 title: 'Generalizations'>
	^ SpTablePresenter new
		  beResizable;
		  items: (sharedGeneralizations associations sorted collect: [ :e |
					   StInspectorAssociationNode hostObject: e ]);
		  addColumn: (SpStringTableColumn new
				   title: 'Name';
				   evaluated: #key;
				   yourself);
		  addColumn: (SpStringTableColumn new
				   title: 'Value';
				   evaluated: #value;
				   yourself);
		  yourself
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> inspectionProperties [

	<inspectorPresentationOrder: 5 title: 'Properties'>
	^ SpTablePresenter new
		  beResizable;
		  items: (self nonEmptyinspectorProperties sorted collect: [ :e |
					   StInspectorAssociationNode hostObject: e ]);
		  addColumn: (SpStringTableColumn new
				   title: 'Name';
				   evaluated: #key;
				   yourself);
		  addColumn: (SpStringTableColumn new
				   title: 'Value';
				   evaluated: #value;
				   yourself);
		  yourself
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> inspectionStereotypeProperties [

	<inspectorPresentationOrder: 7 title: 'Tagged Values'>
	^ SpTablePresenter new
		  beResizable;
		  items:
			  (self stereotypeProperties sorted: [ :a :b | a first < b first ]);
		  addColumn: (SpStringTableColumn new
				   title: 'Name';
				   evaluated: #first;
				   yourself);
		  addColumn: (SpStringTableColumn new
				   title: 'Stereotype';
				   evaluated: #second;
				   yourself);
		  addColumn: (SpStringTableColumn new
				   title: 'Value';
				   evaluated: #third;
				   yourself);
		  yourself
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> inspectionStereotypes [

	<inspectorPresentationOrder: 7 title: 'Stereotypes'>
	^ SpListPresenter new
		  items: (self appliedStereotypes sorted: [ :a :b | 
					   a umlClassName < b umlClassName ]);
		  yourself
]

{ #category : #'GTInspector - extensions' }
OPUMLMetaElement >> inspectionTags [

	<inspectorPresentationOrder: 7 title: 'Tags'>
	^ SpTablePresenter new
		  beResizable;
		  items: (self tags associations sorted collect: [ :e |
					   StInspectorAssociationNode hostObject: e ]);
		  addColumn: (SpStringTableColumn new
				   title: 'Name';
				   evaluated: #key;
				   yourself);
		  addColumn: (SpStringTableColumn new
				   title: 'Value';
				   evaluated: #value;
				   yourself);
		  yourself
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
