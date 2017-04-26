accessing
transitions
	"The set of Transitions owned by the Region."
	^ transitions ifNil: [ transitions := OrderedCollection new ]