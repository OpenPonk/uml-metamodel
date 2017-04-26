accessing
nodes
	"The ActivityNodes immediately contained in the StructuredActivityNode."
	^ nodes ifNil: [ nodes := OrderedCollection new ]