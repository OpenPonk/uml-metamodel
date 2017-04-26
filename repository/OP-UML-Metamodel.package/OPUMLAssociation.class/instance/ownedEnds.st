accessing
ownedEnds
	"The ends that are owned by the Association itself."
	^ ownedEnds ifNil: [ ownedEnds := OrderedCollection new ]