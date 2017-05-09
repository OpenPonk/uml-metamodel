accessing
ownedOperations
	"The Operations owned by the Interface."
	^ ownedOperations ifNil: [ ownedOperations := OPUMLToManyLinks on: self opposite: #interface: ]