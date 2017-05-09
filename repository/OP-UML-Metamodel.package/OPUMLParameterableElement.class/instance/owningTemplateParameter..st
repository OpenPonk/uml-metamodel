accessing
owningTemplateParameter: aTemplateParameter
	"The formal TemplateParameter that owns this ParameterableElement."
	|anOldOwningTemplateParameter|
	anOldOwningTemplateParameter := owningTemplateParameter.
	owningTemplateParameter := aTemplateParameter.
	OPUMLToOneLink
		on: self
		thisSelector: #owningTemplateParameter
		otherSelector: #ownedParameteredElement
		from: anOldOwningTemplateParameter
		to: owningTemplateParameter