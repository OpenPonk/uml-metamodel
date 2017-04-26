accessing
regions
	"The Regions owned directly by the StateMachine."
	^ regions ifNil: [ regions := OrderedCollection new ]