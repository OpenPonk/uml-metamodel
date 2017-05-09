accessing
parameters
	"Parameters in the ParameterSet."
	^ parameters ifNil: [ parameters := OPUMLManyToManyLinks on: self opposite: #parameterSets ]