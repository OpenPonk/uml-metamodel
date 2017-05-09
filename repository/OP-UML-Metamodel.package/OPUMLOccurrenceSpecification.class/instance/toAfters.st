accessing
toAfters
	"References the GeneralOrderings that specify EventOcurrences that must occur after this OccurrenceSpecification."
	^ toAfters ifNil: [ toAfters := OPUMLToManyLinks on: self opposite: #before: ]