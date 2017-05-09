accessing
extends
	"The Extend relationships owned by this UseCase."
	^ extends ifNil: [ extends := OPUMLToManyLinks on: self opposite: #extension: ]