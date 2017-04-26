accessing
inPartitions
	"ActivityPartitions containing the ActivityNode."
	^ inPartitions ifNil: [ inPartitions := OrderedCollection new ]