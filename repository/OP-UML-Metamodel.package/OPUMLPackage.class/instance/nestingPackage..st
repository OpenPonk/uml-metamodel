accessing
nestingPackage: aPackage
	"References the Package that owns this Package."
	nestingPackage := OPUMLToOneLink
		on: self
		update: #nestedPackages
		from: nestingPackage
		to: aPackage