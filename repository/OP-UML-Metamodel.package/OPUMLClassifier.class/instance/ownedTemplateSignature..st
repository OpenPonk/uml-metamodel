accessing
ownedTemplateSignature: aRedefinableTemplateSignature
	"The optional RedefinableTemplateSignature specifying the formal template parameters."
	|anOldOwnedTemplateSignature|
	anOldOwnedTemplateSignature := ownedTemplateSignature.
	ownedTemplateSignature := aRedefinableTemplateSignature.
	OPUMLToOneLink
		on: self
		thisSelector: #ownedTemplateSignature
		otherSelector: #classifier
		from: anOldOwnedTemplateSignature
		to: ownedTemplateSignature