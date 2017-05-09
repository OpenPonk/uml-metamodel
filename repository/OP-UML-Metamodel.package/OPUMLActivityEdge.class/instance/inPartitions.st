accessing
inPartitions
	"ActivityPartitions containing the ActivityEdge."
	^ inPartitions ifNil: [ inPartitions := OPUMLManyToManyLinks on: self opposite: #edges ]