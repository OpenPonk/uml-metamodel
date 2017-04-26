accessing
templateBindings
	"The optional TemplateBindings from this TemplateableElement to one or more templates."
	^ templateBindings ifNil: [ templateBindings := OrderedCollection new ]