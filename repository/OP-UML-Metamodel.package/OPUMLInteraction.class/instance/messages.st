accessing
messages
	"The Messages contained in this Interaction."
	^ messages ifNil: [ messages := OrderedCollection new ]