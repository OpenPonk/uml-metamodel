accessing
inGroups
	"ActivityGroups containing the ActivityEdge."
	^ inGroups ifNil: [ inGroups := OPUMLManyToManyLinks on: self opposite: #containedEdges ]