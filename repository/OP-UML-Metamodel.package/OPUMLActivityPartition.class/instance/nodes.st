accessing
nodes
	"ActivityNodes immediately contained in the ActivityPartition."
	^ nodes ifNil: [ nodes := OPUMLManyToManyLinks on: self opposite: #inPartitions ]