accessing
source: aVertex
	"Designates the originating Vertex (State or Pseudostate) of the Transition."
	source := OPUMLToOneLink
		on: self
		update: #outgoings
		from: source
		to: aVertex