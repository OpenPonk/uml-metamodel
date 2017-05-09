accessing
conformances
	"Conformance between ProtocolStateMachine "
	^ conformances ifNil: [ conformances := OPUMLToManyLinks on: self opposite: #specificMachine: ]