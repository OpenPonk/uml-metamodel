accessing
structuredNodes
	"Top-level StructuredActivityNodes in the Activity."
	^ structuredNodes ifNil: [ structuredNodes := OrderedCollection new ]