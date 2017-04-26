accessing
toAfters
	"References the GeneralOrderings that specify EventOcurrences that must occur after this OccurrenceSpecification."
	^ toAfters ifNil: [ toAfters := OrderedCollection new ]