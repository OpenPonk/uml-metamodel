accessing
owner: anElement
	"The Element that owns this Element."
	owner := OPUMLToOneLink
		on: self
		update: #ownedElements
		from: owner
		to: anElement