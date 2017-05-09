accessing
outgoings
	"ActivityEdges that have the ActivityNode as their source."
	^ outgoings ifNil: [ outgoings := OPUMLToManyLinks on: self opposite: #source: ]