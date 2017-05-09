accessing
specificMachine: aProtocolStateMachine
	"Specifies the ProtocolStateMachine which conforms to the general ProtocolStateMachine."
	specificMachine := OPUMLToOneLink
		on: self
		update: #conformances
		from: specificMachine
		to: aProtocolStateMachine