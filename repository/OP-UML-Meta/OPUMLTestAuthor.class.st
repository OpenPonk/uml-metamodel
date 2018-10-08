Class {
	#name : #OPUMLTestAuthor,
	#superclass : #Object,
	#instVars : [
		'books'
	],
	#category : 'OP-UML-Meta-Tests'
}

{ #category : #accessing }
OPUMLTestAuthor >> books [
	^ books ifNil: [ books := OPUMLManyToManyLinks on: self opposite: #authors ]
]

{ #category : #accessing }
OPUMLTestAuthor >> books: aCollection [
	self books
		removeAll;
		addAll: aCollection
]
