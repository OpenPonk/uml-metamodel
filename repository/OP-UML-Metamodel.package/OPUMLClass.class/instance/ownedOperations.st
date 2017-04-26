accessing
ownedOperations
	"The Operations owned by the Class."
	^ ownedOperations ifNil: [ ownedOperations := OrderedCollection new ]