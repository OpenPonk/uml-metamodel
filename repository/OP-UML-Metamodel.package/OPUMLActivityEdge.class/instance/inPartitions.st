accessing
inPartitions
	"ActivityPartitions containing the ActivityEdge."
	^ inPartitions ifNil: [ inPartitions := OrderedCollection new ]