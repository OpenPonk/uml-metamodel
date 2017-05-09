accessing
boundElement: aTemplateableElement
	"The TemplateableElement that is bound by this TemplateBinding."
	boundElement := OPUMLToOneLink
		on: self
		update: #templateBindings
		from: boundElement
		to: aTemplateableElement