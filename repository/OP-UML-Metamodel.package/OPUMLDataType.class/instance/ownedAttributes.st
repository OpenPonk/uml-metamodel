accessing
ownedAttributes
	"The attributes owned by the DataType."
	^ ownedAttributes ifNil: [ ownedAttributes := OrderedCollection new ]