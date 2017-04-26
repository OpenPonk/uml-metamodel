accessing
outgoings
	"Specifies the Transitions departing from this Vertex."
	^ outgoings ifNil: [ outgoings := OrderedCollection new ]