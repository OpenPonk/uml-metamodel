"
I am a unit test class verifying the automatic synchronization behavior of OPUMLToManyLinks within a one-to-many relationship context.
"
Class {
	#name : 'OPUMLToManyLinksTest',
	#superclass : 'TestCase',
	#category : 'OpenPonk-UML-Meta-Tests-Models',
	#package : 'OpenPonk-UML-Meta-Tests',
	#tag : 'Models'
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
OPUMLToManyLinksTest >> testAddDuplicateIsIdempotent [

	| book review added |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	added := book reviews add: review.
	self assert: added identicalTo: review.
	self assert: book reviews asArray equals: { review }.
	self assert: review book identicalTo: book
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
OPUMLToManyLinksTest >> testAtFirstSecond [

	| book review1 review2 |
	book := OPUMLTestBook new.
	review1 := OPUMLTestReview new.
	review2 := OPUMLTestReview new.
	book reviews
		add: review1;
		add: review2.
	self assert: (book reviews at: 1) identicalTo: review1.
	self assert: (book reviews at: 2) identicalTo: review2.
	self assert: book reviews first identicalTo: review1.
	self assert: book reviews second identicalTo: review2
]

{ #category : 'tests' }
OPUMLToManyLinksTest >> testCopyDoesNotShareInternalCollection [
	| book links linksCopy |
	book := OPUMLTestBook new.
	links := book reviews.
	links add: OPUMLTestReview new.
	linksCopy := links copy.

	self deny: (links instVarNamed: #collection) == (linksCopy instVarNamed: #collection)
		description: 'Copied OPUMLToManyLinks must not share its internal collection instance'
]

{ #category : 'tests' }
OPUMLToManyLinksTest >> testCopyEmptyAndSpecies [

	| book review1 review2 emptyCopy selected |
	book := OPUMLTestBook new.
	review1 := OPUMLTestReview new.
	review2 := OPUMLTestReview new.
	book reviews
		add: review1;
		add: review2.
	emptyCopy := book reviews copyEmpty.
	self assert: emptyCopy class identicalTo: OrderedCollection.
	self assertEmpty: emptyCopy.
	self assert: book reviews species identicalTo: OrderedCollection.
	selected := book reviews select: [ :each | each == review2 ].
	self assert: selected class identicalTo: OrderedCollection.
	self assert: selected asArray equals: { review2 }
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
OPUMLToManyLinksTest >> testRemoveAbsent [

	| book review result |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	result := book reviews remove: review ifAbsent: [ #missing ].
	self assert: result equals: #missing.
	self assertEmpty: book reviews
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
OPUMLToManyLinksTest >> testRemoveNil [

	| book review result |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	result := book reviews remove: nil ifAbsent: [ #missing ].
	self assert: result identicalTo: book reviews.
	self assert: book reviews asArray equals: { review }
]

{ #category : 'tests' }
OPUMLToManyLinksTest >> testRemoveReturnsRemovedObject [

	| book review removed |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	removed := book reviews remove: review.
	self assert: removed identicalTo: review
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

{ #category : 'tests' }
OPUMLToManyLinksTest >> testStonRoundtrip [

	| book review ston restored restoredReview extraReview |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	ston := STON toString: book.
	restored := STON fromString: ston.
	self assert: restored reviews class identicalTo: OPUMLToManyLinks.
	self assert: restored reviews owner identicalTo: restored.
	self assert: restored reviews oppositeSelector equals: #book:.
	self assert: restored reviews size equals: 1.
	restoredReview := restored reviews first.
	self assert: restoredReview book identicalTo: restored.
	extraReview := OPUMLTestReview new.
	restored reviews add: extraReview.
	self assert: extraReview book identicalTo: restored.
	restored reviews remove: restoredReview.
	self assert: restoredReview book equals: nil.
	self assert: restored reviews asArray equals: { extraReview }
]
