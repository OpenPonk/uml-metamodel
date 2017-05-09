accessing
parameteredElement: anOperation
	"The Operation exposed by this OperationTemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := anOperation.
	OPUMLToOneLink
		on: self
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement