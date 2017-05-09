accessing
container: aRegion
	"The Region that contains this Vertex."
	container := OPUMLToOneLink
		on: self
		update: #subvertexs
		from: container
		to: aRegion