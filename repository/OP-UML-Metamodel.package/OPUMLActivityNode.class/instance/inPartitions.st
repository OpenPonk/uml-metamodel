accessing
inPartitions
	"ActivityPartitions containing the ActivityNode."
	^ inPartitions ifNil: [ inPartitions := OPUMLManyToManyLinks on: self opposite: #nodes ]