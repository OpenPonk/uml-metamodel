accessing
elementImports
	"References the ElementImports owned by the Namespace."
	^ elementImports ifNil: [ elementImports := OrderedCollection new ]