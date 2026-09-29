"
I am a mock domain model representing a review. I am used exclusively for testing UML bidirectional links, maintaining relationships with OPUMLTestBook and OPUMLTestScore.
"
Class {
	#name : 'OPUMLTestReview',
	#superclass : 'Object',
	#instVars : [
		'book',
		'score'
	],
	#category : 'OpenPonk-UML-Meta-Tests',
	#package : 'OpenPonk-UML-Meta',
	#tag : 'Tests'
}

{ #category : 'accessing' }
OPUMLTestReview >> book [
	^ book
]

{ #category : 'accessing' }
OPUMLTestReview >> book: aBook [
	book := OPUMLToOneLink
		on: self
		update: #reviews
		from: book
		to: aBook
]

{ #category : 'accessing' }
OPUMLTestReview >> score [
	^ score
]

{ #category : 'accessing' }
OPUMLTestReview >> score: aNewScore [
	| oldScore |
	oldScore := score.
	score := aNewScore.
	OPUMLToOneLink
		on: self
		thisSelector: #score
		otherSelector: #review
		updateFrom: oldScore
		to: aNewScore
]
