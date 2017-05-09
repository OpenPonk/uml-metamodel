accessing
templateParameter: anOperationTemplateParameter
	"The OperationTemplateParameter that exposes this element as a formal parameter."
	|anOldTemplateParameter|
	anOldTemplateParameter := templateParameter.
	templateParameter := anOperationTemplateParameter.
	OPUMLToOneLink
		on: self
		thisSelector: #templateParameter
		otherSelector: #parameteredElement
		from: anOldTemplateParameter
		to: templateParameter