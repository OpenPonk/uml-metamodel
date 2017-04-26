accessing
nodes
	"ActivityNodes immediately contained in the InterruptibleActivityRegion."
	^ nodes ifNil: [ nodes := OrderedCollection new ]