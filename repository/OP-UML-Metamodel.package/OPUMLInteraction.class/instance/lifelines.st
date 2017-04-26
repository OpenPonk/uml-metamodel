accessing
lifelines
	"Specifies the participants in this Interaction."
	^ lifelines ifNil: [ lifelines := OrderedCollection new ]