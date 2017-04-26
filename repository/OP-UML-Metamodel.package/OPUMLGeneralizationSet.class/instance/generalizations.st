accessing
generalizations
	"Designates the instances of Generalization that are members of this GeneralizationSet."
	^ generalizations ifNil: [ generalizations := OrderedCollection new ]