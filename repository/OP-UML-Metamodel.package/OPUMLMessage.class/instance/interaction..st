accessing
interaction: anInteraction
	"The enclosing Interaction owning the Message."
	interaction := OPUMLToOneLink
		on: self
		update: #messages
		from: interaction
		to: anInteraction