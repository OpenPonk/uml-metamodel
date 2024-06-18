Class {
	#name : 'OPUMLToManyToManyLinksTest',
	#superclass : 'TestCase',
	#category : 'OP-UML-Meta-Tests',
	#package : 'OP-UML-Meta',
	#tag : 'Tests'
}

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testAdd [
	| author book |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}
]

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testAddToMore [
	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}.
	book2 authors add: author.
	self assert: book authors asArray equals: {author}.
	self assert: book2 authors asArray equals: {author}
]

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testRemove [
	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}.
	author books remove: book.
	self assert: author books asArray equals: #().
	self assert: book authors asArray equals: #()
]

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testSet [
	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}.
	book2 := OPUMLTestBook new.
	author books: {book2}.
	self assert: author books asArray equals: {book2}.
	self assert: book authors asArray equals: #().
	self assert: book2 authors asArray equals: {author}
]

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testSet2 [
	| author book author2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book authors add: author.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}.
	author2 := OPUMLTestAuthor new.
	book authors: {author2}.
	self assert: author books asArray equals: #().
	self assert: author2 books asArray equals: {book}.
	self assert: book authors asArray equals: {author2}
]

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testSetMultiple [
	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	author
		books:
			{book.
			book2}.
	self
		assert: author books asArray
		equals:
			{book.
			book2}.
	self assert: book authors asArray equals: {author}.
	self assert: book2 authors asArray equals: {author}
]
