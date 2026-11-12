"
I am a mock domain model representing a score. I am used exclusively for testing UML bidirectional one-to-one links with OPUMLTestReview.
"
Class {
	#name : 'OPUMLTestScore',
	#superclass : 'Object',
	#instVars : [
		'review'
	],
	#category : 'OpenPonk-UML-Meta-Tests-Models',
	#package : 'OpenPonk-UML-Meta-Tests',
	#tag : 'Models'
}

{ #category : 'accessing' }
OPUMLTestScore >> review [
	^ review
]

{ #category : 'accessing' }
OPUMLTestScore >> review: aNewReview [
	| anOldReview |
	anOldReview := review.
	review := aNewReview.
	OPUMLToOneLink
		on: self
		thisSelector: #review
		otherSelector: #score
		updateFrom: anOldReview
		to: aNewReview
]
