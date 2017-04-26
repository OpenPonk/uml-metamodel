accessing
ownedOperations
	"The Operations owned by the Interface."
	^ ownedOperations ifNil: [ ownedOperations := OrderedCollection new ]