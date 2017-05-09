accessing
parameteredElement: aConnectableElement
	"The ConnectableElement for this ConnectableElementTemplateParameter."
	|anOldParameteredElement|
	anOldParameteredElement := parameteredElement.
	parameteredElement := aConnectableElement.
	OPUMLToOneLink
		on: self
		thisSelector: #parameteredElement
		otherSelector: #templateParameter
		from: anOldParameteredElement
		to: parameteredElement