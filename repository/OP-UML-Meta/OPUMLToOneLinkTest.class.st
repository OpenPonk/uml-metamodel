Class {
	#name : 'OPUMLToOneLinkTest',
	#superclass : 'TestCase',
	#category : 'OP-UML-Meta-Tests',
	#package : 'OP-UML-Meta',
	#tag : 'Tests'
}

{ #category : 'tests' }
OPUMLToOneLinkTest >> testChange [
	| book book2 review |
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	review := OPUMLTestReview new.
	review book: book.
	self assert: book reviews asArray equals: {review}.
	self assert: review book equals: book.
	review book: book2.
	self assert: book reviews asArray equals: #().
	self assert: book2 reviews asArray equals: {review}.
	self assert: review book equals: book2
]

{ #category : 'tests' }
OPUMLToOneLinkTest >> testRemove [
	| book review |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	review book: book.
	self assert: book reviews asArray equals: {review}.
	self assert: review book equals: book.
	review book: nil.
	self assert: book reviews asArray equals: #().
	self assert: review book equals: nil
]

{ #category : 'tests' }
OPUMLToOneLinkTest >> testSet [
	| book review |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	review book: book.
	self assert: book reviews asArray equals: {review}.
	self assert: review book equals: book
]
