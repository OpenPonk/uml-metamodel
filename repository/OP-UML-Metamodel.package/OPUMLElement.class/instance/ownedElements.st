accessing
ownedElements
	"The Elements owned by this Element."
	^ ownedElements ifNil: [ ownedElements := OrderedCollection new ]