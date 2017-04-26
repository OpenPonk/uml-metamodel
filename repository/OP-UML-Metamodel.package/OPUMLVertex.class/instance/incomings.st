accessing
incomings
	"Specifies the Transitions entering this Vertex."
	^ incomings ifNil: [ incomings := OrderedCollection new ]