Class {
	#name : 'OPUMLToManyLinksTest',
	#superclass : 'TestCase',
	#category : 'OP-UML-Meta-Tests',
	#package : 'OP-UML-Meta',
	#tag : 'Tests'
}

{ #category : 'tests' }
OPUMLToManyLinksTest >> testAdd [
	| book review |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	self assert: book reviews asArray equals: {review}.
	self assert: review book equals: book
]

{ #category : 'tests' }
OPUMLToManyLinksTest >> testAddMove [
	| book book2 review |
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	book2 reviews add: review.
	self assert: book reviews asArray equals: #().
	self assert: book2 reviews asArray equals: {review}.
	self assert: review book equals: book2
]

{ #category : 'tests' }
OPUMLToManyLinksTest >> testCreate [
	| book |
	book := OPUMLTestBook new.
	self assert: book reviews owner equals: book.
	self assert: book reviews oppositeSelector equals: #book:
]

{ #category : 'tests' }
OPUMLToManyLinksTest >> testRemove [
	| book review |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	self assert: book reviews asArray equals: {review}.
	book reviews remove: review.
	self assert: book reviews asArray equals: #().
	self assert: review book equals: nil
]

{ #category : 'tests' }
OPUMLToManyLinksTest >> testRemoveAll [

	| book review1 review2 |
	book := OPUMLTestBook new.
	review1 := OPUMLTestReview new.
	review2 := OPUMLTestReview new.
	book reviews
		add: review1;
		add: review2.
	self assert: book reviews asArray equals: { 
			review1.
			review2 }.
	book reviews removeAll.
	self assert: book reviews asArray equals: #(  ).
	self assert: review1 book equals: nil.
	self assert: review2 book equals: nil
]

{ #category : 'tests' }
OPUMLToManyLinksTest >> testReset [
	| book review review2 |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	review2 := OPUMLTestReview new.
	book reviews add: review.
	self assert: book reviews asArray equals: {review}.
	book reviews: {review2}.
	self assert: book reviews asArray equals: {review2}.
	self assert: review book equals: nil.
	self assert: review2 book equals: book
]
