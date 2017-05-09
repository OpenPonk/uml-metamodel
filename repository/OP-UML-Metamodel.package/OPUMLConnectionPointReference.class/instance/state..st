accessing
state: aState
	"The State in which the ConnectionPointReference is defined."
	state := OPUMLToOneLink
		on: self
		update: #connections
		from: state
		to: aState