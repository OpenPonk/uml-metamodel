accessing
interaction: anInteraction
	"References the Interaction enclosing this Lifeline."
	interaction := OPUMLToOneLink
		on: self
		update: #lifelines
		from: interaction
		to: anInteraction