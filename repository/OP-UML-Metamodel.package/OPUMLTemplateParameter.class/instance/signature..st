accessing
signature: aTemplateSignature
	"The TemplateSignature that owns this TemplateParameter."
	signature := OPUMLToOneLink
		on: self
		update: #ownedParameters
		from: signature
		to: aTemplateSignature