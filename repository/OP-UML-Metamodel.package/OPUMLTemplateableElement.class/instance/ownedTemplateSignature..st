accessing
ownedTemplateSignature: aTemplateSignature
	"The optional TemplateSignature specifying the formal TemplateParameters for this TemplateableElement. If a TemplateableElement has a TemplateSignature, then it is a template."
	|anOldOwnedTemplateSignature|
	anOldOwnedTemplateSignature := ownedTemplateSignature.
	ownedTemplateSignature := aTemplateSignature.
	OPUMLToOneLink
		on: self
		thisSelector: #ownedTemplateSignature
		otherSelector: #template
		from: anOldOwnedTemplateSignature
		to: ownedTemplateSignature