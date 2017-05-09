accessing
elementImports
	"References the ElementImports owned by the Namespace."
	^ elementImports ifNil: [ elementImports := OPUMLToManyLinks on: self opposite: #importingNamespace: ]