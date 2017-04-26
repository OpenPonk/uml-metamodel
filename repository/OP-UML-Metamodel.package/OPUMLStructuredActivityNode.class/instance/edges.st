accessing
edges
	"The ActivityEdges immediately contained in the StructuredActivityNode."
	^ edges ifNil: [ edges := OrderedCollection new ]