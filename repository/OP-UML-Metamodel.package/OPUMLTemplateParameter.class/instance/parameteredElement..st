accessing
parameteredElement: aParameterableElement
	"The ParameterableElement exposed by this TemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := aParameterableElement.
	OPUMLToOneLink
		on: self
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement