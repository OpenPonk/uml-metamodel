accessing
messages
	"The Messages contained in this Interaction."
	^ messages ifNil: [ messages := OPUMLToManyLinks on: self opposite: #interaction: ]