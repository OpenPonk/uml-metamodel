accessing
applyingPackage: aPackage
	"The package that owns the profile application."
	applyingPackage := OPUMLToOneLink
		on: self
		update: #profileApplications
		from: applyingPackage
		to: aPackage