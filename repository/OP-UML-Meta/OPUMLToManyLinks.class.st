Class {
	#name : 'OPUMLToManyLinks',
	#superclass : 'Collection',
	#instVars : [
		'owner',
		'collection',
		'oppositeSelector'
	],
	#category : 'OP-UML-Meta-Models',
	#package : 'OP-UML-Meta',
	#tag : 'Models'
}

{ #category : 'instance creation' }
OPUMLToManyLinks class >> fromSton: stonReader [

	^ self new
		  fromSton: stonReader;
		  yourself
]

{ #category : 'instance creation' }
OPUMLToManyLinks class >> on: anObject opposite: aSelector [
	^ self new setOwner: anObject opposite: aSelector
]

{ #category : 'adding' }
OPUMLToManyLinks >> add: aNewObject [
	(self isUnique and: [ self includes: aNewObject ])
		ifTrue: [ ^ aNewObject ].
	self uncheckedAdd: aNewObject.
	self addOppositeTo: aNewObject.
	^ aNewObject
]

{ #category : 'adding' }
OPUMLToManyLinks >> addOppositeTo: anObject [
	anObject perform: oppositeSelector with: owner
]

{ #category : 'accessing' }
OPUMLToManyLinks >> at: anInteger [
	^ collection at: anInteger
]

{ #category : 'copying' }
OPUMLToManyLinks >> copyEmpty [
	^ collection copyEmpty 
]

{ #category : 'enumerating' }
OPUMLToManyLinks >> do: aBlock [
	collection do: aBlock
	
]

{ #category : 'copying' }
OPUMLToManyLinks >> first [
	^ collection first
]

{ #category : 'testing' }
OPUMLToManyLinks >> includes: anObject [
	^ collection includes: anObject
]

{ #category : 'adding' }
OPUMLToManyLinks >> initialize [
	super initialize.
	collection := OrderedCollection new
]

{ #category : 'testing' }
OPUMLToManyLinks >> isUnique [
	^ true
]

{ #category : 'accessing' }
OPUMLToManyLinks >> oppositeSelector [
	^ oppositeSelector
]

{ #category : 'accessing' }
OPUMLToManyLinks >> owner [
	^ owner
]

{ #category : 'removing' }
OPUMLToManyLinks >> remove: oldObject ifAbsent: anExceptionBlock [
	oldObject ifNil: [ "there is some oddity when instantiating metamodel" ^ self ].
	(collection includes: oldObject)
		ifFalse: [ ^ anExceptionBlock value ].
	self removeOppositeFrom: oldObject.
	collection remove: oldObject ifAbsent: [  ]
]

{ #category : 'removing' }
OPUMLToManyLinks >> removeAll [

	(OrderedCollection withAll: collection) do: [ :each | 
		self remove: each ]
]

{ #category : 'adding' }
OPUMLToManyLinks >> removeOppositeFrom: anObject [
	anObject perform: oppositeSelector with: nil
]

{ #category : 'copying' }
OPUMLToManyLinks >> second [
	^ collection second
]

{ #category : 'initialization' }
OPUMLToManyLinks >> setOwner: anObject opposite: aSelector [
	owner := anObject.
	oppositeSelector := aSelector
]

{ #category : 'accessing' }
OPUMLToManyLinks >> size [
	^ collection size
]

{ #category : 'private' }
OPUMLToManyLinks >> species [
	^ OrderedCollection
]

{ #category : 'ston persistence' }
OPUMLToManyLinks >> stonOn: stonWriter [

	stonWriter writeObject: self
]

{ #category : 'adding' }
OPUMLToManyLinks >> uncheckedAdd: anObject [
	^ collection addIfNotPresent: anObject
]

{ #category : 'adding' }
OPUMLToManyLinks >> uncheckedRemove: anObject [
	collection remove: anObject
]
