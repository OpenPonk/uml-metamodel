accessing
extends
	"The Extend relationships owned by this UseCase."
	^ extends ifNil: [ extends := OrderedCollection new ]