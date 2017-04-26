accessing
parameterSets
	"The ParameterSets containing the parameter. See ParameterSet."
	^ parameterSets ifNil: [ parameterSets := OrderedCollection new ]