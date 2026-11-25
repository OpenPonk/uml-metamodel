"
I am a metaclass for UML classes implementing some behavior for managing the classes and other stuff (like an announcer).
"
Class {
	#name : 'OPUMLMetaElement',
	#superclass : 'Object',
	#instVars : [
		'directGeneralizations',
		'sharedGeneralizations',
		'tags',
		'uuid'
	],
	#category : 'OpenPonk-UML-Metamodel-Meta',
	#package : 'OpenPonk-UML-Metamodel',
	#tag : 'Meta'
}

{ #category : 'instance creation' }
OPUMLMetaElement class >> newOnShared: aDictionary [
	^ self basicNew
		initializeWithShared: aDictionary;
		yourself
]

{ #category : 'accessing - stereotypes' }
OPUMLMetaElement >> appliedStereotypes [
	^ self tags at: #appliedStereotypes ifAbsentPut: [ OrderedCollection new ]
]

{ #category : 'accessing - stereotypes' }
OPUMLMetaElement >> applyStereotype: aStereotype [

	(self appliedStereotypes anySatisfy: [ :any | any oclIsTypeOf: aStereotype umlClassName ]) ifTrue: [ ^ self ].
	self appliedStereotypes add: aStereotype.
	self setExtensionFor: aStereotype to: aStereotype
]

{ #category : 'accessing - tags' }
OPUMLMetaElement >> hasTagAt: aKey [
	^ tags includesKey: aKey
]

{ #category : 'accessing' }
OPUMLMetaElement >> identity [
	^ sharedGeneralizations values last
]

{ #category : 'initialization' }
OPUMLMetaElement >> initialize [
	super initialize.
	sharedGeneralizations := OrderedDictionary new.
	tags := OrderedDictionary new.
	self initializeSharedGeneralizations.
	self initializeDirectGeneralizations
]

{ #category : 'initialization' }
OPUMLMetaElement >> initializeDirectGeneralizations [
	^ self subclassResponsibility
]

{ #category : 'initialization' }
OPUMLMetaElement >> initializeSharedGeneralizations [
	^ self subclassResponsibility
]

{ #category : 'initialization' }
OPUMLMetaElement >> initializeWithShared: aDictionary [
	super initialize.
	sharedGeneralizations := aDictionary.
	self initializeDirectGeneralizations
]

{ #category : 'inspecting' }
OPUMLMetaElement >> inspectionAllProperties: aBuilder [

	<inspectorPresentationOrder: 6 title: 'Properties (All)'>
	^ aBuilder newTable
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

{ #category : 'inspecting' }
OPUMLMetaElement >> inspectionGeneralizations: aBuilder [

	<inspectorPresentationOrder: 8 title: 'Generalizations'>
	^ aBuilder newTable
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

{ #category : 'inspecting' }
OPUMLMetaElement >> inspectionProperties: aBuilder [

	<inspectorPresentationOrder: 5 title: 'Properties'>
	^ aBuilder newTable
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

{ #category : 'inspecting' }
OPUMLMetaElement >> inspectionStereotypeProperties: aBuilder [

	<inspectorPresentationOrder: 7 title: 'Tagged Values'>
	^ aBuilder newTable
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

{ #category : 'inspecting' }
OPUMLMetaElement >> inspectionStereotypes: aBuilder [

	<inspectorPresentationOrder: 7 title: 'Stereotypes'>
	^ aBuilder newList
		  items: (self appliedStereotypes sorted: [ :a :b | 
					   a umlClassName < b umlClassName ]);
		  yourself
]

{ #category : 'inspecting' }
OPUMLMetaElement >> inspectionTags: aBuilder [

	<inspectorPresentationOrder: 7 title: 'Tags'>
	^ aBuilder newTable
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

{ #category : 'inspecting' }
OPUMLMetaElement >> inspectorProperties [
	^ self inspectorPropertiesSelectors collect: [ :each | each -> (self perform: each) ]
]

{ #category : 'inspecting' }
OPUMLMetaElement >> inspectorPropertiesSelectors [

	| classes class |
	classes := Set new.
	class := self class.
	[ class superclass name = 'Object' ] whileFalse: [
			classes add: class.
			class := class superclass ].
	^ ((((classes flatCollect: #methods) select: [ :each |
		     each numArgs = 0 ]) select: [ :each |
		    each protocolName beginsWith: 'accessing' ]) collect: #selector)
		  sorted
]

{ #category : 'copying' }
OPUMLMetaElement >> isBidirectionalToOneSlotNamed: aSlotName [

	| setter |
	setter := self class lookupSelector: (aSlotName , ':') asSymbol.
	^ setter isNotNil and: [ setter refersToLiteral: OPUMLToOneLink binding ]
]

{ #category : 'accessing' }
OPUMLMetaElement >> metaElementClass [

	^ OPUMLMetaElement
]

{ #category : 'inspecting' }
OPUMLMetaElement >> nonEmptyinspectorProperties [
	^ self inspectorProperties
		reject: [ :pair | pair value isNil or: [ pair value isCollection and: [ pair value isEmpty ] ] ]
]

{ #category : 'ocl-experimental' }
OPUMLMetaElement >> oclAsType: aClassifier [
	^ sharedGeneralizations at: (self oclClassifierNameFrom: aClassifier)
]

{ #category : 'ocl-experimental' }
OPUMLMetaElement >> oclClassifierNameFrom: anObject [

	(anObject isKindOf: self metaElementClass class) ifTrue: [ ^ anObject name withoutPrefix: self umlClassPrefix ].
	(anObject isKindOf: self metaElementClass) ifTrue: [ ^ anObject name ].
	anObject isString ifTrue: [ ^ anObject ].
	self error: 'Unknown classifier ' , anObject asString
]

{ #category : 'ocl-experimental' }
OPUMLMetaElement >> oclIsKindOf: aClassifier [
	"Element is not part of the shared generalization, so extra check is needed."
	aClassifier = #Element
		ifTrue: [ ^ true ].
	^ sharedGeneralizations includesKey: (self oclClassifierNameFrom: aClassifier)
]

{ #category : 'ocl-experimental' }
OPUMLMetaElement >> oclIsTypeOf: aClassifier [

	^ sharedGeneralizations keys last = (self oclClassifierNameFrom: aClassifier)
]

{ #category : 'copying' }
OPUMLMetaElement >> postCopy [

	| originalShared copiedShared |
	super postCopy.
	uuid := nil.
	tags ifNotNil: [
			| originalTags |
			originalTags := tags.
			tags := OrderedDictionary new.
			originalTags keysAndValuesDo: [ :key :value |
				(key = #appliedStereotypes or: [ key asString beginsWith: 'extension_' ]) ifFalse: [ tags at: key put: value ] ] ].
	sharedGeneralizations ifNil: [
			self postCopyResetSliceSlots.
			^ self ].
	originalShared := sharedGeneralizations.
	copiedShared := OrderedDictionary new: originalShared size.
	originalShared keysAndValuesDo: [ :key :slice |
			copiedShared at: key put: (slice class == self class
					 ifTrue: [ self ]
					 ifFalse: [ slice shallowCopy ]) ].
	copiedShared valuesDo: [ :eachSlice | eachSlice postCopySliceWithShared: copiedShared ]
]

{ #category : 'copying' }
OPUMLMetaElement >> postCopyResetSliceSlots [

	| metaSlotNames |
	metaSlotNames := self metaElementClass instVarNames.
	self class allInstVarNames do: [ :slotName |
			(metaSlotNames includes: slotName) ifFalse: [
					| currentValue |
					currentValue := self instVarNamed: slotName.
					currentValue ifNotNil: [ self instVarNamed: slotName put: (self postCopySlotValue: currentValue forSlotNamed: slotName) ] ] ]
]

{ #category : 'copying' }
OPUMLMetaElement >> postCopySliceWithShared: aDictionary [

	sharedGeneralizations := aDictionary.
	self initializeDirectGeneralizations.
	self postCopyResetSliceSlots
]

{ #category : 'copying' }
OPUMLMetaElement >> postCopySlotValue: aValue forSlotNamed: aSlotName [

	(aValue isKindOf: OPUMLToManyLinks) ifTrue: [ ^ nil ].
	aValue class == OrderedCollection ifTrue: [ ^ aValue copy ].
	(self isBidirectionalToOneSlotNamed: aSlotName) ifTrue: [ ^ nil ].
	^ aValue
]

{ #category : 'printing' }
OPUMLMetaElement >> printAsClassifierNameOn: aStream [

	aStream << (self oclClassifierNameFrom: self class).
	(self respondsTo: #name) ifTrue: [
			aStream
				<< '(';
				<< self name printString;
				<< ')' ]
]

{ #category : 'printing' }
OPUMLMetaElement >> printOn: aStream [

	super printOn: aStream.
	(self respondsTo: #name) ifTrue: [
			aStream
				<< '(';
				<< self name printString;
				<< ')' ]
]

{ #category : 'accessing - tags' }
OPUMLMetaElement >> removeTagAt: aKey [
	tags removeKey: aKey
]

{ #category : 'accessing - stereotypes' }
OPUMLMetaElement >> setExtensionFor: aStereotype to: aValue [

	| meta attribute |
	meta := aStereotype umlMetaClass.
	attribute := (meta allAttributes select: [ :each | each name beginsWith: 'base_' ]) detect: [ :each |
		             self oclIsKindOf: each type name ].
	self perform: (attribute opposite name , ':') asSymbol with: aValue
]

{ #category : 'inspecting' }
OPUMLMetaElement >> stereotypeProperties [
	^ self appliedStereotypes flatCollect: [ :stereo |
		| meta |
		meta := stereo umlMetaClass.
		(meta allAttributes reject: [ :each |
			each name beginsWith: 'base_' ]) collect: [ :each |
				{
					each name.
					meta name.
					(stereo perform: each name asSymbol) } ] ]
]

{ #category : 'accessing - tags' }
OPUMLMetaElement >> tagAt: aKey [
	^ tags at: aKey
]

{ #category : 'accessing - tags' }
OPUMLMetaElement >> tagAt: aKey ifAbsent: anAbsentBlock [
	^ tags at: aKey ifAbsent: anAbsentBlock
]

{ #category : 'accessing - tags' }
OPUMLMetaElement >> tagAt: aKey put: aValue [
	tags at: aKey put: aValue
]

{ #category : 'accessing - tags' }
OPUMLMetaElement >> tags [
	^ tags
]

{ #category : 'accessing' }
OPUMLMetaElement >> umlClassName [

	^ self className withoutPrefix: self umlClassPrefix
]

{ #category : 'accessing' }
OPUMLMetaElement >> umlClassPrefix [

	^ 'OPUML'
]

{ #category : 'accessing' }
OPUMLMetaElement >> umlMetaClass [
	^ OPUMLXMISpecsStorage metaClassFor: self
]

{ #category : 'accessing - stereotypes' }
OPUMLMetaElement >> unapplyStereotype: aStereotype [

	self appliedStereotypes remove: aStereotype ifAbsent: [ ].
	self setExtensionFor: aStereotype to: nil
]

{ #category : 'accessing' }
OPUMLMetaElement >> uuid [
	^ uuid ifNil: [ uuid := UUID new ]
]

{ #category : 'accessing' }
OPUMLMetaElement >> uuid: aUUID [
	uuid := aUUID
]
