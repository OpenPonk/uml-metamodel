accessing
container: aRegion
	"Designates the Region that owns this Transition."
	container := OPUMLToOneLink
		on: self
		update: #transitions
		from: container
		to: aRegion