accessing
inputElements
	"The ExpansionNodes that hold the input collections for the ExpansionRegion."
	^ inputElements ifNil: [ inputElements := OrderedCollection new ]