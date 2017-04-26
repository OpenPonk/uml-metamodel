accessing
nestedPackages
	"References the packaged elements that are Packages."
	^ nestedPackages ifNil: [ nestedPackages := OrderedCollection new ]