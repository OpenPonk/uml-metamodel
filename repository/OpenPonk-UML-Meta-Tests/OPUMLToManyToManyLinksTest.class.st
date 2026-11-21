"
I am a unit test class verifying the automatic synchronization behavior of OPUMLManyToManyLinks within a many-to-many relationship context.
"
Class {
	#name : 'OPUMLToManyToManyLinksTest',
	#superclass : 'TestCase',
	#category : 'OpenPonk-UML-Meta-Tests-Models',
	#package : 'OpenPonk-UML-Meta-Tests',
	#tag : 'Models'
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
OPUMLToManyToManyLinksTest >> testAddDuplicateIsIdempotent [

	| author book added |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	author books add: book.
	added := author books add: book.
	self assert: added identicalTo: book.
	self assert: author books asArray equals: { book }.
	self assert: book authors asArray equals: { author }
]

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testAddToMore [

	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: { book }.
	self assert: book authors asArray equals: { author }.
	book2 authors add: author.
	self assert: author books asArray equals: {
			book.
			book2 }.
	self assert: book authors asArray equals: { author }.
	self assert: book2 authors asArray equals: { author }
]

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testRemove [

	| author book removed |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: { book }.
	self assert: book authors asArray equals: { author }.
	removed := author books remove: book.
	self assert: removed identicalTo: book.
	self assertEmpty: author books.
	self assertEmpty: book authors
]

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testRemoveAbsent [

	| author book result |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	result := author books remove: book ifAbsent: [ #missing ].
	self assert: result equals: #missing.
	self assertEmpty: author books
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

{ #category : 'tests' }
OPUMLToManyToManyLinksTest >> testStonRoundtrip [

	| author book ston restored restoredBook extraBook |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	author books add: book.
	ston := STON toString: author.
	restored := STON fromString: ston.
	self assert: restored books class identicalTo: OPUMLManyToManyLinks.
	self assert: restored books owner identicalTo: restored.
	self assert: restored books oppositeSelector equals: #authors.
	self assert: restored books size equals: 1.
	restoredBook := restored books first.
	self assert: restoredBook authors asArray equals: { restored }.
	extraBook := OPUMLTestBook new.
	restored books add: extraBook.
	self assert: extraBook authors asArray equals: { restored }.
	restored books remove: restoredBook.
	self assertEmpty: restoredBook authors.
	self assert: restored books asArray equals: { extraBook }
]
