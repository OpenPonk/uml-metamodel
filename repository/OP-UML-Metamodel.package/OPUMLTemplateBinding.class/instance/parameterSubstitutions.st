accessing
parameterSubstitutions
	"The TemplateParameterSubstitutions owned by this TemplateBinding."
	^ parameterSubstitutions ifNil: [ parameterSubstitutions := OrderedCollection new ]