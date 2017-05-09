accessing
coveredBies
	"References the InteractionFragments in which this Lifeline takes part."
	^ coveredBies ifNil: [ coveredBies := OPUMLManyToManyLinks on: self opposite: #covereds ]