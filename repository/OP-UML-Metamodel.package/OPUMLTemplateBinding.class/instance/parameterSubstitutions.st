accessing
parameterSubstitutions
	"The TemplateParameterSubstitutions owned by this TemplateBinding."
	^ parameterSubstitutions ifNil: [ parameterSubstitutions := OPUMLToManyLinks on: self opposite: #templateBinding: ]