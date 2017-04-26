accessing
nodes
	"ActivityNodes immediately contained in the ActivityPartition."
	^ nodes ifNil: [ nodes := OrderedCollection new ]