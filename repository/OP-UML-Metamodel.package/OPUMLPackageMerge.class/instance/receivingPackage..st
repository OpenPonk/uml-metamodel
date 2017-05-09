accessing
receivingPackage: aPackage
	"References the Package that is being extended with the contents of the merged package of the PackageMerge."
	receivingPackage := OPUMLToOneLink
		on: self
		update: #packageMerges
		from: receivingPackage
		to: aPackage