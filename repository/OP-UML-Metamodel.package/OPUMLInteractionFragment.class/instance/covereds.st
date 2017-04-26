accessing
covereds
	"References the Lifelines that the InteractionFragment involves."
	^ covereds ifNil: [ covereds := OrderedCollection new ]