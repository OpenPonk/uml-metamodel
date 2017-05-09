accessing
scope: aStructuredActivityNode
	"A StructuredActivityNode that owns the Variable."
	scope := OPUMLToOneLink
		on: self
		update: #variables
		from: scope
		to: aStructuredActivityNode