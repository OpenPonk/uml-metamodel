accessing
importingNamespace: aNamespace
	"Specifies the Namespace that imports the members from a Package."
	importingNamespace := OPUMLToOneLink
		on: self
		update: #packageImports
		from: importingNamespace
		to: aNamespace