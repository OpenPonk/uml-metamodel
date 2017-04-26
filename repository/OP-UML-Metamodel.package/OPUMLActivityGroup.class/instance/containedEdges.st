accessing
containedEdges
	"ActivityEdges immediately contained in the ActivityGroup."
	^ containedEdges ifNil: [ containedEdges := OrderedCollection new ]