accessing
templateBinding: aTemplateBinding
	"The TemplateBinding that owns this TemplateParameterSubstitution."
	templateBinding := OPUMLToOneLink
		on: self
		update: #parameterSubstitutions
		from: templateBinding
		to: aTemplateBinding