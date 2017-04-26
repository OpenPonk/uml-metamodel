accessing
incomings
	"ActivityEdges that have the ActivityNode as their target."
	^ incomings ifNil: [ incomings := OrderedCollection new ]