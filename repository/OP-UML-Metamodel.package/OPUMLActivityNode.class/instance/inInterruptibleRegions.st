accessing
inInterruptibleRegions
	"InterruptibleActivityRegions containing the ActivityNode."
	^ inInterruptibleRegions ifNil: [ inInterruptibleRegions := OrderedCollection new ]