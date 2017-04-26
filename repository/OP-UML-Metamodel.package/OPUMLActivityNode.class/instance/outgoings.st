accessing
outgoings
	"ActivityEdges that have the ActivityNode as their source."
	^ outgoings ifNil: [ outgoings := OrderedCollection new ]