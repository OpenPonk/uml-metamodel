accessing
context: aNamespace
	"Specifies the Namespace that owns the Constraint."
	context := OPUMLToOneLink
		on: self
		update: #ownedRules
		from: context
		to: aNamespace