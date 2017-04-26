accessing
packageImports
	"References the PackageImports owned by the Namespace."
	^ packageImports ifNil: [ packageImports := OrderedCollection new ]