accessing
containedEdges
	"ActivityEdges immediately contained in the ActivityGroup."
	^ containedEdges ifNil: [ containedEdges := OPUMLManyToManyLinks on: self opposite: #inGroups ]