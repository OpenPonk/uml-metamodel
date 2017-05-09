accessing
templateParameter: aTemplateParameter
	"The TemplateParameter that exposes this ParameterableElement as a formal parameter."
	|anOldTemplateParameter|
	anOldTemplateParameter := templateParameter.
	templateParameter := aTemplateParameter.
	OPUMLToOneLink
		on: self
		thisSelector: #templateParameter
		otherSelector: #parameteredElement
		from: anOldTemplateParameter
		to: templateParameter