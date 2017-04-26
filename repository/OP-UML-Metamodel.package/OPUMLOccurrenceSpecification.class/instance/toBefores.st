accessing
toBefores
	"References the GeneralOrderings that specify EventOcurrences that must occur before this OccurrenceSpecification."
	^ toBefores ifNil: [ toBefores := OrderedCollection new ]