accessing
edges
	"ActivityEdges immediately contained in the ActivityPartition."
	^ edges ifNil: [ edges := OrderedCollection new ]