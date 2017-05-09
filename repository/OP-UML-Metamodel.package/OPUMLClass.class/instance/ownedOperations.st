accessing
ownedOperations
	"The Operations owned by the Class."
	^ ownedOperations ifNil: [ ownedOperations := OPUMLToManyLinks on: self opposite: #owningClass: ]