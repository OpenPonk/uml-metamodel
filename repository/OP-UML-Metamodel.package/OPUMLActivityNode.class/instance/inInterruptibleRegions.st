accessing
inInterruptibleRegions
	"InterruptibleActivityRegions containing the ActivityNode."
	^ inInterruptibleRegions ifNil: [ inInterruptibleRegions := OPUMLManyToManyLinks on: self opposite: #nodes ]