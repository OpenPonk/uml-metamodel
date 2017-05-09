accessing
regionAsInput: anExpansionRegion
	"The ExpansionRegion for which the ExpansionNode is an input."
	regionAsInput := OPUMLToOneLink
		on: self
		update: #inputElements
		from: regionAsInput
		to: anExpansionRegion