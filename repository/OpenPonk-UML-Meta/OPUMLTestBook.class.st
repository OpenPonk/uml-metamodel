Class {
	#name : 'OPUMLTestBook',
	#superclass : 'Object',
	#instVars : [
		'authors',
		'reviews'
	],
	#category : 'OpenPonk-UML-Meta-Tests',
	#package : 'OpenPonk-UML-Meta',
	#tag : 'Tests'
}

{ #category : 'accessing' }
OPUMLTestBook >> authors [
	^ authors ifNil: [ authors := OPUMLManyToManyLinks on: self opposite: #books ]
]

{ #category : 'accessing' }
OPUMLTestBook >> authors: aCollection [
	self authors
		removeAll;
		addAll: aCollection
]

{ #category : 'accessing' }
OPUMLTestBook >> reviews [
	^ reviews ifNil: [ reviews := OPUMLToManyLinks on: self opposite: #book: ]
]

{ #category : 'accessing' }
OPUMLTestBook >> reviews: aCollection [
	self reviews
		removeAll;
		addAll: aCollection
]
