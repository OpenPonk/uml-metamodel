accessing
variables
	"Top-level Variables defined by the Activity."
	^ variables ifNil: [ variables := OrderedCollection new ]