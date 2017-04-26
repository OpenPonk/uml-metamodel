accessing
ownedOperations
	"The Operations owned by the DataType."
	^ ownedOperations ifNil: [ ownedOperations := OrderedCollection new ]