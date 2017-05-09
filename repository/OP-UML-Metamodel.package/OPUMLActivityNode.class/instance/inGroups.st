accessing
inGroups
	"ActivityGroups containing the ActivityNode."
	^ inGroups ifNil: [ inGroups := OPUMLManyToManyLinks on: self opposite: #containedNodes ]