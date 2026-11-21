"
I am a unit test class verifying the automatic synchronization behavior managed by OPUMLToOneLink for a bidirectional one-to-one relationship.
"
Class {
	#name : 'OPUMLToOneToOneLinkTest',
	#superclass : 'TestCase',
	#category : 'OpenPonk-UML-Meta-Tests-Models',
	#package : 'OpenPonk-UML-Meta-Tests',
	#tag : 'Models'
}

{ #category : 'tests' }
OPUMLToOneToOneLinkTest >> testAssignOccupiedTargetFromNil [

	| review score1 score2 |
	review := OPUMLTestReview new.
	score1 := OPUMLTestScore new.
	score2 := OPUMLTestScore new.
	score2 review: review.
	score1 review: review.
	self assert: score1 review identicalTo: review.
	self assert: review score identicalTo: score1.
	self assert: score2 review equals: nil
]

{ #category : 'tests' }
OPUMLToOneToOneLinkTest >> testChange [
	| review1 score1 review2 score2 |
	review1 := OPUMLTestReview new.
	score1 := OPUMLTestScore new.
	review2 := OPUMLTestReview new.
	score2 := OPUMLTestScore new.
	score1 review: review1.
	score2 review: review2.
	self assert: review1 score equals: score1.
	self assert: score1 review equals: review1.
	self assert: review2 score equals: score2.
	self assert: score2 review equals: review2.
	score1 review: review2.
	self assert: score1 review equals: review2.
	self assert: review2 score equals: score1.
	self assert: score2 review equals: nil.
	self assert: review1 score equals: nil
]

{ #category : 'tests' }
OPUMLToOneToOneLinkTest >> testChangeDoesNotTransientlyClearOwner [

	| review1 score1 review2 score2 |
	review1 := OPUMLTestReview new.
	score1 := OPUMLTestRecordingScore new.
	review2 := OPUMLTestReview new.
	score2 := OPUMLTestRecordingScore new.
	score1 review: review1.
	score2 review: review2.
	score1 resetAssignedReviews.
	score2 resetAssignedReviews.
	score1 review: review2.
	self assert: score1 assignedReviews asArray equals: { review2 }.
	self assert: score2 assignedReviews asArray equals: { nil }
]

{ #category : 'tests' }
OPUMLToOneToOneLinkTest >> testChangeToUnoccupiedTarget [

	| review1 review2 score |
	review1 := OPUMLTestReview new.
	review2 := OPUMLTestReview new.
	score := OPUMLTestScore new.
	score review: review1.
	score review: review2.
	self assert: score review identicalTo: review2.
	self assert: review2 score identicalTo: score.
	self assert: review1 score equals: nil
]

{ #category : 'tests' }
OPUMLToOneToOneLinkTest >> testRemove [

	| review score |
	review := OPUMLTestReview new.
	score := OPUMLTestScore new.
	score review: review.
	score review: nil.
	self assert: score review equals: nil.
	self assert: review score equals: nil
]

{ #category : 'tests' }
OPUMLToOneToOneLinkTest >> testSet [
	| review score |
	review := OPUMLTestReview new.
	score := OPUMLTestScore new.
	review score: score.
	self assert: review score equals: score.
	self assert: score review equals: review
]

{ #category : 'tests' }
OPUMLToOneToOneLinkTest >> testSetOther [
	| review score |
	review := OPUMLTestReview new.
	score := OPUMLTestScore new.
	score review: review.
	self assert: review score equals: score.
	self assert: score review equals: review
]

{ #category : 'tests' }
OPUMLToOneToOneLinkTest >> testSetSameObjectIsIdempotent [

	| review score |
	review := OPUMLTestReview new.
	score := OPUMLTestRecordingScore new.
	score review: nil.
	self assert: score review equals: nil.
	score review: review.
	score resetAssignedReviews.
	score review: review.
	self assert: score review identicalTo: review.
	self assert: review score identicalTo: score.
	self assert: score assignedReviews asArray equals: { review }
]
