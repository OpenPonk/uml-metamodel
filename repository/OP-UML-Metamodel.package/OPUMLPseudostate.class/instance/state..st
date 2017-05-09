accessing
state: aState
	"The State that owns this Pseudostate and in which it appears."
	state := OPUMLToOneLink
		on: self
		update: #connectionPoints
		from: state
		to: aState