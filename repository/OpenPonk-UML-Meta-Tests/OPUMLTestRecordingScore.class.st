"
Recording test double that tracks every review assignment made during one-to-one link updates to verify absence of transient nil overwrites.
"
Class {
	#name : 'OPUMLTestRecordingScore',
	#superclass : 'OPUMLTestScore',
	#instVars : [
		'assignedReviews'
	],
	#category : 'OpenPonk-UML-Meta-Tests-Models',
	#package : 'OpenPonk-UML-Meta-Tests',
	#tag : 'Models'
}

{ #category : 'accessing' }
OPUMLTestRecordingScore >> assignedReviews [

	^ assignedReviews ifNil: [ assignedReviews := OrderedCollection new ]
]

{ #category : 'initialization' }
OPUMLTestRecordingScore >> resetAssignedReviews [

	assignedReviews := OrderedCollection new
]

{ #category : 'accessing' }
OPUMLTestRecordingScore >> review: aNewReview [

	self assignedReviews add: aNewReview.
	super review: aNewReview
]
