accessing
containedNodes
	"ActivityNodes immediately contained in the ActivityGroup."
	^ containedNodes ifNil: [ containedNodes := OrderedCollection new ]