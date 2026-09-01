"
I am a mock domain model representing an author. I am used exclusively for testing UML bidirectional links with OPUMLTestBook.
"
Class {
	#name : 'OPUMLTestAuthor',
	#superclass : 'Object',
	#instVars : [
		'books'
	],
	#category : 'OpenPonk-UML-Meta-Tests',
	#package : 'OpenPonk-UML-Meta',
	#tag : 'Tests'
}

{ #category : 'accessing' }
OPUMLTestAuthor >> books [
	^ books ifNil: [ books := OPUMLManyToManyLinks on: self opposite: #authors ]
]

{ #category : 'accessing' }
OPUMLTestAuthor >> books: aCollection [
	self books
		removeAll;
		addAll: aCollection
]
