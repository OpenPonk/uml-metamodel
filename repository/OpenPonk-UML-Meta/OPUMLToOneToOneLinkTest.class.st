Class {
	#name : 'OPUMLToOneToOneLinkTest',
	#superclass : 'TestCase',
	#category : 'OpenPonk-UML-Meta-Tests',
	#package : 'OpenPonk-UML-Meta',
	#tag : 'Tests'
}

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
