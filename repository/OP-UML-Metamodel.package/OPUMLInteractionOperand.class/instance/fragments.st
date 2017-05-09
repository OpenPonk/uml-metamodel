accessing
fragments
	"The fragments of the operand."
	^ fragments ifNil: [ fragments := OPUMLToManyLinks on: self opposite: #enclosingOperand: ]